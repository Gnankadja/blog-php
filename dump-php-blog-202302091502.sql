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
INSERT INTO `posts` VALUES (1,'Le café, qu\'est-ce-que c\'est ?',' <p>Les grains de café proviennent des baies du <strong>caféier</strong>, un arbuste originaire de la forêt vierge. Les pays producteurs de café se situent tous autour de l’équateur, le caféier affectionnant un climat spécifique: une température entre 20 et 25°C et un ensoleillement pas trop vif. </p><p>Il existe deux variétés de café :</p><ul><li>Le<strong> café Arabica</strong> représente 75% de la production mondiale de café.</li></ul><p>Cette variété originaire d’Abyssinie (aujourd’hui l’Éthiopie) s’est répandue dans le monde entier. Le caféier Arabica délicat et exigeant est cultivé à flanc de montagne entre 600 et 2000 m d’altitude, surtout en Amérique Centrale, en Amérique du Sud et en Afrique de l’Est. <strong>L’Arabica a une saveur pleine et douce.</strong> Il a une teneur en caféine relativement basse (entre<strong> 0,8 et 1,3%</strong>). </p><ul><li>Le <strong>caféier Robusta</strong> représente 25% de la production mondiale.</li></ul><p>Comme son nom le suggère, il est robuste. Il pousse à des hauteurs moins élevées que l’Arabica et résiste bien aux maladies. Son rendement par arbuste est plus élevé. Le Robusta est surtout cultivé en Afrique de l’Ouest et en Asie du Sud-Est. <strong>La saveur du Robusta est relevée, quelque peu amère, très pure, mais moins aromatique que celle du café Arabica</strong>. Sa teneur en caféine s’élève de<strong> 2% à 2,5%. </strong></p><p>Les grains de café sont torréfiés c’est-à-dire grillés pour libérer les arômes du café tout en tempérant leur acidité naturelle. Plus la torréfaction est longue, plus le café sera fort et amer et moins le caractère d’origine du grain sera prononcé.</p><p><strong>Chaque variété de grains demande une torréfaction spécifique </strong>pour d’obtenir l’équilibre idéal entre douceur et acidité et de créer ainsi un goût optimal.</p>',NULL,1,'/src/posts/media/coffe-what-its.webp',1),(3,'Tout savoir sur l\'histoire du café','<p style=\"text-align: justify;\">Voil&agrave; plus de 4 si&egrave;cles que <a href=\"/cafes/\">le caf&eacute;</a> est arriv&eacute; en Europe. Cette boisson &eacute;nergisante a rapidement &eacute;t&eacute; appr&eacute;ci&eacute;e au fil du temps, tant pour ses propri&eacute;t&eacute;s que pour son caract&egrave;re social. On partage volontiers un caf&eacute; en discutant, et ce, depuis toujours. Et c&rsquo;est probablement cet aspect, li&eacute; au partage et &agrave; l&rsquo;&eacute;change qui l&rsquo;a parfois rendu controverse&hellip;</p>','2023-02-09 13:41:09',2,'/src/posts/media/coffee-story.png',0),(4,'Du café pour rester zen','<p class=\"sc-ciaeTv gA-Dhst\">Plusieurs études suggèrent <strong>un moindre risque de dépression chez les buveurs de café</strong>. Une récente étude menée sur 10&nbsp;177 Coréens, âgés de 20 à 97&nbsp;ans, a révélé que ceux qui buvaient au moins trois tasses de café par jour avait presque deux fois moins de risque de faire une <a rel=\"\" target=\"_blank\" href=\"/html/dossiers/depression/niv2/symptomes-depression.htm\">dépression</a><sup>1</sup>.</p><p class=\"sc-ciaeTv gA-Dhst\">Les chercheurs avancent quelques hypothèses pour expliquer ces résultats. <strong>La consommation de café stimulerait la production cérébrale de neuromédiateurs du bien-être</strong>&nbsp;: <a rel=\"\" target=\"\" href=\"/sante/dictionnaire-medical/serotonine\">sérotonine</a> et <a rel=\"\" target=\"\" href=\"/sante/dictionnaire-medical/dopamine\">dopamine</a>. De plus, certains polyphénols du café (les acides chlorogéniques) semblent avoir des effets anti-inflammatoires et antioxydants.</p><p class=\"sc-ciaeTv gA-Dhst\">L’Agence nationale de sécurité sanitaire de l’alimentation, de l’environnement et du travail (Anses) souligne toutefois qu’un excès de caféine peut être cause d’<a rel=\"\" target=\"\" href=\"/html/psychologie/stress_angoisse/ps_2573_anxiete_maladie.htm\">anxiété</a>, d’irritabilité et de nervosité. Près de 30&nbsp;% de la population adulte française dépasserait le seuil journalier retenu comme générateur d’anxiété, évalué à 200&nbsp;mg de <a rel=\"\" target=\"\" href=\"/html/nutrition/equilibre_plaisir/articles/10802-cafeine-loupe.html\">caféine</a><sup>2</sup>, soit 30&nbsp;cl de café filtre.</p><p class=\"sc-ciaeTv gA-Dhst\">','2023-02-09 13:55:40',2,'/src/posts/media/coffee-zen.png',0),(5,'Boire du café : bon ou pas pour la santé ?','Le caféier est un arbuste tropical cultivé pour ses fruits appelés \"cerises\" contenant de la pulpe et des grains de café vert. La torréfaction de ces derniers va développer l\'odeur si recherchée et caractéristique du café. Il existe plusieurs variétés de café mais deux d\'entre elles sont particulièrement connues :\r\n\r\nl\'arabica aux notes aromatiques subtiles.\r\nle robusta, pour les fervents d\'un goût plus corsé et plus riche en caféine.\r\nMode d\'action\r\nLa caféine traverse la barrière hémato-encéphalique. Une fois présente dans le cerveau, elle neutralise les récepteurs à l\'adénosine au rôle important dans le message hormonal. L\'augmentation de l\'activité nerveuse qui en découle provoque la libération de l\'adrénaline influençant  alors le rythme cardiaque.\r\n\r\nLe café peut atténuer une migraine. \r\nVertus et bienfaits du café\r\nLes amateurs de café le savent bien : consommée sans excès notoire, la caféine a la particularité de stimuler le système nerveux, joue donc un rôle sur la vigilance surtout nocturne quand un état de somnolence se fait ressentir en permettant une meilleure perception visuelle et de meilleurs réflexes.\r\n\r\nLa caféine peut atténuer une migraine grâce à son effet vasoconstricteur mais en grande quantité, l\'effet inverse peut être observé. Elle entraîne une amélioration des fonctions digestives comme la stimulation des sécrétions gastriques, augmente la motricité intestinale. Quant à son effet diurétique, il n\'est plus à prouver. En effet, la caféine augmente le pouvoir urinaire. Côté des sportifs, elle diminue la perception de la fatigue. Chez les asthmatiques, elle améliorerait la respiration. Et bonne nouvelle, le café aurait une incidence sur l\'humeur matinale !\r\n\r\nEst-il efficace contre la fatigue ?\r\nLe café est une boisson coup de fouet ! \"Le café est un stimulant du système nerveux central, il va donc permettre de donner un boost en énergie. Il stimule notre vigilance, ce qui permet de réduire l\'impression de fatigue. Le café stimule également nos fonctions cognitives, ce qui permet d\'être concentré\" informe le Dr Diana Kadouch, médecin nutritionniste.\r\n\r\nLe café est-il bon pour le cœur ? \r\n\"Oui ! Il a été montré que consommer trois tasses de café par jour, décaféiné ou non, permettrait de diminuer le risque de mortalité toutes causes confondues. La consommation de café est associée à un risque faible de mortalité lié à des maladies cardiovasculaires, des maladies coronariennes et d\'AVC\" explique le Dr Diana Kadouch, médecin nutritionniste. \"La consommation de café a un réel effet positif comparé aux des gens qui n\'en boivent pas.\" En effet, le Dr Kadouch explique que si une personne boit raisonnablement du café, il n\'y a pas de risque d\'hypertension ni de sensation de palpitations. ','2023-02-09 14:03:34',1,'/src/posts/media/cafe-bienfaits-mefaits-sante.jpg',0),(7,'Les bienfaits du café le matin','<p><strong>Le café est bu par des millions de personnes chaque matin partout dans le monde.</strong></p> <p>Bien que le café affecte toutes les personnes différemment, le moment idéal pour profiter des bienfaits des antioxydants du café est souvent en début de journée.</p> <p>Cependant, il y a quelques points à considérer pour s&#39;assurer de la qualité et de l&#39;intérêt du café consommé. Qu&#39;il soit <em>espresso</em>, <em>ristretto</em>, ou <em>Américain</em>, il faut éviter de le consommer trop régulièrement avec du sucre ou du lait riche en matières grasses. Les sucres, les sirops et autres extras au café peuvent ajouter des calories importantes.</p> <p>La préparation du café est importante, et que ce soit la qualité de l&#39;eau, la température, le temps d&#39;infusion et son type de préparation, chaque étape peut modifier ses propriétés.</p> <p>D&#39;ailleurs, une étude [6] publiée en avril 2020 dans la revue <em>European Journal of Preventive Cardiology</em> révèle le café non filtré contient des substances qui augmentent le cholestérol sanguin.</p> <p>Selon les auteurs, « <em>une infusion non filtrée était associée à une mortalité plus élevée que l&#39;infusion filtrée, et une infusion filtrée était associée à une mortalité plus faible que l&#39;absence de consommation de café</em> ».</p> <p><strong>La consommation de caféine modérée est la priorité. Avec une moyenne de 1 à 3 tasses de café par jour, le taux de caféine ne devrait pas trop affecter une personne sauf pour les consommateurs qui souffrent d&#39;anxiété ou de maux d&#39;estomac, pour qui une consommation réduite est fortement recommandée.</strong></p> <p>Il est conseillé de limiter le café en après-midi si cela perturbe le sommeil. Pour éviter les différents désagréments comme l’effet « <em>booster </em>» du café, il est toujours possible d&#39;alterner ou de remplacer le café matinal par d’autres boissons comme le maté, le <a href=\"/actualites/nutrition/the-bienfaits-mefaits-sante-nutrition\" title=\"Thé : bienfaits et méfaits pour la santé\">thé noir</a> [7] ou le thé vert matcha.</p> <p>En effet, « <em>la caféine présente dans le thé vert matcha est lentement libérée pendant 4 à 6 heures, grâce à l’acide aminé L-Theanine. Cet acide aminé travaille avec la caféine pour créer une recette unique et provoquer une relaxation sans somnolence. Le résultat est une capacité améliorée à se concentrer et à rester de bonne humeur.</em> »</p>','2023-02-09 14:09:39',1,'/src/posts/media/cafe-matinal-bienfaits-mefaits.jpg',0);
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
