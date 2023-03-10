-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: php-blog
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Omer','SANI'),(2,'Romaric','TODAN');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `author_id` int DEFAULT NULL,
  `cover_url` varchar(2000) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`post_id`),
  KEY `posts_FK` (`author_id`),
  CONSTRAINT `posts_FK` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Le caf??, qu\'est-ce-que c\'est ?',' <p>Les grains de caf?? proviennent des baies du <strong>caf??ier</strong>, un arbuste originaire de la for??t vierge. Les pays producteurs de caf?? se situent tous autour de l?????quateur, le caf??ier affectionnant un climat sp??cifique: une temp??rature entre 20 et 25??C et un ensoleillement pas trop vif. </p><p>Il existe deux vari??t??s de caf?? :</p><ul><li>Le<strong> caf?? Arabica</strong> repr??sente 75% de la production mondiale de caf??.</li></ul><p>Cette vari??t?? originaire d???Abyssinie (aujourd???hui l?????thiopie) s???est r??pandue dans le monde entier. Le caf??ier Arabica d??licat et exigeant est cultiv?? ?? flanc de montagne entre 600 et 2000 m d???altitude, surtout en Am??rique Centrale, en Am??rique du Sud et en Afrique de l???Est. <strong>L???Arabica a une saveur pleine et douce.</strong> Il a une teneur en caf??ine relativement basse (entre<strong> 0,8 et 1,3%</strong>). </p><ul><li>Le <strong>caf??ier Robusta</strong> repr??sente 25% de la production mondiale.</li></ul><p>Comme son nom le sugg??re, il est robuste. Il pousse ?? des hauteurs moins ??lev??es que l???Arabica et r??siste bien aux maladies. Son rendement par arbuste est plus ??lev??. Le Robusta est surtout cultiv?? en Afrique de l???Ouest et en Asie du Sud-Est. <strong>La saveur du Robusta est relev??e, quelque peu am??re, tr??s pure, mais moins aromatique que celle du caf?? Arabica</strong>. Sa teneur en caf??ine s?????l??ve de<strong> 2% ?? 2,5%. </strong></p><p>Les grains de caf?? sont torr??fi??s c???est-??-dire grill??s pour lib??rer les ar??mes du caf?? tout en temp??rant leur acidit?? naturelle. Plus la torr??faction est longue, plus le caf?? sera fort et amer et moins le caract??re d???origine du grain sera prononc??.</p><p><strong>Chaque vari??t?? de grains demande une torr??faction sp??cifique </strong>pour d???obtenir l?????quilibre id??al entre douceur et acidit?? et de cr??er ainsi un go??t optimal.</p>',NULL,1,'/src/posts/media/coffe-what-its.webp',1),(3,'Tout savoir sur l\'histoire du caf??','<p style=\"text-align: justify;\">Voil&agrave; plus de 4 si&egrave;cles que <a href=\"/cafes/\">le caf&eacute;</a> est arriv&eacute; en Europe. Cette boisson &eacute;nergisante a rapidement &eacute;t&eacute; appr&eacute;ci&eacute;e au fil du temps, tant pour ses propri&eacute;t&eacute;s que pour son caract&egrave;re social. On partage volontiers un caf&eacute; en discutant, et ce, depuis toujours. Et c&rsquo;est probablement cet aspect, li&eacute; au partage et &agrave; l&rsquo;&eacute;change qui l&rsquo;a parfois rendu controverse&hellip;</p>','2023-02-09 13:41:09',2,'/src/posts/media/coffee-story.png',0),(4,'Du caf?? pour rester zen','<p class=\"sc-ciaeTv gA-Dhst\">Plusieurs ??tudes sugg??rent <strong>un moindre risque de d??pression chez les buveurs de caf??</strong>. Une r??cente ??tude men??e sur 10&nbsp;177 Cor??ens, ??g??s de 20 ?? 97&nbsp;ans, a r??v??l?? que ceux qui buvaient au moins trois tasses de caf?? par jour avait presque deux fois moins de risque de faire une <a rel=\"\" target=\"_blank\" href=\"/html/dossiers/depression/niv2/symptomes-depression.htm\">d??pression</a><sup>1</sup>.</p><p class=\"sc-ciaeTv gA-Dhst\">Les chercheurs avancent quelques hypoth??ses pour expliquer ces r??sultats. <strong>La consommation de caf?? stimulerait la production c??r??brale de neurom??diateurs du bien-??tre</strong>&nbsp;: <a rel=\"\" target=\"\" href=\"/sante/dictionnaire-medical/serotonine\">s??rotonine</a> et <a rel=\"\" target=\"\" href=\"/sante/dictionnaire-medical/dopamine\">dopamine</a>. De plus, certains polyph??nols du caf?? (les acides chlorog??niques) semblent avoir des effets anti-inflammatoires et antioxydants.</p><p class=\"sc-ciaeTv gA-Dhst\">L???Agence nationale de s??curit?? sanitaire de l???alimentation, de l???environnement et du travail (Anses) souligne toutefois qu???un exc??s de caf??ine peut ??tre cause d???<a rel=\"\" target=\"\" href=\"/html/psychologie/stress_angoisse/ps_2573_anxiete_maladie.htm\">anxi??t??</a>, d???irritabilit?? et de nervosit??. Pr??s de 30&nbsp;% de la population adulte fran??aise d??passerait le seuil journalier retenu comme g??n??rateur d???anxi??t??, ??valu?? ?? 200&nbsp;mg de <a rel=\"\" target=\"\" href=\"/html/nutrition/equilibre_plaisir/articles/10802-cafeine-loupe.html\">caf??ine</a><sup>2</sup>, soit 30&nbsp;cl de caf?? filtre.</p><p class=\"sc-ciaeTv gA-Dhst\">','2023-02-09 13:55:40',2,'/src/posts/media/coffee-zen.png',0),(5,'Boire du caf?? : bon ou pas pour la sant?? ?','Le caf??ier est un arbuste tropical cultiv?? pour ses fruits appel??s \"cerises\" contenant de la pulpe et des grains de caf?? vert. La torr??faction de ces derniers va d??velopper l\'odeur si recherch??e et caract??ristique du caf??. Il existe plusieurs vari??t??s de caf?? mais deux d\'entre elles sont particuli??rement connues :\r\n\r\nl\'arabica aux notes aromatiques subtiles.\r\nle robusta, pour les fervents d\'un go??t plus cors?? et plus riche en caf??ine.\r\nMode d\'action\r\nLa caf??ine traverse la barri??re h??mato-enc??phalique. Une fois pr??sente dans le cerveau, elle neutralise les r??cepteurs ?? l\'ad??nosine au r??le important dans le message hormonal. L\'augmentation de l\'activit?? nerveuse qui en d??coule provoque la lib??ration de l\'adr??naline influen??ant  alors le rythme cardiaque.\r\n\r\nLe caf?? peut att??nuer une migraine. \r\nVertus et bienfaits du caf??\r\nLes amateurs de caf?? le savent bien : consomm??e sans exc??s notoire, la caf??ine a la particularit?? de stimuler le syst??me nerveux, joue donc un r??le sur la vigilance surtout nocturne quand un ??tat de somnolence se fait ressentir en permettant une meilleure perception visuelle et de meilleurs r??flexes.\r\n\r\nLa caf??ine peut att??nuer une migraine gr??ce ?? son effet vasoconstricteur mais en grande quantit??, l\'effet inverse peut ??tre observ??. Elle entra??ne une am??lioration des fonctions digestives comme la stimulation des s??cr??tions gastriques, augmente la motricit?? intestinale. Quant ?? son effet diur??tique, il n\'est plus ?? prouver. En effet, la caf??ine augmente le pouvoir urinaire. C??t?? des sportifs, elle diminue la perception de la fatigue. Chez les asthmatiques, elle am??liorerait la respiration. Et bonne nouvelle, le caf?? aurait une incidence sur l\'humeur matinale !\r\n\r\nEst-il efficace contre la fatigue ?\r\nLe caf?? est une boisson coup de fouet ! \"Le caf?? est un stimulant du syst??me nerveux central, il va donc permettre de donner un boost en ??nergie. Il stimule notre vigilance, ce qui permet de r??duire l\'impression de fatigue. Le caf?? stimule ??galement nos fonctions cognitives, ce qui permet d\'??tre concentr??\" informe le Dr Diana Kadouch, m??decin nutritionniste.\r\n\r\nLe caf?? est-il bon pour le c??ur ? \r\n\"Oui ! Il a ??t?? montr?? que consommer trois tasses de caf?? par jour, d??caf??in?? ou non, permettrait de diminuer le risque de mortalit?? toutes causes confondues. La consommation de caf?? est associ??e ?? un risque faible de mortalit?? li?? ?? des maladies cardiovasculaires, des maladies coronariennes et d\'AVC\" explique le Dr Diana Kadouch, m??decin nutritionniste. \"La consommation de caf?? a un r??el effet positif compar?? aux des gens qui n\'en boivent pas.\" En effet, le Dr Kadouch explique que si une personne boit raisonnablement du caf??, il n\'y a pas de risque d\'hypertension ni de sensation de palpitations. ','2023-02-09 14:03:34',1,'/src/posts/media/cafe-bienfaits-mefaits-sante.jpg',0),(7,'Les bienfaits du caf?? le matin','<p><strong>Le caf?? est bu par des millions de personnes chaque matin partout dans le monde.</strong></p> <p>Bien que le caf?? affecte toutes les personnes diff??remment, le moment id??al pour profiter des bienfaits des antioxydants du caf?? est souvent en d??but de journ??e.</p> <p>Cependant, il y a quelques points ?? consid??rer pour s&#39;assurer de la qualit?? et de l&#39;int??r??t du caf?? consomm??. Qu&#39;il soit <em>espresso</em>, <em>ristretto</em>, ou <em>Am??ricain</em>, il faut ??viter de le consommer trop r??guli??rement avec du sucre ou du lait riche en mati??res grasses. Les sucres, les sirops et autres extras au caf?? peuvent ajouter des calories importantes.</p> <p>La pr??paration du caf?? est importante, et que ce soit la qualit?? de l&#39;eau, la temp??rature, le temps d&#39;infusion et son type de pr??paration, chaque ??tape peut modifier ses propri??t??s.</p> <p>D&#39;ailleurs, une ??tude [6] publi??e en avril 2020 dans la revue <em>European Journal of Preventive Cardiology</em> r??v??le le caf?? non filtr?? contient des substances qui augmentent le cholest??rol sanguin.</p> <p>Selon les auteurs, ?? <em>une infusion non filtr??e ??tait associ??e ?? une mortalit?? plus ??lev??e que l&#39;infusion filtr??e, et une infusion filtr??e ??tait associ??e ?? une mortalit?? plus faible que l&#39;absence de consommation de caf??</em> ??.</p> <p><strong>La consommation de caf??ine mod??r??e est la priorit??. Avec une moyenne de 1 ?? 3 tasses de caf?? par jour, le taux de caf??ine ne devrait pas trop affecter une personne sauf pour les consommateurs qui souffrent d&#39;anxi??t?? ou de maux d&#39;estomac, pour qui une consommation r??duite est fortement recommand??e.</strong></p> <p>Il est conseill?? de limiter le caf?? en apr??s-midi si cela perturbe le sommeil. Pour ??viter les diff??rents d??sagr??ments comme l???effet ?? <em>booster </em>?? du caf??, il est toujours possible d&#39;alterner ou de remplacer le caf?? matinal par d???autres boissons comme le mat??, le <a href=\"/actualites/nutrition/the-bienfaits-mefaits-sante-nutrition\" title=\"Th?? : bienfaits et m??faits pour la sant??\">th?? noir</a> [7] ou le th?? vert matcha.</p> <p>En effet, ?? <em>la caf??ine pr??sente dans le th?? vert matcha est lentement lib??r??e pendant 4 ?? 6 heures, gr??ce ?? l???acide amin?? L-Theanine. Cet acide amin?? travaille avec la caf??ine pour cr??er une recette unique et provoquer une relaxation sans somnolence. Le r??sultat est une capacit?? am??lior??e ?? se concentrer et ?? rester de bonne humeur.</em> ??</p>','2023-02-09 14:09:39',1,'/src/posts/media/cafe-matinal-bienfaits-mefaits.jpg',0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'php-blog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-09 15:02:30
