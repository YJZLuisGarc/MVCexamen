/*
SQLyog Ultimate v8.61 
MySQL - 5.6.20 : Database - sistemae
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sistemae` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sistemae`;

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(100) DEFAULT NULL,
  `opcion1` varchar(25) DEFAULT NULL,
  `opcion2` varchar(25) DEFAULT NULL,
  `opcion3` varchar(25) DEFAULT NULL,
  `respuesta` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `test` */

insert  into `test`(`id`,`pregunta`,`opcion1`,`opcion2`,`opcion3`,`respuesta`) values (1,'En un dia muy soleado ¿Cual de las siguientes plantas pierde agua mas facilmente?','Nopales','Cactus','Rosa','Rosa'),(2,'¿Como se llama el proceso mediante el cual las plantas elaboran almidones?','Absorción','Fotosintesis','Germinación','Germinación'),(3,'En las plantas ¿qué función desempleña la raíz?','permite la eliminación de','absorber agua','transportar a las hojas l','absorber agua'),(4,'A las gallinas se les considera omnivoros porque','se alimentan con semillas','pueden comer varios tipos','pueden comer maíz y lombr','pueden comer maíz y lombr'),(5,'En cual de las siguientes opciones se menciona un animal herbívoro?','la ardilla come cacahuate','el lobo come liebres','el pelicano se alimenta d','la ardilla come cacahuate'),(6,'De los siguientes recurso que no es renovable','El maiz','El ganado','La madera','El ganado'),(7,'¿Cual de los siguientes animales ayuda para que en la naturaleza ocurra la polinización','La lombriz','La abeja','El conejo','La abeja'),(8,'De los siguientes, elige el animal que respira por medio de branquias','La lombriz','El cocodrilo','El pez','El pez'),(9,'De la siguiente basura que se acumula en un basurero,¿Cuál es de tipo inorgánico?','Hojas de papel periodico','Envolturas de plastico','Hojarasca de árboles','Envolturas de plastico'),(10,'Animales como la ballena y el cocodrilo, respiran a través de ','La piel ','Los pulmones','Las traqueas','Las traqueas'),(11,'En un árbol como el manzano, cuando se ne el polen con los óvulos se forman:','Los estambres','Las semillas','Las flores','Las flores'),(12,'De cual de las siguientes acciones debe evitarse porque se afectan los sistemas circulatorio y respi','guisar sin sal','hacer mucho ejercicio','asistir a lugares cerrado','asistir a lugares cerrado'),(13,'las plantas necesitan tomar del aire el dióxido de carbono para','absorber agua','captar la luz solar','realizar la fotosintesis','realizar la fotosintesis'),(14,'¿Qué función realiza la raíz en los vegetables?','distribuir los líquidos n','Absorber el agua y las sa','sostener a las hojas y fl','Absorber el agua y las sa'),(15,'¿Cuál es la función principal del corazón?','Hacer circular la sangre ','Proporcionar nutrimentos ','Purificar la sangre del c','Purificar la sangre del c'),(16,'¿Que opción presenta los nutrimentos que proporcionan las frutas y verduras?','Proteinas','Vitaminas','Almidones','Vitaminas'),(17,'¿Que opción presenta tres de los nutrimentos que se obtienen al comer cereales?','Azúcares,vitaminas y prot','Vitaminas,grasas y azúcar','Grasas,minerales y proteí','Azúcares,vitaminas y prot'),(18,'¿Cuál es la parte por la que respira la planta?','Las hojas ','Las ramas','Las raíz','Las hojas'),(19,'¿Cuál de las siguientes plantas tienen propiedades medicinales?','Manzanilla y gordolobo','aguacate y mango','Algodón y mahuey','Manzanilla y gordolobo'),(20,'Los cambios de estado del agua ocurren cuando se ha modificado','la temperatura ','el aire ','el viento','la temperatura ');

/*Table structure for table `testdetalle` */

DROP TABLE IF EXISTS `testdetalle`;

CREATE TABLE `testdetalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) DEFAULT NULL,
  `calif` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_testdetalle` (`iduser`),
  CONSTRAINT `FK_testdetalle` FOREIGN KEY (`iduser`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `testdetalle` */

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) DEFAULT NULL,
  `apellidopaterno` varchar(25) DEFAULT NULL,
  `apellidomaterno` varchar(25) DEFAULT NULL,
  `direccion` varchar(25) DEFAULT NULL,
  `usuario` varchar(25) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `estatus` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`nombre`,`apellidopaterno`,`apellidomaterno`,`direccion`,`usuario`,`contrasena`,`estatus`) values (1,'rogelio','Interino','De la rosa','emiliano','Rogelio','123','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
