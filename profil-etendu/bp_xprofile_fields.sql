-- phpMyAdmin SQL Dump
-- Généré le :  Lun 13 Mars 2017 à 14:41

INSERT INTO `bp_xprofile_fields` (`id`, `group_id`, `parent_id`, `type`, `name`, `description`, `is_required`, `is_default_option`, `field_order`, `option_order`, `order_by`, `can_delete`) VALUES
(1, 1, 0, 'textbox', 'Pseudo', '', 1, 0, 0, 0, '', 0),
(2, 3, 0, 'datebox', 'Date de naissance', '', 0, 0, 1, 0, '', 1),
(3, 1, 0, 'selectbox', 'Pays', '', 1, 0, 4, 0, 'custom', 1),
(4, 1, 0, 'textbox', 'Ville', '', 1, 0, 6, 0, '', 1),
(463, 1, 3, 'option', 'Martinique', '', 0, 0, 0, 145, '', 1),
(462, 1, 3, 'option', 'Maroc', '', 0, 0, 0, 144, '', 1),
(9, 1, 0, 'textbox', 'Nom', '', 1, 0, 3, 0, '', 1),
(10, 1, 0, 'textbox', 'Prénom', '', 0, 0, 2, 0, '', 1),
(461, 1, 3, 'option', 'Malte', '', 0, 0, 0, 143, '', 1),
(12, 2, 0, 'selectbox', 'Expérience botanique', '', 1, 0, 0, 0, 'custom', 1),
(907, 2, 61, 'option', 'Montagne', '', 0, 0, 0, 8, '', 1),
(70, 1, 3, 'option', 'Afghanistan', '', 0, 0, 0, 1, '', 1),
(63, 2, 0, 'textbox', 'Espèce d''intérêt', 'Pour préciser votre famille, genre voire espèce de spécialisation ou noter votre plante préférée', 0, 0, 2, 0, 'custom', 1),
(905, 2, 61, 'option', 'Basses terres', '', 0, 0, 0, 6, '', 1),
(61, 2, 0, 'checkbox', 'Zones géographiques d''intérêt', 'Pour préciser vos zones phytogéographiques et altitudes de prédilection.', 0, 0, 3, 0, 'custom', 1),
(590, 2, 12, 'option', 'Confirmé', '', 0, 0, 0, 3, '', 1),
(589, 2, 12, 'option', 'Ayant une bonne pratique', '', 0, 0, 0, 2, '', 1),
(588, 2, 12, 'option', 'Débutant', '', 0, 0, 0, 1, '', 1),
(26, 3, 0, 'selectbox', 'Métier', '', 0, 0, 3, 0, 'custom', 1),
(1024, 3, 26, 'option', 'journalistes / chargé de communication', '', 0, 0, 0, 14, '', 1),
(1023, 3, 26, 'option', 'écologue / botaniste de terrain (conservatoire botanique, bureau d’étude, etc.)', '', 0, 0, 0, 13, '', 1),
(1022, 3, 26, 'option', 'gestionnaire (espaces verts, parcs, etc.)', '', 0, 0, 0, 12, '', 1),
(1021, 3, 26, 'option', 'animateur (culture, nature, environnement, etc.)', '', 0, 0, 0, 11, '', 1),
(1020, 3, 26, 'option', 'formateur professionnel', '', 0, 0, 0, 10, '', 1),
(1019, 3, 26, 'option', 'conservateur (musée, herbier)', '', 0, 0, 0, 9, '', 1),
(1018, 3, 26, 'option', 'chercheur / enseignant 3ème cycle', '', 0, 0, 0, 8, '', 1),
(1017, 3, 26, 'option', 'enseignant (primaire, secondaire)', '', 0, 0, 0, 7, '', 1),
(1016, 3, 26, 'option', 'étudiant (biologie, environnement, etc.)', '', 0, 0, 0, 6, '', 1),
(1015, 3, 26, 'option', 'écolier (primaire, secondaire)', '', 0, 0, 0, 5, '', 1),
(1014, 3, 26, 'option', 'apiculteur', '', 0, 0, 0, 4, '', 1),
(1012, 3, 26, 'option', 'jardinier', '', 0, 0, 0, 2, '', 1),
(1013, 3, 26, 'option', 'forestier', '', 0, 0, 0, 3, '', 1),
(1011, 3, 26, 'option', 'agriculteur', '', 0, 0, 0, 1, '', 1),
(46, 1, 0, 'selectbox', 'Compte', 'Merci de préciser si votre compte est un compte personnel ou professionnel (utilisé par une personne) ou de structure (partagé par plusieurs personnes)', 1, 0, 1, 0, 'custom', 1),
(587, 1, 46, 'option', 'Structure', '', 0, 0, 0, 3, '', 1),
(586, 1, 46, 'option', 'Professionnel', '', 0, 0, 0, 2, '', 1),
(585, 1, 46, 'option', 'Personnel', '', 0, 1, 0, 1, '', 1),
(69, 2, 0, 'selectbox', 'Membre d''une association naturaliste', '', 0, 0, 1, 0, 'custom', 1),
(51, 1, 0, 'textbox', 'Adresse', 'Votre adresse ne sera pas communiquée mais nous est utile pour éditer les reçus fiscaux si vous nous faites un don.', 0, 0, 8, 0, '', 1),
(52, 3, 0, 'url', 'Site web', 'Si vous avez un site web personnel', 0, 0, 2, 0, '', 1),
(53, 3, 0, 'textarea', 'Présentation', '', 0, 0, 0, 0, '', 1),
(54, 1, 0, 'checkbox', 'Inscription à la lettre d''actualité', '', 0, 0, 9, 0, 'custom', 1),
(908, 1, 54, 'option', 'Je souhaite recevoir la lettre d''actualité hebdomadaire', '', 0, 0, 0, 1, '', 1),
(59, 1, 0, 'checkbox', 'Conditions d''utilisation', 'Lire les  <a href="https://www.tela-botanica.org/mentions-legales/#conditions-d-utilisation"> conditions d''utilisation du site</a>', 1, 0, 10, 0, 'custom', 1),
(1010, 1, 59, 'option', 'J''accepte les conditions d''utilisation', '', 0, 0, 0, 1, '', 1),
(460, 1, 3, 'option', 'Mali', '', 0, 0, 0, 142, '', 1),
(459, 1, 3, 'option', 'Maldives', '', 0, 0, 0, 141, '', 1),
(458, 1, 3, 'option', 'Malawi', '', 0, 0, 0, 140, '', 1),
(457, 1, 3, 'option', 'Malaisie', '', 0, 0, 0, 139, '', 1),
(456, 1, 3, 'option', 'Madagascar', '', 0, 0, 0, 138, '', 1),
(455, 1, 3, 'option', 'Macao', '', 0, 0, 0, 137, '', 1),
(454, 1, 3, 'option', 'Luxembourg', '', 0, 0, 0, 136, '', 1),
(453, 1, 3, 'option', 'Lituanie', '', 0, 0, 0, 135, '', 1),
(452, 1, 3, 'option', 'Liechtenstein', '', 0, 0, 0, 134, '', 1),
(451, 1, 3, 'option', 'Libye', '', 0, 0, 0, 133, '', 1),
(450, 1, 3, 'option', 'Libéria', '', 0, 0, 0, 132, '', 1),
(449, 1, 3, 'option', 'Liban', '', 0, 0, 0, 131, '', 1),
(448, 1, 3, 'option', 'Lettonie', '', 0, 0, 0, 130, '', 1),
(447, 1, 3, 'option', 'Lesotho', '', 0, 0, 0, 129, '', 1),
(446, 1, 3, 'option', 'Koweït', '', 0, 0, 0, 128, '', 1),
(445, 1, 3, 'option', 'Kiribati', '', 0, 0, 0, 127, '', 1),
(444, 1, 3, 'option', 'Kirghizistan', '', 0, 0, 0, 126, '', 1),
(443, 1, 3, 'option', 'Kenya', '', 0, 0, 0, 125, '', 1),
(442, 1, 3, 'option', 'Kazakhstan', '', 0, 0, 0, 124, '', 1),
(441, 1, 3, 'option', 'Jordanie', '', 0, 0, 0, 123, '', 1),
(440, 1, 3, 'option', 'Jersey', '', 0, 0, 0, 122, '', 1),
(439, 1, 3, 'option', 'Japon', '', 0, 0, 0, 121, '', 1),
(438, 1, 3, 'option', 'Jamaïque', '', 0, 0, 0, 120, '', 1),
(437, 1, 3, 'option', 'Italie', '', 0, 0, 0, 119, '', 1),
(436, 1, 3, 'option', 'Israël', '', 0, 0, 0, 118, '', 1),
(435, 1, 3, 'option', 'Islande', '', 0, 0, 0, 117, '', 1),
(434, 1, 3, 'option', 'Irlande', '', 0, 0, 0, 116, '', 1),
(433, 1, 3, 'option', 'Iraq', '', 0, 0, 0, 115, '', 1),
(432, 1, 3, 'option', 'Iran (République islamique d\')', '', 0, 0, 0, 114, '', 1),
(431, 1, 3, 'option', 'Indonésie', '', 0, 0, 0, 113, '', 1),
(430, 1, 3, 'option', 'Inde', '', 0, 0, 0, 112, '', 1),
(429, 1, 3, 'option', 'Îles Wallis et Futuna', '', 0, 0, 0, 111, '', 1),
(428, 1, 3, 'option', 'Îles Vierges britanniques', '', 0, 0, 0, 110, '', 1),
(427, 1, 3, 'option', 'Îles Vierges américaines', '', 0, 0, 0, 109, '', 1),
(426, 1, 3, 'option', 'Îles Turques et Caïques', '', 0, 0, 0, 108, '', 1),
(425, 1, 3, 'option', 'Îles Svalbard et Jan Mayen', '', 0, 0, 0, 107, '', 1),
(424, 1, 3, 'option', 'Îles Salomon', '', 0, 0, 0, 106, '', 1),
(423, 1, 3, 'option', 'Îles mineures éloignées des États-Unis', '', 0, 0, 0, 105, '', 1),
(422, 1, 3, 'option', 'Îles Marshall', '', 0, 0, 0, 104, '', 1),
(421, 1, 3, 'option', 'Îles Mariannes septentrionales', '', 0, 0, 0, 103, '', 1),
(420, 1, 3, 'option', 'Îles Féroé', '', 0, 0, 0, 102, '', 1),
(419, 1, 3, 'option', 'Îles Falkland (Malvinas)', '', 0, 0, 0, 101, '', 1),
(418, 1, 3, 'option', 'Îles d\'Åland', '', 0, 0, 0, 100, '', 1),
(417, 1, 3, 'option', 'Îles Cook', '', 0, 0, 0, 99, '', 1),
(416, 1, 3, 'option', 'Îles Cocos (Keeling)', '', 0, 0, 0, 98, '', 1),
(415, 1, 3, 'option', 'Îles Caïmanes', '', 0, 0, 0, 97, '', 1),
(414, 1, 3, 'option', 'Île Norfolk', '', 0, 0, 0, 96, '', 1),
(413, 1, 3, 'option', 'Île Heard et Îles Mcdonald', '', 0, 0, 0, 95, '', 1),
(412, 1, 3, 'option', 'Île de Man', '', 0, 0, 0, 94, '', 1),
(411, 1, 3, 'option', 'Île Christmas', '', 0, 0, 0, 93, '', 1),
(410, 1, 3, 'option', 'Île Bouvet', '', 0, 0, 0, 92, '', 1),
(409, 1, 3, 'option', 'Hongrie', '', 0, 0, 0, 91, '', 1),
(408, 1, 3, 'option', 'Hong-kong', '', 0, 0, 0, 90, '', 1),
(407, 1, 3, 'option', 'Honduras', '', 0, 0, 0, 89, '', 1),
(406, 1, 3, 'option', 'Haïti', '', 0, 0, 0, 88, '', 1),
(405, 1, 3, 'option', 'Guyane française', '', 0, 0, 0, 87, '', 1),
(404, 1, 3, 'option', 'Guyana', '', 0, 0, 0, 86, '', 1),
(403, 1, 3, 'option', 'Guinée-Bissau', '', 0, 0, 0, 85, '', 1),
(402, 1, 3, 'option', 'Guinée équatoriale', '', 0, 0, 0, 84, '', 1),
(401, 1, 3, 'option', 'Guinée', '', 0, 0, 0, 83, '', 1),
(400, 1, 3, 'option', 'Guernesey', '', 0, 0, 0, 82, '', 1),
(399, 1, 3, 'option', 'Guatemala', '', 0, 0, 0, 81, '', 1),
(398, 1, 3, 'option', 'Guam', '', 0, 0, 0, 80, '', 1),
(397, 1, 3, 'option', 'Guadeloupe', '', 0, 0, 0, 79, '', 1),
(396, 1, 3, 'option', 'Groenland', '', 0, 0, 0, 78, '', 1),
(395, 1, 3, 'option', 'Grenade', '', 0, 0, 0, 77, '', 1),
(394, 1, 3, 'option', 'Grèce', '', 0, 0, 0, 76, '', 1),
(393, 1, 3, 'option', 'Gibraltar', '', 0, 0, 0, 75, '', 1),
(392, 1, 3, 'option', 'Ghana', '', 0, 0, 0, 74, '', 1),
(391, 1, 3, 'option', 'Géorgie du Sud et les Îles Sandwich du Sud', '', 0, 0, 0, 73, '', 1),
(390, 1, 3, 'option', 'Géorgie', '', 0, 0, 0, 72, '', 1),
(389, 1, 3, 'option', 'Gambie', '', 0, 0, 0, 71, '', 1),
(388, 1, 3, 'option', 'Gabon', '', 0, 0, 0, 70, '', 1),
(387, 1, 3, 'option', 'France', '', 0, 1, 0, 69, '', 1),
(386, 1, 3, 'option', 'Finlande', '', 0, 0, 0, 68, '', 1),
(385, 1, 3, 'option', 'Fidji', '', 0, 0, 0, 67, '', 1),
(384, 1, 3, 'option', 'Fédération de Russie', '', 0, 0, 0, 66, '', 1),
(383, 1, 3, 'option', 'Ex-République yougoslave de Macédoine', '', 0, 0, 0, 65, '', 1),
(382, 1, 3, 'option', 'Éthiopie', '', 0, 0, 0, 64, '', 1),
(381, 1, 3, 'option', 'États-Unis', '', 0, 0, 0, 63, '', 1),
(380, 1, 3, 'option', 'État de Palestine', '', 0, 0, 0, 62, '', 1),
(379, 1, 3, 'option', 'Estonie', '', 0, 0, 0, 61, '', 1),
(378, 1, 3, 'option', 'Espagne', '', 0, 0, 0, 60, '', 1),
(377, 1, 3, 'option', 'Érythrée', '', 0, 0, 0, 59, '', 1),
(376, 1, 3, 'option', 'Équateur', '', 0, 0, 0, 58, '', 1),
(375, 1, 3, 'option', 'Émirats arabes unis', '', 0, 0, 0, 57, '', 1),
(374, 1, 3, 'option', 'El Salvador', '', 0, 0, 0, 56, '', 1),
(373, 1, 3, 'option', 'Égypte', '', 0, 0, 0, 55, '', 1),
(372, 1, 3, 'option', 'Dominique', '', 0, 0, 0, 54, '', 1),
(371, 1, 3, 'option', 'Djibouti', '', 0, 0, 0, 53, '', 1),
(370, 1, 3, 'option', 'Danemark', '', 0, 0, 0, 52, '', 1),
(369, 1, 3, 'option', 'Curaçao', '', 0, 0, 0, 51, '', 1),
(368, 1, 3, 'option', 'Cuba', '', 0, 0, 0, 50, '', 1),
(367, 1, 3, 'option', 'Croatie', '', 0, 0, 0, 49, '', 1),
(366, 1, 3, 'option', 'Côte d\'Ivoire', '', 0, 0, 0, 48, '', 1),
(365, 1, 3, 'option', 'Costa Rica', '', 0, 0, 0, 47, '', 1),
(364, 1, 3, 'option', 'Congo', '', 0, 0, 0, 46, '', 1),
(363, 1, 3, 'option', 'Comores', '', 0, 0, 0, 45, '', 1),
(362, 1, 3, 'option', 'Colombie', '', 0, 0, 0, 44, '', 1),
(361, 1, 3, 'option', 'Chypre', '', 0, 0, 0, 43, '', 1),
(360, 1, 3, 'option', 'Chine', '', 0, 0, 0, 42, '', 1),
(359, 1, 3, 'option', 'Chili', '', 0, 0, 0, 41, '', 1),
(358, 1, 3, 'option', 'Cap-Vert', '', 0, 0, 0, 40, '', 1),
(357, 1, 3, 'option', 'Canada', '', 0, 0, 0, 39, '', 1),
(356, 1, 3, 'option', 'Cameroun', '', 0, 0, 0, 38, '', 1),
(355, 1, 3, 'option', 'Cambodge', '', 0, 0, 0, 37, '', 1),
(354, 1, 3, 'option', 'Burundi', '', 0, 0, 0, 36, '', 1),
(353, 1, 3, 'option', 'Burkina Faso', '', 0, 0, 0, 35, '', 1),
(352, 1, 3, 'option', 'Bulgarie', '', 0, 0, 0, 34, '', 1),
(351, 1, 3, 'option', 'Brunéi Darussalam', '', 0, 0, 0, 33, '', 1),
(350, 1, 3, 'option', 'Brésil', '', 0, 0, 0, 32, '', 1),
(349, 1, 3, 'option', 'Botswana', '', 0, 0, 0, 31, '', 1),
(348, 1, 3, 'option', 'Bosnie-Herzégovine', '', 0, 0, 0, 30, '', 1),
(347, 1, 3, 'option', 'Bonaire, Saint-Eustache et Saba', '', 0, 0, 0, 29, '', 1),
(346, 1, 3, 'option', 'Bolivie (État plurinational de)', '', 0, 0, 0, 28, '', 1),
(345, 1, 3, 'option', 'Bhoutan', '', 0, 0, 0, 27, '', 1),
(344, 1, 3, 'option', 'Bermudes', '', 0, 0, 0, 26, '', 1),
(343, 1, 3, 'option', 'Bénin', '', 0, 0, 0, 25, '', 1),
(342, 1, 3, 'option', 'Belize', '', 0, 0, 0, 24, '', 1),
(341, 1, 3, 'option', 'Belgique', '', 0, 0, 0, 23, '', 1),
(340, 1, 3, 'option', 'Bélarus', '', 0, 0, 0, 22, '', 1),
(339, 1, 3, 'option', 'Barbade', '', 0, 0, 0, 21, '', 1),
(338, 1, 3, 'option', 'Bangladesh', '', 0, 0, 0, 20, '', 1),
(337, 1, 3, 'option', 'Bahreïn', '', 0, 0, 0, 19, '', 1),
(336, 1, 3, 'option', 'Bahamas', '', 0, 0, 0, 18, '', 1),
(335, 1, 3, 'option', 'Azerbaïdjan', '', 0, 0, 0, 17, '', 1),
(334, 1, 3, 'option', 'Autriche', '', 0, 0, 0, 16, '', 1),
(333, 1, 3, 'option', 'Australie', '', 0, 0, 0, 15, '', 1),
(332, 1, 3, 'option', 'Aruba', '', 0, 0, 0, 14, '', 1),
(331, 1, 3, 'option', 'Arménie', '', 0, 0, 0, 13, '', 1),
(330, 1, 3, 'option', 'Argentine', '', 0, 0, 0, 12, '', 1),
(329, 1, 3, 'option', 'Arabie saoudite', '', 0, 0, 0, 11, '', 1),
(328, 1, 3, 'option', 'Antigua-et-Barbuda', '', 0, 0, 0, 10, '', 1),
(327, 1, 3, 'option', 'Antarctique', '', 0, 0, 0, 9, '', 1),
(326, 1, 3, 'option', 'Anguilla', '', 0, 0, 0, 8, '', 1),
(325, 1, 3, 'option', 'Angola', '', 0, 0, 0, 7, '', 1),
(324, 1, 3, 'option', 'Andorre', '', 0, 0, 0, 6, '', 1),
(323, 1, 3, 'option', 'Allemagne', '', 0, 0, 0, 5, '', 1),
(322, 1, 3, 'option', 'Algérie', '', 0, 0, 0, 4, '', 1),
(321, 1, 3, 'option', 'Albanie', '', 0, 0, 0, 3, '', 1),
(320, 1, 3, 'option', 'Afrique du Sud', '', 0, 0, 0, 2, '', 1),
(319, 1, 3, 'option', 'Afghanistan', '', 0, 0, 0, 1, '', 1),
(464, 1, 3, 'option', 'Maurice', '', 0, 0, 0, 146, '', 1),
(465, 1, 3, 'option', 'Mauritanie', '', 0, 0, 0, 147, '', 1),
(466, 1, 3, 'option', 'Mayotte', '', 0, 0, 0, 148, '', 1),
(467, 1, 3, 'option', 'Mexique', '', 0, 0, 0, 149, '', 1),
(468, 1, 3, 'option', 'Micronésie (États fédérés de)', '', 0, 0, 0, 150, '', 1),
(469, 1, 3, 'option', 'Monaco', '', 0, 0, 0, 151, '', 1),
(470, 1, 3, 'option', 'Mongolie', '', 0, 0, 0, 152, '', 1),
(471, 1, 3, 'option', 'Monténégro', '', 0, 0, 0, 153, '', 1),
(472, 1, 3, 'option', 'Montserrat', '', 0, 0, 0, 154, '', 1),
(473, 1, 3, 'option', 'Mozambique', '', 0, 0, 0, 155, '', 1),
(474, 1, 3, 'option', 'Myanmar', '', 0, 0, 0, 156, '', 1),
(475, 1, 3, 'option', 'Namibie', '', 0, 0, 0, 157, '', 1),
(476, 1, 3, 'option', 'Nauru', '', 0, 0, 0, 158, '', 1),
(477, 1, 3, 'option', 'Népal', '', 0, 0, 0, 159, '', 1),
(478, 1, 3, 'option', 'Nicaragua', '', 0, 0, 0, 160, '', 1),
(479, 1, 3, 'option', 'Niger', '', 0, 0, 0, 161, '', 1),
(480, 1, 3, 'option', 'Nigéria', '', 0, 0, 0, 162, '', 1),
(481, 1, 3, 'option', 'Niué', '', 0, 0, 0, 163, '', 1),
(482, 1, 3, 'option', 'Norvège', '', 0, 0, 0, 164, '', 1),
(483, 1, 3, 'option', 'Nouvelle-Calédonie', '', 0, 0, 0, 165, '', 1),
(484, 1, 3, 'option', 'Nouvelle-Zélande', '', 0, 0, 0, 166, '', 1),
(485, 1, 3, 'option', 'Oman', '', 0, 0, 0, 167, '', 1),
(486, 1, 3, 'option', 'Ouganda', '', 0, 0, 0, 168, '', 1),
(487, 1, 3, 'option', 'Ouzbékistan', '', 0, 0, 0, 169, '', 1),
(488, 1, 3, 'option', 'Pakistan', '', 0, 0, 0, 170, '', 1),
(489, 1, 3, 'option', 'Palaos', '', 0, 0, 0, 171, '', 1),
(490, 1, 3, 'option', 'Panama', '', 0, 0, 0, 172, '', 1),
(491, 1, 3, 'option', 'Papouasie-Nouvelle-Guinée', '', 0, 0, 0, 173, '', 1),
(492, 1, 3, 'option', 'Paraguay', '', 0, 0, 0, 174, '', 1),
(493, 1, 3, 'option', 'Pays-Bas', '', 0, 0, 0, 175, '', 1),
(494, 1, 3, 'option', 'Pérou', '', 0, 0, 0, 176, '', 1),
(495, 1, 3, 'option', 'Philippines', '', 0, 0, 0, 177, '', 1),
(496, 1, 3, 'option', 'Pitcairn', '', 0, 0, 0, 178, '', 1),
(497, 1, 3, 'option', 'Pologne', '', 0, 0, 0, 179, '', 1),
(498, 1, 3, 'option', 'Polynésie française', '', 0, 0, 0, 180, '', 1),
(499, 1, 3, 'option', 'Porto Rico', '', 0, 0, 0, 181, '', 1),
(500, 1, 3, 'option', 'Portugal', '', 0, 0, 0, 182, '', 1),
(501, 1, 3, 'option', 'Qatar', '', 0, 0, 0, 183, '', 1),
(502, 1, 3, 'option', 'République arabe syrienne', '', 0, 0, 0, 184, '', 1),
(503, 1, 3, 'option', 'République centrafricaine', '', 0, 0, 0, 185, '', 1),
(504, 1, 3, 'option', 'République de Corée', '', 0, 0, 0, 186, '', 1),
(505, 1, 3, 'option', 'République de Moldova', '', 0, 0, 0, 187, '', 1),
(506, 1, 3, 'option', 'République Démocratique du Congo', '', 0, 0, 0, 188, '', 1),
(507, 1, 3, 'option', 'République démocratique populaire Lao', '', 0, 0, 0, 189, '', 1),
(508, 1, 3, 'option', 'République Dominicaine', '', 0, 0, 0, 190, '', 1),
(509, 1, 3, 'option', 'République populaire démocratique de Corée', '', 0, 0, 0, 191, '', 1),
(510, 1, 3, 'option', 'République-Unie de Tanzanie', '', 0, 0, 0, 192, '', 1),
(511, 1, 3, 'option', 'Réunion', '', 0, 0, 0, 193, '', 1),
(512, 1, 3, 'option', 'Roumanie', '', 0, 0, 0, 194, '', 1),
(513, 1, 3, 'option', 'Royaume-Uni', '', 0, 0, 0, 195, '', 1),
(514, 1, 3, 'option', 'Rwanda', '', 0, 0, 0, 196, '', 1),
(515, 1, 3, 'option', 'Sahara occidental', '', 0, 0, 0, 197, '', 1),
(516, 1, 3, 'option', 'Saint-Barthélemy', '', 0, 0, 0, 198, '', 1),
(517, 1, 3, 'option', 'Saint-Kitts-et-Nevis', '', 0, 0, 0, 199, '', 1),
(518, 1, 3, 'option', 'Saint-Marino', '', 0, 0, 0, 200, '', 1),
(519, 1, 3, 'option', 'Saint-Martin (partie française)', '', 0, 0, 0, 201, '', 1),
(520, 1, 3, 'option', 'Saint-Martin (partie néerlandaise)', '', 0, 0, 0, 202, '', 1),
(521, 1, 3, 'option', 'Saint-Pierre-et-Miquelon', '', 0, 0, 0, 203, '', 1),
(522, 1, 3, 'option', 'Saint-Siège', '', 0, 0, 0, 204, '', 1),
(523, 1, 3, 'option', 'Saint-Vincent-et-les Grenadines', '', 0, 0, 0, 205, '', 1),
(524, 1, 3, 'option', 'Sainte-Hélène', '', 0, 0, 0, 206, '', 1),
(525, 1, 3, 'option', 'Sainte-Lucie', '', 0, 0, 0, 207, '', 1),
(526, 1, 3, 'option', 'Samoa', '', 0, 0, 0, 208, '', 1),
(527, 1, 3, 'option', 'Samoas américaines', '', 0, 0, 0, 209, '', 1),
(528, 1, 3, 'option', 'Sao Tomé-et-Principe', '', 0, 0, 0, 210, '', 1),
(529, 1, 3, 'option', 'Sénégal', '', 0, 0, 0, 211, '', 1),
(530, 1, 3, 'option', 'Serbie', '', 0, 0, 0, 212, '', 1),
(531, 1, 3, 'option', 'Seychelles', '', 0, 0, 0, 213, '', 1),
(532, 1, 3, 'option', 'Sierra Leone', '', 0, 0, 0, 214, '', 1),
(533, 1, 3, 'option', 'Singapour', '', 0, 0, 0, 215, '', 1),
(534, 1, 3, 'option', 'Slovaquie', '', 0, 0, 0, 216, '', 1),
(535, 1, 3, 'option', 'Slovénie', '', 0, 0, 0, 217, '', 1),
(536, 1, 3, 'option', 'Somalie', '', 0, 0, 0, 218, '', 1),
(537, 1, 3, 'option', 'Soudan', '', 0, 0, 0, 219, '', 1),
(538, 1, 3, 'option', 'Soudan du Sud', '', 0, 0, 0, 220, '', 1),
(539, 1, 3, 'option', 'Sri Lanka', '', 0, 0, 0, 221, '', 1),
(540, 1, 3, 'option', 'Suède', '', 0, 0, 0, 222, '', 1),
(541, 1, 3, 'option', 'Suisse', '', 0, 0, 0, 223, '', 1),
(542, 1, 3, 'option', 'Suriname', '', 0, 0, 0, 224, '', 1),
(543, 1, 3, 'option', 'Swaziland', '', 0, 0, 0, 225, '', 1),
(544, 1, 3, 'option', 'Tadjikistan', '', 0, 0, 0, 226, '', 1),
(545, 1, 3, 'option', 'Taïwan', '', 0, 0, 0, 227, '', 1),
(546, 1, 3, 'option', 'Tchad', '', 0, 0, 0, 228, '', 1),
(547, 1, 3, 'option', 'Tchéquie', '', 0, 0, 0, 229, '', 1),
(548, 1, 3, 'option', 'Terres australes françaises', '', 0, 0, 0, 230, '', 1),
(549, 1, 3, 'option', 'Territoire britannique de l\'Océan Indien', '', 0, 0, 0, 231, '', 1),
(550, 1, 3, 'option', 'Thaïlande', '', 0, 0, 0, 232, '', 1),
(551, 1, 3, 'option', 'Timor-Leste', '', 0, 0, 0, 233, '', 1),
(552, 1, 3, 'option', 'Togo', '', 0, 0, 0, 234, '', 1),
(553, 1, 3, 'option', 'Tokélaou', '', 0, 0, 0, 235, '', 1),
(554, 1, 3, 'option', 'Tonga', '', 0, 0, 0, 236, '', 1),
(555, 1, 3, 'option', 'Trinité-et-Tobago', '', 0, 0, 0, 237, '', 1),
(556, 1, 3, 'option', 'Tunisie', '', 0, 0, 0, 238, '', 1),
(557, 1, 3, 'option', 'Turkménistan', '', 0, 0, 0, 239, '', 1),
(558, 1, 3, 'option', 'Turquie', '', 0, 0, 0, 240, '', 1),
(559, 1, 3, 'option', 'Tuvalu', '', 0, 0, 0, 241, '', 1),
(560, 1, 3, 'option', 'Ukraine', '', 0, 0, 0, 242, '', 1),
(561, 1, 3, 'option', 'Uruguay', '', 0, 0, 0, 243, '', 1),
(562, 1, 3, 'option', 'Vanuatu', '', 0, 0, 0, 244, '', 1),
(563, 1, 3, 'option', 'Venezuela (République bolivarienne du)', '', 0, 0, 0, 245, '', 1),
(564, 1, 3, 'option', 'Viet Nam', '', 0, 0, 0, 246, '', 1),
(565, 1, 3, 'option', 'Yémen', '', 0, 0, 0, 247, '', 1),
(566, 1, 3, 'option', 'Zambie', '', 0, 0, 0, 248, '', 1),
(567, 1, 3, 'option', 'Zimbabwe', '', 0, 0, 0, 249, '', 1),
(579, 2, 69, 'option', 'Oui', '', 0, 0, 0, 1, '', 1),
(580, 2, 69, 'option', 'Non', '', 0, 0, 0, 2, '', 1),
(581, 2, 69, 'option', 'Ne se prononce pas', '', 0, 1, 0, 3, '', 1),
(591, 2, 12, 'option', 'Ne se prononce pas', '', 0, 1, 0, 4, '', 1),
(592, 1, 0, 'selectbox', 'Département', '', 0, 0, 5, 0, 'custom', 1),
(1003, 1, 592, 'option', 'Val-de-Marne', '', 0, 0, 0, 95, '', 1),
(1004, 1, 592, 'option', 'Val-d''Oise', '', 0, 0, 0, 96, '', 1),
(1002, 1, 592, 'option', 'Seine-Saint-Denis', '', 0, 0, 0, 94, '', 1),
(1000, 1, 592, 'option', 'Essonne', '', 0, 0, 0, 92, '', 1),
(1001, 1, 592, 'option', 'Hauts-de-Seine', '', 0, 0, 0, 93, '', 1),
(999, 1, 592, 'option', 'Territoire de Belfort', '', 0, 0, 0, 91, '', 1),
(997, 1, 592, 'option', 'Vosges', '', 0, 0, 0, 89, '', 1),
(998, 1, 592, 'option', 'Yonne', '', 0, 0, 0, 90, '', 1),
(996, 1, 592, 'option', 'Haute-Vienne', '', 0, 0, 0, 88, '', 1),
(995, 1, 592, 'option', 'Vienne', '', 0, 0, 0, 87, '', 1),
(993, 1, 592, 'option', 'Vaucluse', '', 0, 0, 0, 85, '', 1),
(994, 1, 592, 'option', 'Vendée', '', 0, 0, 0, 86, '', 1),
(992, 1, 592, 'option', 'Var', '', 0, 0, 0, 84, '', 1),
(990, 1, 592, 'option', 'Tarn', '', 0, 0, 0, 82, '', 1),
(991, 1, 592, 'option', 'Tarn-et-Garonne', '', 0, 0, 0, 83, '', 1),
(989, 1, 592, 'option', 'Somme', '', 0, 0, 0, 81, '', 1),
(988, 1, 592, 'option', 'Deux-Sèvres', '', 0, 0, 0, 80, '', 1),
(986, 1, 592, 'option', 'Seine-et-Marne', '', 0, 0, 0, 78, '', 1),
(987, 1, 592, 'option', 'Yvelines', '', 0, 0, 0, 79, '', 1),
(984, 1, 592, 'option', 'Paris', '', 0, 0, 0, 76, '', 1),
(985, 1, 592, 'option', 'Seine-Maritime', '', 0, 0, 0, 77, '', 1),
(981, 1, 592, 'option', 'Sarthe', '', 0, 0, 0, 73, '', 1),
(982, 1, 592, 'option', 'Savoie', '', 0, 0, 0, 74, '', 1),
(983, 1, 592, 'option', 'Haute-Savoie', '', 0, 0, 0, 75, '', 1),
(980, 1, 592, 'option', 'Saône-et-Loire', '', 0, 0, 0, 72, '', 1),
(978, 1, 592, 'option', 'Rhône', '', 0, 0, 0, 70, '', 1),
(979, 1, 592, 'option', 'Haute-Saône', '', 0, 0, 0, 71, '', 1),
(977, 1, 592, 'option', 'Haut-Rhin', '', 0, 0, 0, 69, '', 1),
(976, 1, 592, 'option', 'Bas-Rhin', '', 0, 0, 0, 68, '', 1),
(974, 1, 592, 'option', 'Hautes-Pyrénées', '', 0, 0, 0, 66, '', 1),
(975, 1, 592, 'option', 'Pyrénées-Orientales', '', 0, 0, 0, 67, '', 1),
(972, 1, 592, 'option', 'Puy-de-Dôme', '', 0, 0, 0, 64, '', 1),
(973, 1, 592, 'option', 'Pyrénées-Atlantiques', '', 0, 0, 0, 65, '', 1),
(971, 1, 592, 'option', 'Pas-de-Calais', '', 0, 0, 0, 63, '', 1),
(970, 1, 592, 'option', 'Orne', '', 0, 0, 0, 62, '', 1),
(969, 1, 592, 'option', 'Oise', '', 0, 0, 0, 61, '', 1),
(968, 1, 592, 'option', 'Nord', '', 0, 0, 0, 60, '', 1),
(965, 1, 592, 'option', 'Morbihan', '', 0, 0, 0, 57, '', 1),
(966, 1, 592, 'option', 'Moselle', '', 0, 0, 0, 58, '', 1),
(967, 1, 592, 'option', 'Nièvre', '', 0, 0, 0, 59, '', 1),
(964, 1, 592, 'option', 'Meuse', '', 0, 0, 0, 56, '', 1),
(962, 1, 592, 'option', 'Mayenne', '', 0, 0, 0, 54, '', 1),
(963, 1, 592, 'option', 'Meurthe-et-Moselle', '', 0, 0, 0, 55, '', 1),
(961, 1, 592, 'option', 'Haute-Marne', '', 0, 0, 0, 53, '', 1),
(958, 1, 592, 'option', 'Maine-et-Loire', '', 0, 0, 0, 50, '', 1),
(960, 1, 592, 'option', 'Marne', '', 0, 0, 0, 52, '', 1),
(959, 1, 592, 'option', 'Manche', '', 0, 0, 0, 51, '', 1),
(957, 1, 592, 'option', 'Lozère', '', 0, 0, 0, 49, '', 1),
(956, 1, 592, 'option', 'Lot-et-Garonne', '', 0, 0, 0, 48, '', 1),
(955, 1, 592, 'option', 'Lot', '', 0, 0, 0, 47, '', 1),
(953, 1, 592, 'option', 'Loire-Atlantique', '', 0, 0, 0, 45, '', 1),
(954, 1, 592, 'option', 'Loiret', '', 0, 0, 0, 46, '', 1),
(952, 1, 592, 'option', 'Haute-Loire', '', 0, 0, 0, 44, '', 1),
(951, 1, 592, 'option', 'Loire', '', 0, 0, 0, 43, '', 1),
(948, 1, 592, 'option', 'Jura', '', 0, 0, 0, 40, '', 1),
(949, 1, 592, 'option', 'Landes', '', 0, 0, 0, 41, '', 1),
(950, 1, 592, 'option', 'Loir-et-Cher', '', 0, 0, 0, 42, '', 1),
(947, 1, 592, 'option', 'Isère', '', 0, 0, 0, 39, '', 1),
(945, 1, 592, 'option', 'Indre', '', 0, 0, 0, 37, '', 1),
(946, 1, 592, 'option', 'Indre-et-Loire', '', 0, 0, 0, 38, '', 1),
(944, 1, 592, 'option', 'Ille-et-Vilaine', '', 0, 0, 0, 36, '', 1),
(943, 1, 592, 'option', 'Hérault', '', 0, 0, 0, 35, '', 1),
(942, 1, 592, 'option', 'Gironde', '', 0, 0, 0, 34, '', 1),
(941, 1, 592, 'option', 'Gers', '', 0, 0, 0, 33, '', 1),
(940, 1, 592, 'option', 'Haute-Garonne', '', 0, 0, 0, 32, '', 1),
(939, 1, 592, 'option', 'Gard', '', 0, 0, 0, 31, '', 1),
(938, 1, 592, 'option', 'Finistère', '', 0, 0, 0, 30, '', 1),
(937, 1, 592, 'option', 'Eure-et-Loir', '', 0, 0, 0, 29, '', 1),
(936, 1, 592, 'option', 'Eure', '', 0, 0, 0, 28, '', 1),
(935, 1, 592, 'option', 'Drôme', '', 0, 0, 0, 27, '', 1),
(934, 1, 592, 'option', 'Doubs', '', 0, 0, 0, 26, '', 1),
(932, 1, 592, 'option', 'Creuse', '', 0, 0, 0, 24, '', 1),
(933, 1, 592, 'option', 'Dordogne', '', 0, 0, 0, 25, '', 1),
(931, 1, 592, 'option', 'Côtes-d''Armor', '', 0, 0, 0, 23, '', 1),
(930, 1, 592, 'option', 'Côte d''Or', '', 0, 0, 0, 22, '', 1),
(929, 1, 592, 'option', 'Haute-Corse', '', 0, 0, 0, 21, '', 1),
(928, 1, 592, 'option', 'Corse-du-Sud', '', 0, 0, 0, 20, '', 1),
(927, 1, 592, 'option', 'Corrèze', '', 0, 0, 0, 19, '', 1),
(926, 1, 592, 'option', 'Cher', '', 0, 0, 0, 18, '', 1),
(925, 1, 592, 'option', 'Charente-Maritime', '', 0, 0, 0, 17, '', 1),
(924, 1, 592, 'option', 'Charente', '', 0, 0, 0, 16, '', 1),
(923, 1, 592, 'option', 'Cantal', '', 0, 0, 0, 15, '', 1),
(922, 1, 592, 'option', 'Calvados', '', 0, 0, 0, 14, '', 1),
(921, 1, 592, 'option', 'Bouches-du-Rhône', '', 0, 0, 0, 13, '', 1),
(919, 1, 592, 'option', 'Aude', '', 0, 0, 0, 11, '', 1),
(920, 1, 592, 'option', 'Aveyron', '', 0, 0, 0, 12, '', 1),
(918, 1, 592, 'option', 'Aube', '', 0, 0, 0, 10, '', 1),
(917, 1, 592, 'option', 'Arièges', '', 0, 0, 0, 9, '', 1),
(916, 1, 592, 'option', 'Ardennes', '', 0, 0, 0, 8, '', 1),
(915, 1, 592, 'option', 'Ardèche', '', 0, 0, 0, 7, '', 1),
(914, 1, 592, 'option', 'Alpes-Maritimes', '', 0, 0, 0, 6, '', 1),
(913, 1, 592, 'option', 'Hautes-Alpes', '', 0, 0, 0, 5, '', 1),
(912, 1, 592, 'option', 'Alpes-de-Haute-Provence', '', 0, 0, 0, 4, '', 1),
(911, 1, 592, 'option', 'Allier', '', 0, 0, 0, 3, '', 1),
(910, 1, 592, 'option', 'Aisne', '', 0, 0, 0, 2, '', 1),
(909, 1, 592, 'option', 'Ain', '', 0, 0, 0, 1, '', 1),
(906, 2, 61, 'option', 'Hautes terres', '', 0, 0, 0, 7, '', 1),
(902, 2, 61, 'option', 'Zones tropicales', '', 0, 0, 0, 3, '', 1),
(903, 2, 61, 'option', 'Zones méditerranéennes', '', 0, 0, 0, 4, '', 1),
(904, 2, 61, 'option', 'Plaine', '', 0, 0, 0, 5, '', 1),
(900, 2, 61, 'option', 'Zones polaires', '', 0, 0, 0, 1, '', 1),
(901, 2, 61, 'option', 'Zones tempérées', '', 0, 0, 0, 2, '', 1),
(1005, 1, 592, 'option', 'Guadeloupe', '', 0, 0, 0, 97, '', 1),
(1006, 1, 592, 'option', 'Martinique', '', 0, 0, 0, 98, '', 1),
(1007, 1, 592, 'option', 'Guyane', '', 0, 0, 0, 99, '', 1),
(1008, 1, 592, 'option', 'La Réunion', '', 0, 0, 0, 100, '', 1),
(1009, 1, 592, 'option', 'Mayotte', '', 0, 0, 0, 101, '', 1),
(1025, 3, 26, 'option', 'bénévole associatif', '', 0, 0, 0, 15, '', 1),
(1026, 3, 26, 'option', 'salarié associatif', '', 0, 0, 0, 16, '', 1),
(1027, 3, 26, 'option', 'fonctionnaire (collectivité territoriale / administration)', '', 0, 0, 0, 17, '', 1),
(1028, 3, 26, 'option', 'retraité', '', 0, 0, 0, 18, '', 1),
(1029, 3, 26, 'option', 'autre', '', 0, 0, 0, 19, '', 1);
