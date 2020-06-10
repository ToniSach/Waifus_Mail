-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_waimai
-- ------------------------------------------------------
-- Server version	5.7.29-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `idadministrador` int(11) NOT NULL AUTO_INCREMENT,
  `Name_Admin` varchar(45) NOT NULL,
  `ApPat_Admin` varchar(45) NOT NULL,
  `ApMat_Admin` varchar(45) NOT NULL,
  `Correo_Admin` varchar(45) NOT NULL,
  `Contra_Admin` varchar(45) NOT NULL,
  PRIMARY KEY (`idadministrador`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'Alberto','Quintana','Rodriguez','AlbertQuin@gmail.com','123'),(2,'Admin01','Admiiin','Admooon','Admin01@gmail.com','123'),(3,'Admin02','Jimenez','Jimenez','Adm@gmail.com','123');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL,
  `Producto` varchar(45) NOT NULL,
  PRIMARY KEY (`idCompra`),
  CONSTRAINT `idCompra` FOREIGN KEY (`idCompra`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Producto` varchar(45) NOT NULL,
  `Precio_Producto` double NOT NULL,
  `URL_imgProducto` varchar(150) NOT NULL,
  `Caracter_Producto` mediumtext NOT NULL,
  `Categoria_Producto` varchar(45) NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Shalltear Bloodfallen',3299.99,'https://pm1.narvii.com/6087/6c000baa02776908b8d74df00a1fa31e9d8e492d_hq.jpg','Shalltear es una vampiresa de corta estatura y tiene la apariencia de una exuberante chica de catorce años. Es descrita como una \"belleza real\", tiene la piel pálida brillante, ojos rojos seductivos, y rasgos faciales finos. Su cabello plateado está peinado en una cola de caballo, dejando que otros vean su cara.','Loli'),(2,'Albedo',4599.99,'https://i.pinimg.com/originals/a4/b3/c9/a4b3c996118937e81d486cbfbf0fb6d8.png','Una belleza impecable, Albedo es una mujer con lustroso cabello negro azabache con un mechÃ?Â³n en la punta de su cabeza emulando un peinado estilo Ahoge y el rostro de una diosa. Tiene iris dorados y pupilas divididas verticalmente; en sus sienes izquierda y derecha hay dos cuernos gruesos que sobresalen torcidos, y en su cintura hay un par de alas negras de Ã?Â¡ngel.','Yandere'),(3,'Taiga Aisaka',2102.99,'http://static.zerochan.net/Aisaka.Taiga.full.2012139.jpg','A pesar de que Taiga es una adolescente, su baja estatura la hace ver como una niÃ±a pequeÃ±a. Ami con frecuencia se burla de ella acerca de esto.Taiga tiene el pelo largo y rizado de color naranja-oro (heredado de su madre ) que cae mÃ¡s allÃ¡ de su cintura en las ondas , con grandes ojos de color Ã¡mbar oscuro que se heredan de su padre .Ella es una loli (pecho plano) y se avergÃ¼enza de ello, pero a menudo se compensa por este hecho por lo general con su constante deslumbramiento o palabras amenazadoras.','Loli'),(4,'Natalia Poklonskaya',6588.99,'http://upload.wikimedia.org/wikipedia/commons/2/2e/Natalia_Poklonskaya_by_BonKiru.jpg','Cualquier persona soÃ???Ã??Ã?Â±arÃ???Ã??Ã?Â­a tener amistad con una mujer honrada, inteligente, culta, guapa y trabajadora, calidades muy difÃ???Ã??Ã?Â­ciles de reunir en un solo ser; todo esto y mucho mÃ???Ã??Ã?Â¡s se puede decir de la diputada rusa Natalia PoklÃ???Ã??Ã?Â³nskaya.','Kimokawaii'),(5,'Kurumi Tokisaki',7999.99,'http://vignette2.wikia.nocookie.net/p__/images/0/01/Kurumi.png/revision/latest?cb=20150328013203&path-prefix=protagonist','Kurumi es \"una chica con una belleza asombrosa\" como lo describe Shido Itsuka. Parece ser elegante y tiene modales muy educados. Ella tiene piel de marfil y cabello largo y negro, generalmente atado en largas colas gemelas. Su ojo derecho estÃ¡ teÃ±ido de rojo mientras que su ojo izquierdo aparece como un reloj dorado e inorgÃ¡nico. Las posiciones de las manecillas del reloj representan su \"tiempo\" restante y estÃ¡n cubiertas por su flequillo, que solo se revela cuando se transforma en su forma de EspÃ­ritu.','Yandere'),(6,'Tohka Yatogami',2300.99,'https://vignette.wikia.nocookie.net/date-a-live/images/c/cd/Chara1_1.png/revision/latest/scale-to-width-down/230?cb=20150817104435','Tohka es una chica con el pelo muy largo, de color pÃºrpura oscuro, generalmente recogido con una especie de cinta, y ojos azules purpÃºreos a juego con iris blancos. Shido la describe como una \"niÃ±a increÃ­blemente hermosa\". Se dice que la altura de Tohka es de 155 cm, y sus tres tamaÃ±os son B84 / W58 / H83','Tsundere'),(7,'Kotori Itsuka',1999.99,'https://vignette.wikia.nocookie.net/date-a-live/images/3/38/Chara5_2.png/revision/latest/scale-to-width-down/250?cb=20141024044921','Kotori es una linda chica de secundaria con ojos rojos y cabello muy largo, de color coral claro que generalmente estÃ¡ atado a ambos lados con cintas en una variedad de colores llamados peinados twintail. Ella tambiÃ©n tiene un cabello de antena de Anime (ã?¢ ã?? æ¯?, ahoge?) Que siempre sobresale en la parte superior de su cabeza.','Loli'),(8,'Origami Tobiichi',2599.99,'https://vignette.wikia.nocookie.net/date-a-live/images/7/75/Chara2_2.png/revision/latest/scale-to-width-down/200?cb=20140425071509','Origami tiene el aspecto de una mujer joven y atractiva con ojos azules y cabello corto, plateado y arreglado en un corte bob con tres pinzas para el cabello en la parte derecha de su cabello. DespuÃ©s de convertirse en un EspÃ­ritu, el color de sus ojos cambiÃ³ de azul a azul claro y blanco. Por lo general, usa el uniforme de niÃ±a Raizen High como sus compaÃ±eras de clase cuando estÃ¡ en la escuela. Se dice que la altura de Origami es de 152 cm, y sus tres tamaÃ±os son B75 / W55 / H79.','Mukuchi'),(9,'Mio Takamiya',3499.99,'https://vignette.wikia.nocookie.net/date-a-live/images/5/54/DAL_v17_05.jpg/revision/latest/scale-to-width-down/250?cb=20170818185400','Cuando los recuerdos de Mana comenzaban a destellarle como el obturador de una cÃ¡mara, logrÃ³ vislumbrar brevemente la apariencia de Mio, describiÃ©ndola como una niÃ±a con el pelo largo. Sin embargo, debido a la capacidad de transformaciÃ³n de Mio, su apariencia nunca es inamovible. A veces, parece ser una mujer de unos 20 aÃ±os, mientras que otras veces puede asumir una forma similar a la de una niÃ±a en su adolescencia.','Kimokawaii'),(10,'Yoshino Himekawa',3200.99,'https://vignette.wikia.nocookie.net/date-a-live/images/1/15/Yoshino_normal.png/revision/latest/scale-to-width-down/200?cb=20160109194539','Yoshino tiene el aspecto de una niÃ±a linda y joven de unos 13 a 14 aÃ±os de edad con ojos azules y cabello largo y rizado. Ella usa un vestido blanco corto debajo de un gran impermeable verde que tiene una cola con una cinta rosa atada, con un par de capucha de oreja de conejo y sostiene su marioneta de conejo, Yoshinon, en su mano izquierda. Parece que su forma preferida de ropa son los vestidos de verano junto con las botas que combinan con su impermeable. DespuÃ©s de que su poder espiritual fue sellado, ella comienza a usar un vestido de una pieza y un sombrero para el sol que le dio Reine. Se dice que la altura de Yoshino es de 144 cm, y sus tres tamaÃ±os son B73 / W55 / H78.','Loli'),(11,'Yamai Kazamachi',3100.99,'https://vignette.wikia.nocookie.net/date-a-live/images/4/46/Kaguya_Yamai.png/revision/latest/scale-to-width-down/240?cb=20160322101226','Siendo gemelos idÃ©nticos, Kaguya y Yuzuru se ven casi iguales. Ambos tienen cabello anaranjado y ojos azules y parecen ser de la misma altura. Sin embargo, observando cuidadosamente, ambos aÃºn tienen sus caracterÃ­sticas individuales.','Kimokawaii'),(12,'Miku Izayoi',2488.99,'https://vignette.wikia.nocookie.net/date-a-live/images/2/24/Chara8_2.png/revision/latest/scale-to-width-down/250?cb=20140416091252','Miku, como idol, es sin duda una chica hermosa. Tiene una figura voluptuosa y una piel suave que nunca ha perdido mantenimiento. Tiene el pelo largo de color pÃºrpura azulado en un corte hime, mientras que el color de sus ojos es de color Ã­ndigo claro. Se dice que la altura de Miku es de 165 cm, y sus tres tamaÃ±os son B94 / W63 / H88.','Dojikko'),(13,'Shizue Izawa',2800.99,'https://tse1.mm.bing.net/th?id=OIP.xW6c78-CG2D9wuZDh_fbDwHaLC&pid=Api&rs=1&c=1&qlt=95&w=75&h=112',' Yumiri Hanamori Apodada Shizu, es una humana de JapÃ³n, invocada en este mundo por el seÃ±or demonio LeÃ³n Cromwell durante el bombardeo de Tokio. Ella y Rimuru se conocieron por poco tiempo y desarrollaron un gran vÃ­nculo mutuo tras descubrirse a sÃ­ mismos como compaÃ±eros viajeros de JapÃ³n. Tras ser absorbida por Rimuru, Ã©ste toma una forma humana similar a la de una Shizu mÃ¡s joven, aunque con cabello plateado y ojos dorados.','Mukuchi'),(14,'Shion',4999.99,'https://vignette.wikia.nocookie.net/vsbattles/images/4/4a/Shion_Anime_Better_Qual.png/revision/latest?cb=20190305044742','SeiyÅ«: Mao Ichimichi Es una oni con cabello violeta, tez pÃ¡lida y un cuerno oscuro y recto. TambiÃ©n es una fiel seguidora de Rimuru, y lo sirve como secretaria personal y guardia, a pesar de ser torpe y bastante tonta. TambiÃ©n es bastante impulsiva y sus compaÃ±eros la frenan a menudo debido a sus frecuentes berrinches. Usa un enorme Å?dachi como su arma principal.','Tsundere'),(15,'Shuna',6999.99,'https://tse1.explicit.bing.net/th?id=OIP.O8pdS1ei1g4GBnlvNzP_EgHaKe&pid=Api&P=0&w=300&h=300','SeiyÅ«: Sayaka Senbongi Es una princesa oni, hermana de Benimaru, de pelo largo y rosado, piel blanca, ojos morados y dos cuernos blancos en la frente. Es uno de los sirvientes mÃ¡s leales de Rimuru, encargada del Departamento de ProducciÃ³n de Tempest. Debido a la bondad de Rimuru, ella se enamora de Ã©l.','Dojikko'),(16,'Megumin',4699.99,'https://tse1.mm.bing.net/th?id=OIP.nXpTKLtKuEzS2pmd3Fy90gHaKD&pid=Api&P=0&w=300&h=300','De apariencia, Megumin es una adolescente de baja estatura, con el pelo corto y un fleco dejando mechones cortos delanteros hasta su mentÃ³n, y mechones largos traseros cayendo hasta su pecho. Como todos los demonios carmesÃ­, tiene los ojos rojos e inclusive se ha mostrado que brillan en la oscuridad en el anime (no se sabe si esto es una caracterÃ­stica racial que estÃ¡ presente en los demonios carmesÃ­ o propia de ella misma).','Loli'),(17,'Aqua',1200.59,'https://tse3.mm.bing.net/th?id=OIP.CljVZ8_bt8kUfodMMeJJfgHaK9&pid=Api&P=0&w=300&h=300','Aqua es una joven de muy linda apariencia, al ser una diosa de pelo azul celeste, atado en una coleta con una cinta adornada con dos esferas amarillas y una azul. Lleva un vestido azul con una cinta turquesa con bordes amarillos y un broche con una piedra azul y mangas sueltas color blanco. Usa calcetas blancas y usa botas azul oscuras. TambiÃ©n posee un hagoromo rosa transparente (segÃºn ella, su seÃ±a de identidad) que puede desaparecer y reaparecer a voluntad. Muchas veces se la ve con un cetro de madera blanca con una flor rosa cerrada que se abre al ejecutar hechizos.','Dojikko'),(18,'Darkness',3999.99,'https://orig00.deviantart.net/c2e2/f/2017/074/8/2/render_darkness_konosuba_by_loleyke-db2dkz3.png','Es una muchacha preciosa, con un fÃ­sico maduro, grandes pechos y cadera generosa. Tiene el pelo rubio y lo lleva atado en una cola de caballo largo con un fleco y mechones a los costados de su rostro con unas horquillas rojas en ambos mechones. Lleva una maya negra que cubre todo su cuerpo en la parte superior, un peto de metal con una hombrera de acero en el hombro izquierdo y algo parecido a un ala en el hombro derecho, lleva un vestido largo color amarillo con una cinta de piel con unas placas de metal a los costados.','Tsundere'),(19,'Yunyun',4459.99,'https://pm1.narvii.com/6554/4e34accf2f100fcc43a042f2e1e3f7264ab9a0f7_00.jpg','Es una joven de pelo marrÃ³n oscuro con dos mechones  largos a los costados de su rostro atados casi al final con  lazos rojos. Como todos los demonios carmesÃ­ tiene ojos rojos  brillantes. Lleva un broche con una cinta roja. Su traje consiste  en un cuello de camisa blanca, un traje negro con hombros  abullonados que deja un escote, una falda  rosa tablillada y un cinturÃ³n, medias rosas y botas marrones.','Dojikko');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `idTicket` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Servicio` varchar(45) NOT NULL,
  `Fecha_Com` varchar(45) NOT NULL,
  `idCompra` int(11) NOT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`idTicket`),
  KEY `s_idx` (`idCompra`),
  CONSTRAINT `id_Compra` FOREIGN KEY (`idCompra`) REFERENCES `compra` (`idCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Usuario` varchar(45) NOT NULL,
  `ApPat_Usuario` varchar(45) NOT NULL,
  `ApMat_Usuario` varchar(45) NOT NULL,
  `FechaNac_Usuario` varchar(45) NOT NULL,
  `Correo_Usuario` varchar(45) NOT NULL,
  `Contra_Usuario` varchar(45) NOT NULL,
  `Direccion_Usuario` varchar(45) NOT NULL,
  `CP_Usuario` varchar(10) NOT NULL,
  `Tel_Usuario` varchar(10) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Victor','Morales','Aguilar','24/11/2000','victormorales@gmail.com','123','Mexico','03110','5510857854'),(2,'Antonio','Sanchez','Cabrera','24/11/2001','antoniosan@gmail.com','234','Mexico','07689','5566789344'),(3,'Daniel','Jimenez','Solis','12/06/2002','Danijim@gmail.com','456','Mexico','09875','5566773786'),(4,'Cristian','Rodriguez','Medina','12/11/2000','Cris@gmail.com','123','Mexico','11333','1111111111'),(5,'Ximena','Campos','Cruz','08/08/2001','Ximena@gmail.com','123','Mexico','8769','5511982376'),(8,'Alfredo','Ortiz','Gallardo','12/07/2001','Alfre@gmail.com','123','Mexico','7689','5598680344'),(9,'Elizabeth','Garcia','Andrade','01/07/2000','Eli@gmail.com','123','Mexico','1639','5576488753'),(11,'Eliseo','Perez','Hernandez','16/02/2001','Eliseo@gmail.com','123','Mexico','90872','1111111111');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 19:20:09
