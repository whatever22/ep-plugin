<?php

/**
 * Classe intermédiaire entre  BP_Group_Extension et chaque classe outil
 */
class TB_Outil extends BP_Group_Extension {

	/** configuration de l'outil pour l'instance (projet) en cours */
	protected $config;

	/** URL de la racine du plugin
	 ex: "http://localhost/wordpress/wp-content/plugins/tela-botanica/outils/" */
	protected $urlPlugin;
	/** URL de la racine de l'outil, pour charger les ressources en HTTP 
	    ex: "http://localhost/wordpress/wp-content/plugins/tela-botanica/outils/forum/" */
	protected $urlOutil;

	/** si true, l'outil ne sera disponible que pour les membres du projet */
	protected $prive;

	/** id du groupe en cours */
	protected $groupId;

	/** id de l'utilisateur en cours */
	protected $userId;

	/**
	 * Initialisation post-constructeur : définit les chemins, charge les scripts,
	 * styles etc.
	 */
	public function initialisation()
	{
		// accès à l'objet magique BuddyPress
		$bp = buddypress();
		// copie de ce qui nous intéresse pour éviter d'y accédér cracratement
		// et hétérogènement par la suite
		$this->groupId = bp_get_current_group_id();
		$this->userId = $bp->loggedin_user->id;

		// recherche d'une config générale dans la base
		$this->chargerConfig();

		$this->definirChemins();

		// préparation des scripts / styles, pour l'outil courant seulement
		// @WARNING le système de priorités n'a pas l'air de marcher...
		if ($this->outilCourant()) {
			add_action('wp_enqueue_scripts', array($this, 'scriptsEtStylesAvant'), 1);
			add_action('wp_enqueue_scripts', array($this, 'scriptsEtStylesApres'), 100);
		}
	}

	/**
	 * Placer ici les wp_enqueue_(script|style)() pour l'outil courant; ils
	 * seront déclarés AVANT les ressources globales de WP/BP, donc ils
	 * seront écrasés par les ressources ayant le même identifiant
	 */
	public function scriptsEtStylesAvant()
	{
		// rien par défaut
	}

	/**
	 * Placer ici les wp_enqueue_(script|style)() pour l'outil courant; ils
	 * seront déclarés APRES les ressources globales de WP/BP, donc ils
	 * écraseront les ressources ayant le même identifiant
	 */
	public function scriptsEtStylesApres()
	{
		// rien par défaut
	}

	public function definirChemins()
	{
        $this->urlPlugin = plugin_dir_url(__FILE__);
		$this->urlOutil = trailingslashit($this->urlPlugin . $this->slug);
    }

	/**
	 * Retourne la "configuration" par défaut d'un outil : pas les réglages de
	 * l'onglet BP (position, nom, etc.) mais les réglages de l'outil, par exemple
	 * pour le forum : URL racine de la lib ezmlm-php, etc.
	 */
	protected function getConfigDefautOutil()
	{
		// rien par défaut
		return array();
	}

	/**
	 * Charge la configuration générale de l'outil plus la configuration pour le
	 * projet en cours; concernant la colonne "config" (JSON libre), mélange les
	 * deux en donnant la priorité à la config du projet en cours et place le
	 * tout dans $this->config;
	 *
	 * Si aucune configuration locale pour le projet en cours n'existe au moment
	 * du chargement, un tuple sera écrit dans la table _tb_outils_reglages
	 */
	protected function chargerConfig()
	{
		global $wpdb;

		// 0) Config par défaut si rien n'est trouvé dans la base (ne devrait pas
		// se produire car la table_tb_outils devrait toujours avoir un tuple de
		// config par outil
		$id_projet = bp_get_current_group_id();
		$this->prive = 0;
		$this->create_step_position = 100;
		$this->nav_item_position = 100;
		$this->enable_nav_item = 1;
		$this->config = $this->getConfigDefautOutil();

		/* 1) Lecture de la table "wp_tb_outils" (config pour tous les projets) */
		$requete = "
			SELECT *
			FROM {$wpdb->prefix}tb_outils
			WHERE id_outil='" . $this->slug . "'
		";
		$res1 = $wpdb->get_results($requete) ;

		if (count($res1 > 0)) {
			$meta = array_pop($res1);
			// @TODO gérer l'activation / désactivation générale
			$configGenerale = json_decode($meta->config, true);
			if (is_array($configGenerale)) {
				$this->config = array_merge($this->config, $configGenerale); // priorité à la config générale
			}
		}

		/* 2) Lecture de la table "wp_tb_outils_reglages" (config pour le projet en cours) */
		$requete = "
			SELECT *
			FROM {$wpdb->prefix}tb_outils_reglages
			WHERE id_projet='" . $id_projet . "'
			AND id_outil='" . $this->slug . "'
		";
		$res2 = $wpdb->get_results($requete) ;

		if (count($res2) > 0) {
			$meta = array_pop($res2);
			$this->name = $meta->name;
			$this->prive = $meta->prive;
			$this->create_step_position = $meta->create_step_position;
			$this->nav_item_position = $meta->nav_item_position;
			$this->enable_nav_item = $meta->enable_nav_item;
			$configLocale = json_decode($meta->config, true);
			if (is_array($configLocale)) {
				$this->config = array_replace_recursive($this->config, $configLocale); // priorité à la config locale
			}
		} else {
			// écriture de la config locale (projet en cours) s'il n'y en avait pas
			$this->ecrireConfigLocale();
		}
	}

	// @TODO génériciser pour en faire un insert/update automatique
	protected function ecrireConfigLocale()
	{
		global $wpdb;

		$bpGroupId = bp_get_current_group_id();
		// 0 signifie qu'on n'est pas dans une page de groupe
		if ($bpGroupId > 0) {
			$table = "{$wpdb->prefix}tb_outils_reglages";
			$data = array(
				"id_projet" => $bpGroupId,
				"id_outil" => $this->slug,
				"name" => $this->name,
				"prive" => $this->prive,
				"create_step_position" => $this->create_step_position,
				"nav_item_position" => $this->nav_item_position,
				"enable_nav_item" => $this->enable_nav_item,
				"config" => json_encode($this->config)
			);
			$wpdb->insert($table, $data);
		}
	}

	/**
	 * Retourne true si le flux d'exécution est dans l'outil en cours - permet
	 * de n'effectuer certaines actions que pour un outil donné
	 */
	protected function outilCourant() {
		$slug = $this->slug;
		$ok = bp_is_current_action($slug);
		return $ok;
	}

	/**
	 * Retourne le protocole et le domaine, donnés par PHP
	 */
	protected function getServerRoot()
	{
		return (!empty($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'];
		//return "http://localhost";
	}

	/**
	 * Retourne l'URI de base de l'outil pour le groupe en cours (sans le domaine)
	 * ex: "/wordpress/groups/flore-d-afrique-du-nord/forum"
	 */
	protected function getBaseUri()
	{
		$pageGroupes = $this->getBPPageSlug("groups");
		$dossierRacine = $this->getDossierRacine();

		return '/' . (! empty($dossierRacine) ? $dossierRacine . '/' : '') . '/' . $pageGroupes . '/' . bp_get_current_group_slug() . '/' . $this->slug;
	}

	/**
	 * Retourne l'URI de base des données l'outil (sans le domaine)
	 * ex: "/wordpress/wp-content/plugins/tela-botanica/outils/forum"
	 */
	protected function getDataBaseUri()
	{
		$dossierRacine = $this->getDossierRacine();
		return '/' . (! empty($dossierRacine) ? $dossierRacine . '/' : '') . 'wp-content/plugins/tela-botanica/outils/' . $this->slug;
	}

	/**
	 * Retourne le dossier dans lequel est installé Wordpress
	 * ex: "wordpress"
	 */
	protected function getDossierRacine()
	{
		$siteUrl = get_option("siteurl");
		$racineServeur = $this->getServerRoot();
		$dossierRacine = substr($siteUrl, strlen($racineServeur) + 1);

		return $dossierRacine;
	}

	/**
	 * Retourne le slug de la page Wordpress associée à unee "page" BuddyPress
	 * ("members", "groups", "activity"...)
	 *		=> ("inscrits", "projets", "activité"...)
	 */
	protected function getBPPageSlug($bpPage)
	{
		$wpToBpPages = get_option("bp-pages");
		if (! array_key_exists($bpPage, $wpToBpPages)) {
			throw new Exception('La page BuddyPress "' . $bpPage . '" n\'existe pas');
		}
		$wpPageSlug = get_post($wpToBpPages[$bpPage]);
		return $wpPageSlug->post_name;
	}

	/**
	 * Exécuté lors de l'installation du plugin TelaBotanica
	 */
	public function installation() {
		// rien par défaut
	}

	/**
	 * Exécuté lors de la désinstallation du plugin TelaBotanica
	 */
	public function desinstallation() {
		// rien par défaut
	}

	/**
	 * Si l'outil est privé, vérifie que l'utilisateur en cours est membre du
	 * projet : si oui, ne fait rien; si non, affiche un message et interrompt
	 * le chargement
	 */
	protected function appliquerCaracterePrive() {
		if ($this->prive) {
			$estMembre = groups_is_user_member($this->userId, $this->groupId);
			if (! $estMembre) {
				echo "<h4>L'outil <?php echo $this->name ?> est réservé aux membres du projet</h4>";
				exit;
			}
		}
	}
}
