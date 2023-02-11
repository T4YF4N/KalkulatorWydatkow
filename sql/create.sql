CREATE DATABASE  IF NOT EXISTS `kalkulator_wydatkow` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kalkulator_wydatkow`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: kalkulator_wydatkow
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `dokument`
--

DROP TABLE IF EXISTS `dokument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dokument` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wydatek_id` int NOT NULL,
  `dane` blob NOT NULL,
  `nazwa_pliku` varchar(256) DEFAULT NULL,
  `format` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dokument_wydatek__fk_idx` (`wydatek_id`),
  CONSTRAINT `dokument_wydatek__fk` FOREIGN KEY (`wydatek_id`) REFERENCES `wydatek` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokument`
--

LOCK TABLES `dokument` WRITE;
/*!40000 ALTER TABLE `dokument` DISABLE KEYS */;
INSERT INTO `dokument` VALUES (5,2,_binary 'PK\0\0\0\0\0!\0�,lok\0\0\0\0\0[Content_Types].xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���N\�0�\�H�C�+j�q@�\�a�&1 $\�\Z-M�8\�\�\�fcB��B\�Q����v&�]c�-\�Ζl\\�XV:�\��d\�\�\���e�U\�8%\��\���j�\�{���-���\�?p���F`\�<Xک\\hD�װ\�^ȵX��\�t6��yl5\�t��ؘ�=\�\��$�A�\���WɄ�FK��o��\�\n\�L1Xk�7��x�C���1\�J��l!B|\ra�\�.�?�[\�E:(]Ui	\�\�MC(\�\nk�ؘ\"�E#��\�>㟂��e<0H{�$\�\�\�O\�\��L�!ƽ�\�I�Ϲ\�[4��\�\�\�\�\�yM-2pN�\���o�y�	��\�m�sOB��Ӑv5�ɑ��\�C{�(P\�<\�g\�/\0\0\0��\0PK\0\0\0\0\0!\0�U0#�\0\0\0L\0\0\0_rels/.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��MO\�0�\�H��\��\�ݐBKwAH�!T~�I\����$ݿ\'T\Z�G�~�\�\�\�<�\�\�!�\�4��;#�w����qu*&r�Fq�\�\�v\��\���GJy(v��*����K\�\�#F\��D�\�.W\Z	��=��Z\�MY\�b��\�BS\�����7�\�ϛז�\�\r?�9L\�ҙ\�sbgٮ|\�l!��\ZUSh9i�b�r:\"y_dl��D���|-N�\�R\"4�2\�G\�%��Z�4�˝y\�7	ë\��ɂ��\�\0\0��\0PK\0\0\0\0\0!\0N\���\0\0\�\0\0\0\0\0xl/workbook.xml�U[o�0}�����N�\�A%Un\�*uS\����r�	V\03\�4\���}&!�d]��ؘ\��\�\��\��dS�\�=��:E�\�F�3��z��\�S3B�T�\�I\�k��*\�\�\�\�\�5�9\�+\0j��B�&�,��\"�7��Ȃ��(��%AI.JUUZ�mVEX���x_,XF\'<k+Z�-��%Q@_��=Z���\"b\�6fƫ \�d\�EF�%g˚2/A��\�F��\�\�8�J:X�b�\��/\�@[[\���ma�j6�{�>$\���\�\�Y�\����=V��\�O�a�V\�6\�h����\�Vқ�u\r\�4?H�3U\"�$RMs�h���|M_=m3jY	Q\�\�N���\�\�\�\�邴��#��p2� v|=�1,5Qt\�k>\�\���\�:\�q��\�\�%�\�2A\�`��@+�$K\�\\^U�(S4Nf\�\�\�dM��L\�\�c�\�S�\�$�\�k�\�-�\��[��M$��.�0\��lr)�I\�!!��|w^\�`Ǳ{Wg\"�w�\�0���\�3=\'�M\�\�\�\�\rCӞFq<����\��A�qҪb�k\r�\"\��K\�;\��l\'-˟i<ڻ���7M{҂uU�at-�]��\�\�\�9_�(�\\X��:n\Z\�]�\�\0�>`\��\�7ʖ0��H\�hb)z��Q\��cלڧ�\��\�\�\��\�\�8�NF\�8�!\���|��7\�\��C(b�7�B�kk�\�\��^D�\�Kb�^F\�<��nb�m\'\�3\�F�K\��`/��gC;� !�ozQ옑\�:\�؛8S`;��|�]���Q;�\'��E�,�PW�d+�]\�ňH0\�V�?������\0\0\0��\0PK\0\0\0\0\0!\0��\�\0\0?\0\0\Z\0xl/_rels/workbook.xml.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\�j\�0E����Ѿq2}P�qf\�R�m�~�p�8Lb[}\�\�kR:\���n�1H\����\�w��$\ZgdI\n��veck\�\�\�\�#��hKl�%\�\�\�W�Wj�\�`�>��b�\�\�o�\�P�!q=\�8��\�c\�k٣>bMr��\�\�5 ?\��R�?�� ���\��k��j4=;�ё\�2�\�\�D��&V�[\'�\�e�͚�\�B��X\��͖�5��?C\�ǩ\�8Y��_Fc��6v�9��.r�j(z*\�\�\�\�ϳ1o��ȳ\�\�?\0\0\0��\0PK\0\0\0\0\0!\03\"��\0\06\"\0\0\0\0\0xl/worksheets/sheet1.xml�Z[�\�6~�\����}�4\�IX�QWj����L0C�@h��\�U\��\�\�\��𮘑�sN�?;\�\�\�\�\�>~9\�o�n\�\�8P8\n�XT���2���\�!\rM�7��:\�y�6�\�ŏ?\�ޫ�s���@�c3vm{��M����	�=�g[Շ��?\�as�i�\��C<\Z%\�C^�aZߓ�\�n˂fU�z�\�V$�\�>o�+O\�9ۡ�\'\�!�?���\�p�\�\�l���\�PL?��:\�C���(/_j���K\�\�p�\�ҡ,ꪩ�m���\��\�p2̋K&��w�AѰ�o%{�]*�m�P|Ʌ�d\��%�dl�\�\�k����Gh��Q��\\�\�C�N��4�\'\�\���,\�\�\�e�_��mJxìW��n\��M��8.f���.\�{�|���tO��B#(�\�\��m\�t�g\���U\�sU}f�~��4\��GX#yіoT�?���\�.��/��\�\��x��V6t��\�\�߫��i��k\n�̋d���Ѧ����C\�u%\�\�|1���T\0 oN9�Oh\n \�O.f�]�n΃��͆o\0��_Hu\����|�g��\"�T��^	+�@\�ֵ����=c�\�b\r?<}�~B#��e]\�\�dgy�\'3Co\�\�?���F\ZraErf\��w�\�k�	D	g�4�\�)y�\�k\�u��\�\�U�X; �H{i6z�\�\�0�\�߃9��9�\�V��\�Z�\�x����a�p<�\�\�c�\"L\�\�\�ԊZX\�V\�l�f�\�E=�A=��V���.棴��=cv7l\���6���1�V�M\�$af\�.(թ�;\�\�\�0IQ�骬W\�ȏ��M�$\�sH+i�q�U8w��Ɖ6\�G^�\�L+i\�IO�-PY\Z��8�b�*\�:�!a�`e�^\Z��r��f�\�=&ZUg\�\�\�\Z��\��\�\���ª\�Z\�l��I�W������	\'\�4׼�?$%��du6l\'q�\�w��=	U\�H�\�\����P=7tR\�t\�RM��86�\�0����!Q��6v�vX\�.EP\�;)�&\�]G7ߩrx�P8�0|\'�͑���\�ZFcUoB�h.uڨJ���;��t\��\0�4T\�/E���U�\r](�>ʐ��H_\�I;�t\�\�\�>\��vO\�$Vj�k��R�6t!�t�AҗX\�g�\�w\\[v����>tU oC�g@�i\���\��k\n�4\�;(��y�L�4�ٹJ��br�{\�\�~\�)�\�\�b\�6^!�\�ȭ �m�\'\�\�Z�;`���\r��\�*��q\nI4p\n�\�w�[LP�︃\�L����\�\�93pJU\�w2�dwu[x/\�y�zf@��h��TE�\�\�\r\�$;/5\�B\�\�\�l��d82\�\���P[�:Ȏx�#D�RաK���=;�\�7a�ש.�#^�\�V\�R\r���\� ;\���#^�\��F\n+i\�\�4�X#�;\\h\�N�\�\�\�K!\�\n\�j^\�hll\0�\�9�$	�]W�l}z\�M���ȥ\��,�q� \�\�^\�\�D\�2�梗\�\�J��ݮ���֧�;\�圆1�}\�\��χz7����.\�\�p�;����xI&D[�K\�4�{2��I*w���C�vg\�V�_\�^�I�\Z�\"5\�d@\�3]픁\'ra���⥒�/�-��8m+>i��\�5�t�`䥍,\�	���YK36\��\�YQ�\�\�ʋ\�UG䥏,ڍ_��\ZWIR=��\� ە\�k\�v �RH\�F,���J\�m�JŶ�;\�NBe:ׄ��t�E�; �R�\�/<\�k�+=w\\۷�GP\�\Z�_3^�A��RD\rN��=\�7�\�=^\�l\�\�/�+\�+=�\�{���\�\�\"���\�_���<6�=܀�\�f��Z\\G�\�p7έ\�\�sն\�\��\��?�\�\��(�J\�VU{��݀_�\�c�?\0\0\0��\0PK\0\0\0\0\0!\0E�PKc\0\0\� \0\0\0\0\0xl/theme/theme1.xml\�Y͏��\��@\�]\�׌>�}zc\�\��\�\"G�Dihq�I\�ZΩ�\0Ң���	�\0\rz\�c�F��}\�4\�\�z�u��\Z\��\�{��\�\�ݏ^$�!)O;A�N%@$��)M\�\�\�xTjH*�N1\�)\�k\"��\���7w�IBȧ�\0w�X�\�A�,\'0�\��$)�6\�\"�\nż<��&�\\�T\Z\�\�4@)N@\�1W\��\�J\�\n=�\�\��6�̔*�&L�\�)H.ybdl�颪�r-�L�s\�:L;\�c�B�a�\��NP1A�\�\�2>ȅ�\�#kɍ\�_.�L53���m\'\r\�(lt��\r��]ܰ9l[}�\'Xpf���Y\�9\�e_=�\�A�\�\�-������8x\��;�Ѩ^t��\�|\�k��~\���|�\��MG�Ō��t%j\���\�n!3\���v���\\y��l\�&��b\�SuE\�%�9#�i<Ê�H��d�\'�\�}\�虠\�\�cȿ%N��\�J�2�\�\���\�	,> ؒ\�\�ArgH��\�DХ\�@k`A\���\�\�W߿~��ן}��\�7�\�F�#w�ӹ-�\�߾�\�_~���\�_��\�ԗ�\�ƿ��o��ϟR+.\\�\�O߾��\�7��__}\�\�\��̆�iB$zD.\���=��3q=�q��#�c\�\�Q=T�|�\�̇\�ׅ\���x�ܱ�4+E=3?�x\�9\�q\�u�C=�\�\��*��\'+�\�s\�\�}�:��@�ԧ�\�\��S�\�$%\n\�\���\�\�>�\��\�1�.�L�O(\�a\�uɘ�9�T\�\���v|s��8�z@\�]$l\�<Ə	s\�x�N|*\�8a�Ï��}F��\�\�\�\r��H\�	\�h8%R�dX���0���u\�\"���\�#̹��E?\�\�\�k3Mc��\\@�bt~\�\���!8\�\�gP\\o[?r�%�ѿ��\'��	w�\�\�0�LW$�v�fGo5wR���/���c�=�t|^� V9$�\�z�\�\\\�\�)���f�\"��tR��\��{�ח�g�\��}�AԝԅS\�K��\�daQ(\n!_�Ny,A��\�\�}ZOb\�]�Y��u-���\��}����dȵe�\�\�\�7c̜	��c(0|t\"N�}�\Z��Wn\�n\�\"P9�NB\�+��KeO��){�\�\r<~\�?�\�\�G)��\n�}��òf�W\�	��d��n��۪&�\�W5���m-s[\�\�\�2���R\�\�T6E�Ǵ~��:?3\�ةZ3r$M�G\�t��9e\Z�ۆ\�2��y�\��\�62Hp�;�\�\�/�CT5й\�U\�%Zr	�#3l��\�n\�~Z%\�|��=�U\�\�\�<)�*\�+\�v�U*C7�E/o�\�tG\���1@\�^\�k2׈�ǈ\�f��SF��݈m�-�~�M��\0ӶQ�7o\�\� \n�~2�\�J�\�8e�\�Mtupn4\���\�\��J{�E�\�\�ֽ\�ӫ\�R\�\"\�a��k���1�\�\�i7\�o2\�\�\"��y\��\�P�\�l}�Xk.�\�\r,����\�4\�\\�L�̠q_�%\�\�/_�\�\�Nf�D�\�߇Y�B��q\�pC:$T�M:�^�6Xj8\�\�V�!�b�k��Ҍ���A&��(;\�ֈ�t��q��W#��`-\�W\�\�xz�\�\�J<��bQ��8�\���7�\�ŶDV\�ߥ�)�]�b\�\�P6�\�2\���b�y7$�5\�<m}`=\�k�\��l�؟}\�^}Tk\�Y�Y���\�S\�O��*QǪ��ͫ�,���\�:HT\�)qũ��eZ1�c��x��5g磮i7XX�h\��\����z\�}O~������ؔ�&�\�}�}\�\�Ϟy\�\ZqŔ4��l��\�\�\�#3ڀ-�B\�5\"|C+A;�����kQ�TiE\�RX+�Vԭ��QT��jeЫ���E\�I5\�\��Gp��\����߹\�O6�5w&<)ssO_6��[�j͹\�\�\��\�X_\��\�|ڨ�\��v�Qj׻�R8\�J\�~�W\Z4�\��hЏZ\�\�\�\0�pح�\�ưUjT��Rبh�[\�R3�պa�\�\Z�ݗy+\�\�#��\�\�u\�\0\0\0��\0PK\0\0\0\0\0!\0�W#��\0\0h\0\0\r\0\0\0xl/styles.xml��[k\�0\�\��B\�l\'Β`�,M\r�n\��^[NDu	��9�\�;�sq\�\�F�I\�\�\��\�EJz\�J��\�X�U���#�J]q�\��ק\"�bdUZ��ŷ��w�u�V[\���\�:��b\�-�\�\�\�S�\�FRK�!vg��?$�\�pB$\�\n���,�\"�ynvA�\�:�悻C\�\�H��҆�Hm�1-QML�Zsr\�Y_���4\�\�\�\�\0�\�\�%{)wFf���_G�\�W��敤11l\�}�p�\�Z9�J\�(\��>�g���\��\�~W�\�hOX\"L�\�B\�t��΢�d��;*�\�p�����Co��s[j,�@��GSo\�:\�xVr��7�\�8X\0q!\�Jc/\ny\n%ų\�8:\�@��\�\�1ݾ\�\�z�\�dp�t�t�M\�~\�\�ɔ��\��\Z�\��\�\����s\�yZq�ъ\nJ9O ��	��7\�[}\�nk�\ZYH�Pe\�O\�i\n��=�_x��ֳߌEm}\�\�@��\�{\�{ ß�\�\0�t��uÅ\�\���Z��$��\�_\�.=g?���մ\�\��1×�\'V�F\�\�]_�^��\�\��\�\�*�x�u�\ZF\��\����\�}\�p1\r\�#��d���\�b�,fa\��\Z<ox�W,O\�ͭ��\��=���\�2<X��.\�C\��x~L�0(Fa�\'t\ZL\'�$(�(^NƋ��HړW>!����⓹\�	�N�:Uhh�\"��/A�S%\�\�/\"�\r\0\0��\0PK\0\0\0\0\0!\06���\0\0\0\�\0\0\0\0\0\0xl/sharedStrings.xmlD�A\n\�0E��w���]�H�.�\0z�Ў6\�Ljf*��F�p�\�\��i�8�7f�,\�\ZR��@O�\�ew\�\��c\"��A�\�m7�YT\�[D��\�\�\r=WiB*\�#\�\�`~j�2��D��n\�����K3��22Sx\�x^�g88#N1Z�\�?\\\��/ty\�\0\0\0��\0PK\0\0\0\0\0!\0b4H\0\0t\0\0\0\0\0xl/calcChain.xmld\�\�N�0�Ὁ�М�SzN\�B\�\�4\�Hh!�����\Z�(߆���\�\��p���s\�\�X�\��|lƶ���>\�\�\�I�\�\�\�\rc�]|�C}{S6nh^:\�G�O���nY�g�S\��\�\�n�|\�+\�qnɯ�I�i��M��K4\�^�|\0\�e�\�^\�I�\�@j�~\�k\��\�5<lC6�|�\�x\��\���\�s6��\�^�\0 03�\�f3���\�`f03�\�f��Y�,`0�\�f������\����\0\0��\0PK\0\0\0\0\0!\0\Z\�m)=\0\0Y\0\0\0docProps/core.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\�N\�0E�H�C\�}\�AU��T\���(��\�Ik?d\��=Σ!�,Xz\�3wF.\�G\�D_`�ЪDY��\�\\�}�^v�x�\"\�\�\�\nJt�\�\��U�a\�\��\�@R�0S����`\�\�$uIp� \�\�J\�\�\�\�\�/\�t�%xʩ��\�f\"�\�ل4��\��ah@��gI���t6�\�\�)�?��\�w\�\�l\'�щ\�ضm\�\�}��?\�o\�\�\�~\�X�\�VPUpF�국��u�g�\�x\ru~\�\\\�w�\�sY�>�\0� d�}V^���\�U�t�\�\�2N�]zKn2�-߻����`CA�\��O\\�<�π�����\0\0��\0PK\0\0\0\0\0!\0��@�\0\0\0\0\0docProps/app.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��AO\�0�\�+\��|�NY�V�c�\n�î�\�\�}p&��c[�4j��LQ\�\�=\�mf\�\���\�͡uE�)\�\�+1���@oBm��ϛ����\��<V\�Y\�\�\�\�\�*���,\�-|�Ď(.�\�f�-\�˞�&��۴��i���`�-z��ey-�@\�k�/\�\�P�����״�\�\�/�cd`�nct\�\0�-�okRȡ�\��`\�)9ӭ\�쓥�.���jm�ᒍu.��_��Ї���V-:4R�\�;\�v)�W\�\�\�T��d�c�kc3\�.fJ�6�\��;��:N�r�8�핞\\�/�#\�|K�S��D���Oq�v\n8:.\�G�a�md\�T���-?\�M�\�\�0χj���5\�\n�4P��cr�\�r~��\�\�\�B��/\��\��\�Y��\�W�̔��\��\0\0��\0PK-\0\0\0\0\0\0!\0�,lok\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0�U0#�\0\0\0L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0_rels/.relsPK-\0\0\0\0\0\0!\0N\���\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0xl/workbook.xmlPK-\0\0\0\0\0\0!\0��\�\0\0?\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0xl/_rels/workbook.xml.relsPK-\0\0\0\0\0\0!\03\"��\0\06\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\06\0\0xl/worksheets/sheet1.xmlPK-\0\0\0\0\0\0!\0E�PKc\0\0\� \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0b\0\0xl/theme/theme1.xmlPK-\0\0\0\0\0\0!\0�W#��\0\0h\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0�\Z\0\0xl/styles.xmlPK-\0\0\0\0\0\0!\06���\0\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0xl/sharedStrings.xmlPK-\0\0\0\0\0\0!\0b4H\0\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0xl/calcChain.xmlPK-\0\0\0\0\0\0!\0\Z\�m)=\0\0Y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0docProps/core.xmlPK-\0\0\0\0\0\0!\0��@�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0K\"\0\0docProps/app.xmlPK\0\0\0\0\0\0�\0\0%\0\0\0\0','Zeszyt1.xlsx','xlsx');
/*!40000 ALTER TABLE `dokument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kwota`
--

DROP TABLE IF EXISTS `kwota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kwota` (
  `id` int NOT NULL AUTO_INCREMENT,
  `czy_gotowka` tinyint NOT NULL DEFAULT '0',
  `kwota` varchar(64) NOT NULL,
  `nazwa` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=411 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kwota`
--

LOCK TABLES `kwota` WRITE;
/*!40000 ALTER TABLE `kwota` DISABLE KEYS */;
INSERT INTO `kwota` VALUES (1,1,'1000','w kieszeni (Ala)'),(2,1,'20000','w skarpecie'),(3,0,'10000','konto Inteligo'),(4,0,'1000','konto Mbank'),(5,1,'445','test1'),(6,0,'433','test2'),(8,0,'543','test4'),(9,0,'70760.51','Etiam pretium iaculis justo.'),(10,1,'7799.1','vitae'),(11,0,'76019.81','at'),(12,1,'54407.02','mauris'),(13,0,'67918.78','aliquam augue'),(14,0,'25051.93','convallis eget'),(15,1,'20778.87','dictumst'),(16,0,'19349.41','vestibulum eget'),(17,1,'1885.05','ligula'),(18,1,'89237.43','accumsan'),(19,0,'61372.78','platea dictumst'),(20,1,'53989.18','massa'),(21,1,'18672.25','odio porttitor'),(22,1,'7621.51','vestibulum'),(23,1,'20386.07','integer ac'),(24,1,'41955.63','donec'),(25,0,'33075.11','praesent'),(26,0,'60229.43','libero quis'),(27,1,'72628.1','tellus in'),(28,1,'45817.28','faucibus orci'),(29,0,'82156.39','dictumst'),(30,0,'19209.22','orci luctus'),(31,1,'15402.64','aliquet'),(32,0,'58076.06','odio odio'),(33,1,'20254.21','nullam porttitor'),(34,1,'78974.24','augue'),(35,0,'21606.36','id sapien'),(36,1,'91064.64','vestibulum ac'),(37,1,'85565.08','ac consequat'),(38,0,'69225.11','velit'),(39,1,'60245.03','curae'),(40,1,'85996.36','quis'),(41,0,'33072.7','nulla'),(42,1,'59535.18','quisque porta'),(43,1,'42790.08','purus'),(44,0,'79344.91','nisi'),(45,0,'7635.18','id justo'),(46,0,'8278.95','aliquam quis'),(47,1,'23578.39','in faucibus'),(48,1,'94396.71','dictumst morbi'),(49,1,'21427.09','ac enim'),(50,0,'62048.47','pede morbi'),(51,0,'49460.86','morbi odio'),(52,0,'99212.51','sapien arcu'),(53,0,'60613.16','amet justo'),(54,1,'46283.17','platea dictumst'),(55,0,'94105.7','turpis'),(56,0,'91076.63','felis'),(57,0,'73769.94','quam pharetra'),(58,1,'17446.58','nam'),(59,0,'42379.05','sapien quis'),(60,0,'89354.97','tortor'),(61,1,'62221.75','felis'),(62,1,'45278.06','est donec'),(63,0,'60372.37','ligula nec'),(64,1,'75998.96','sem'),(65,1,'52951.16','justo morbi'),(66,0,'20786.45','quisque'),(67,1,'5778.65','mus'),(68,1,'63207.24','etiam pretium'),(69,1,'6410.24','nonummy'),(70,1,'30693.19','dui'),(71,0,'66148.5','nunc'),(72,0,'691.96','eget'),(73,0,'68775.55','adipiscing lorem'),(74,0,'38257.05','hac'),(75,1,'7091.42','at vulputate'),(76,0,'52553.26','nullam orci'),(77,0,'29602.12','sem fusce'),(78,1,'59381.15','nisi at'),(79,1,'75461.39','tincidunt in'),(80,0,'53974.65','quam'),(81,0,'33420.84','ullamcorper'),(82,1,'93739.49','at'),(83,0,'12558.82','primis in'),(84,1,'52177.06','risus'),(85,0,'37910.73','vivamus'),(86,0,'59288.56','lacus'),(87,1,'78549.17','justo maecenas'),(88,0,'60876.93','at vulputate'),(89,1,'91376.77','integer'),(90,1,'94545.29','odio'),(91,0,'44954.76','ipsum'),(92,1,'13833.04','dapibus dolor'),(93,1,'3319.96','gravida nisi'),(94,0,'62269.17','pellentesque'),(95,0,'57321.65','pede malesuada'),(96,1,'45252.8','sapien'),(97,0,'83815.33','risus semper'),(98,0,'14740.18','neque'),(99,1,'63503.64','etiam faucibus'),(100,0,'99585.07','convallis'),(101,1,'8684.82','a nibh'),(102,0,'98864.96','morbi ut'),(103,0,'81745.32','nisl nunc'),(104,0,'92271.19','nec'),(105,1,'96301.35','sapien a'),(106,1,'82514.13','faucibus'),(107,1,'4793.73','vel accumsan'),(108,1,'23987.88','vestibulum'),(109,0,'36777.26','iaculis diam'),(110,1,'7799.1','vitae'),(111,0,'76019.81','at'),(112,1,'54407.02','mauris'),(113,0,'67918.78','aliquam augue'),(114,0,'25051.93','convallis eget'),(115,1,'20778.87','dictumst'),(116,0,'19349.41','vestibulum eget'),(117,1,'1885.05','ligula'),(118,1,'89237.43','accumsan'),(119,0,'61372.78','platea dictumst'),(120,1,'53989.18','massa'),(121,1,'18672.25','odio porttitor'),(122,1,'7621.51','vestibulum'),(123,1,'20386.07','integer ac'),(124,1,'41955.63','donec'),(125,0,'33075.11','praesent'),(126,0,'60229.43','libero quis'),(127,1,'72628.1','tellus in'),(128,1,'45817.28','faucibus orci'),(129,0,'82156.39','dictumst'),(130,0,'19209.22','orci luctus'),(131,1,'15402.64','aliquet'),(132,0,'58076.06','odio odio'),(133,1,'20254.21','nullam porttitor'),(134,1,'78974.24','augue'),(135,0,'21606.36','id sapien'),(136,1,'91064.64','vestibulum ac'),(137,1,'85565.08','ac consequat'),(138,0,'69225.11','velit'),(139,1,'60245.03','curae'),(140,1,'85996.36','quis'),(141,0,'33072.7','nulla'),(142,1,'59535.18','quisque porta'),(143,1,'42790.08','purus'),(144,0,'79344.91','nisi'),(145,0,'7635.18','id justo'),(146,0,'8278.95','aliquam quis'),(147,1,'23578.39','in faucibus'),(148,1,'94396.71','dictumst morbi'),(149,1,'21427.09','ac enim'),(150,0,'62048.47','pede morbi'),(151,0,'49460.86','morbi odio'),(152,0,'99212.51','sapien arcu'),(153,0,'60613.16','amet justo'),(154,1,'46283.17','platea dictumst'),(155,0,'94105.7','turpis'),(156,0,'91076.63','felis'),(157,0,'73769.94','quam pharetra'),(158,1,'17446.58','nam'),(159,0,'42379.05','sapien quis'),(160,0,'89354.97','tortor'),(161,1,'62221.75','felis'),(162,1,'45278.06','est donec'),(163,0,'60372.37','ligula nec'),(164,1,'75998.96','sem'),(165,1,'52951.16','justo morbi'),(166,0,'20786.45','quisque'),(167,1,'5778.65','mus'),(168,1,'63207.24','etiam pretium'),(169,1,'6410.24','nonummy'),(170,1,'30693.19','dui'),(171,0,'66148.5','nunc'),(172,0,'691.96','eget'),(173,0,'68775.55','adipiscing lorem'),(174,0,'38257.05','hac'),(175,1,'7091.42','at vulputate'),(176,0,'52553.26','nullam orci'),(177,0,'29602.12','sem fusce'),(178,1,'59381.15','nisi at'),(179,1,'75461.39','tincidunt in'),(180,0,'53974.65','quam'),(181,0,'33420.84','ullamcorper'),(182,1,'93739.49','at'),(183,0,'12558.82','primis in'),(184,1,'52177.06','risus'),(185,0,'37910.73','vivamus'),(186,0,'59288.56','lacus'),(187,1,'78549.17','justo maecenas'),(188,0,'60876.93','at vulputate'),(189,1,'91376.77','integer'),(190,1,'94545.29','odio'),(191,0,'44954.76','ipsum'),(192,1,'13833.04','dapibus dolor'),(193,1,'3319.96','gravida nisi'),(194,0,'62269.17','pellentesque'),(195,0,'57321.65','pede malesuada'),(196,1,'45252.8','sapien'),(197,0,'83815.33','risus semper'),(198,0,'14740.18','neque'),(199,1,'63503.64','etiam faucibus'),(200,0,'99585.07','convallis'),(201,1,'8684.82','a nibh'),(202,0,'98864.96','morbi ut'),(203,0,'81745.32','nisl nunc'),(204,0,'92271.19','nec'),(205,1,'96301.35','sapien a'),(206,1,'82514.13','faucibus'),(207,1,'4793.73','vel accumsan'),(208,1,'23987.88','vestibulum'),(209,0,'36777.26','iaculis diam'),(210,1,'7799.1','vitae'),(211,0,'76019.81','at'),(212,1,'54407.02','mauris'),(213,0,'67918.78','aliquam augue'),(214,0,'25051.93','convallis eget'),(215,1,'20778.87','dictumst'),(216,0,'19349.41','vestibulum eget'),(217,1,'1885.05','ligula'),(218,1,'89237.43','accumsan'),(219,0,'61372.78','platea dictumst'),(220,1,'53989.18','massa'),(221,1,'18672.25','odio porttitor'),(222,1,'7621.51','vestibulum'),(223,1,'20386.07','integer ac'),(224,1,'41955.63','donec'),(225,0,'33075.11','praesent'),(226,0,'60229.43','libero quis'),(227,1,'72628.1','tellus in'),(228,1,'45817.28','faucibus orci'),(229,0,'82156.39','dictumst'),(230,0,'19209.22','orci luctus'),(231,1,'15402.64','aliquet'),(232,0,'58076.06','odio odio'),(233,1,'20254.21','nullam porttitor'),(234,1,'78974.24','augue'),(235,0,'21606.36','id sapien'),(236,1,'91064.64','vestibulum ac'),(237,1,'85565.08','ac consequat'),(238,0,'69225.11','velit'),(239,1,'60245.03','curae'),(240,1,'85996.36','quis'),(241,0,'33072.7','nulla'),(242,1,'59535.18','quisque porta'),(243,1,'42790.08','purus'),(244,0,'79344.91','nisi'),(245,0,'7635.18','id justo'),(246,0,'8278.95','aliquam quis'),(247,1,'23578.39','in faucibus'),(248,1,'94396.71','dictumst morbi'),(249,1,'21427.09','ac enim'),(250,0,'62048.47','pede morbi'),(251,0,'49460.86','morbi odio'),(252,0,'99212.51','sapien arcu'),(253,0,'60613.16','amet justo'),(254,1,'46283.17','platea dictumst'),(255,0,'94105.7','turpis'),(256,0,'91076.63','felis'),(257,0,'73769.94','quam pharetra'),(258,1,'17446.58','nam'),(259,0,'42379.05','sapien quis'),(260,0,'89354.97','tortor'),(261,1,'62221.75','felis'),(262,1,'45278.06','est donec'),(263,0,'60372.37','ligula nec'),(264,1,'75998.96','sem'),(265,1,'52951.16','justo morbi'),(266,0,'20786.45','quisque'),(267,1,'5778.65','mus'),(268,1,'63207.24','etiam pretium'),(269,1,'6410.24','nonummy'),(270,1,'30693.19','dui'),(271,0,'66148.5','nunc'),(272,0,'691.96','eget'),(273,0,'68775.55','adipiscing lorem'),(274,0,'38257.05','hac'),(275,1,'7091.42','at vulputate'),(276,0,'52553.26','nullam orci'),(277,0,'29602.12','sem fusce'),(278,1,'59381.15','nisi at'),(279,1,'75461.39','tincidunt in'),(280,0,'53974.65','quam'),(281,0,'33420.84','ullamcorper'),(282,1,'93739.49','at'),(283,0,'12558.82','primis in'),(284,1,'52177.06','risus'),(285,0,'37910.73','vivamus'),(286,0,'59288.56','lacus'),(287,1,'78549.17','justo maecenas'),(288,0,'60876.93','at vulputate'),(289,1,'91376.77','integer'),(290,1,'94545.29','odio'),(291,0,'44954.76','ipsum'),(292,1,'13833.04','dapibus dolor'),(293,1,'3319.96','gravida nisi'),(294,0,'62269.17','pellentesque'),(295,0,'57321.65','pede malesuada'),(296,1,'45252.8','sapien'),(297,0,'83815.33','risus semper'),(298,0,'14740.18','neque'),(299,1,'63503.64','etiam faucibus'),(300,0,'99585.07','convallis'),(301,1,'8684.82','a nibh'),(302,0,'98864.96','morbi ut'),(303,0,'81745.32','nisl nunc'),(304,0,'92271.19','nec'),(305,1,'96301.35','sapien a'),(306,1,'82514.13','faucibus'),(307,1,'4793.73','vel accumsan'),(308,1,'23987.88','vestibulum'),(309,0,'36777.26','iaculis diam'),(310,1,'7799.1','vitae'),(311,0,'76019.81','at'),(312,1,'54407.02','mauris'),(313,0,'67918.78','aliquam augue'),(314,0,'25051.93','convallis eget'),(315,1,'20778.87','dictumst'),(316,0,'19349.41','vestibulum eget'),(317,1,'1885.05','ligula'),(318,1,'89237.43','accumsan'),(319,0,'61372.78','platea dictumst'),(320,1,'53989.18','massa'),(321,1,'18672.25','odio porttitor'),(322,1,'7621.51','vestibulum'),(323,1,'20386.07','integer ac'),(324,1,'41955.63','donec'),(325,0,'33075.11','praesent'),(326,0,'60229.43','libero quis'),(327,1,'72628.1','tellus in'),(328,1,'45817.28','faucibus orci'),(329,0,'82156.39','dictumst'),(330,0,'19209.22','orci luctus'),(331,1,'15402.64','aliquet'),(332,0,'58076.06','odio odio'),(333,1,'20254.21','nullam porttitor'),(334,1,'78974.24','augue'),(335,0,'21606.36','id sapien'),(336,1,'91064.64','vestibulum ac'),(337,1,'85565.08','ac consequat'),(338,0,'69225.11','velit'),(339,1,'60245.03','curae'),(340,1,'85996.36','quis'),(341,0,'33072.7','nulla'),(342,1,'59535.18','quisque porta'),(343,1,'42790.08','purus'),(344,0,'79344.91','nisi'),(345,0,'7635.18','id justo'),(346,0,'8278.95','aliquam quis'),(347,1,'23578.39','in faucibus'),(348,1,'94396.71','dictumst morbi'),(349,1,'21427.09','ac enim'),(350,0,'62048.47','pede morbi'),(351,0,'49460.86','morbi odio'),(352,0,'99212.51','sapien arcu'),(353,0,'60613.16','amet justo'),(354,1,'46283.17','platea dictumst'),(355,0,'94105.7','turpis'),(356,0,'91076.63','felis'),(357,0,'73769.94','quam pharetra'),(358,1,'17446.58','nam'),(359,0,'42379.05','sapien quis'),(360,0,'89354.97','tortor'),(361,1,'62221.75','felis'),(362,1,'45278.06','est donec'),(363,0,'60372.37','ligula nec'),(364,1,'75998.96','sem'),(365,1,'52951.16','justo morbi'),(366,0,'20786.45','quisque'),(367,1,'5778.65','mus'),(368,1,'63207.24','etiam pretium'),(369,1,'6410.24','nonummy'),(370,1,'30693.19','dui'),(371,0,'66148.5','nunc'),(372,0,'691.96','eget'),(373,0,'68775.55','adipiscing lorem'),(374,0,'38257.05','hac'),(375,1,'7091.42','at vulputate'),(376,0,'52553.26','nullam orci'),(377,0,'29602.12','sem fusce'),(378,1,'59381.15','nisi at'),(379,1,'75461.39','tincidunt in'),(380,0,'53974.65','quam'),(381,0,'33420.84','ullamcorper'),(382,1,'93739.49','at'),(383,0,'12558.82','primis in'),(384,1,'52177.06','risus'),(385,0,'37910.73','vivamus'),(386,0,'59288.56','lacus'),(387,1,'78549.17','justo maecenas'),(388,0,'60876.93','at vulputate'),(389,1,'91376.77','integer'),(390,1,'94545.29','odio'),(391,0,'44954.76','ipsum'),(392,1,'13833.04','dapibus dolor'),(393,1,'3319.96','gravida nisi'),(394,0,'62269.17','pellentesque'),(395,0,'57321.65','pede malesuada'),(396,1,'45252.8','sapien'),(397,0,'83815.33','risus semper'),(398,0,'14740.18','neque'),(399,1,'63503.64','etiam faucibus'),(400,0,'99585.07','convallis'),(401,1,'8684.82','a nibh'),(402,0,'98864.96','morbi ut'),(403,0,'81745.32','nisl nunc'),(404,0,'92271.19','nec'),(405,1,'96301.35','sapien a'),(406,1,'82514.13','faucibus'),(407,1,'4793.73','vel accumsan'),(408,1,'23987.88','vestibulum'),(409,0,'36777.26','iaculis diam');
/*!40000 ALTER TABLE `kwota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `przypomnienie`
--

DROP TABLE IF EXISTS `przypomnienie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `przypomnienie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `odnosnie_wydatku_id` int NOT NULL,
  `tresc` varchar(4096) NOT NULL,
  `tytul` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `przypomnienie_wydatek__fk_idx` (`odnosnie_wydatku_id`),
  CONSTRAINT `przypomnienie_wydatek__fk` FOREIGN KEY (`odnosnie_wydatku_id`) REFERENCES `wydatek` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przypomnienie`
--

LOCK TABLES `przypomnienie` WRITE;
/*!40000 ALTER TABLE `przypomnienie` DISABLE KEYS */;
INSERT INTO `przypomnienie` VALUES (2,3,'Dzisiaj jest do wykonania wydatek stały: wydatek 1 (100, 2022-01-24)','Wydatek stały: wydatek 1'),(3,74,'Dzisiaj jest do wykonania wydatek stały: nulla (2514.7 zł, 2022-01-24)','Wydatek stały: nulla'),(4,99,'Dzisiaj jest do wykonania wydatek stały: congue (1076.34 zł, 2022-01-24)','Wydatek stały: congue'),(5,106,'Dzisiaj jest do wykonania wydatek stały: duis (8305.18 zł, 2022-01-24)','Wydatek stały: duis'),(6,137,'Dzisiaj jest do wykonania wydatek stały: imperdiet (8614.03 zł, 2022-01-24)','Wydatek stały: imperdiet');
/*!40000 ALTER TABLE `przypomnienie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzytkownik`
--

DROP TABLE IF EXISTS `uzytkownik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uzytkownik` (
  `id` int NOT NULL AUTO_INCREMENT,
  `haslo` varchar(256) NOT NULL,
  `login` varchar(128) NOT NULL,
  `imie` varchar(64) NOT NULL,
  `nazwisko` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzytkownik`
--

LOCK TABLES `uzytkownik` WRITE;
/*!40000 ALTER TABLE `uzytkownik` DISABLE KEYS */;
INSERT INTO `uzytkownik` VALUES (1,'ala','ala','Ala','Makota'),(2,'ola','ola','Ola','Makota'),(3,'robert','robert','Robert','Makota');
/*!40000 ALTER TABLE `uzytkownik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wydatek`
--

DROP TABLE IF EXISTS `wydatek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wydatek` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pobrano_z_kwoty_id` int NOT NULL,
  `wartosc` varchar(64) NOT NULL,
  `na_co` varchar(256) NOT NULL,
  `komentarz` varchar(1024) DEFAULT NULL,
  `data` date NOT NULL,
  `czy_staly` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wydatek_kwota__fk_idx` (`pobrano_z_kwoty_id`),
  CONSTRAINT `wydatek_kwota__fk` FOREIGN KEY (`pobrano_z_kwoty_id`) REFERENCES `kwota` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wydatek`
--

LOCK TABLES `wydatek` WRITE;
/*!40000 ALTER TABLE `wydatek` DISABLE KEYS */;
INSERT INTO `wydatek` VALUES (2,3,'500','na podatki','podatki','2022-01-06',1),(3,2,'100','wydatek 1','wydatek 1','2022-01-24',1),(5,41,'2058.66','quisque porta','massa','2021-09-29',1),(6,82,'2461.74','ante vestibulum',NULL,'2021-08-11',1),(7,47,'9147.1','ipsum primis','proin leo','2020-04-07',1),(8,59,'4449.29','a feugiat','potenti nullam porttitor','2021-02-20',0),(9,24,'9359.24','turpis adipiscing',NULL,'2020-06-01',0),(10,2,'5111.0','molestie hendrerit',NULL,'2021-09-14',1),(11,94,'550.78','volutpat quam',NULL,'2021-06-03',0),(12,92,'2440.1','odio in',NULL,'2021-08-04',0),(14,64,'4101.01','accumsan felis',NULL,'2021-08-06',0),(15,87,'2874.4','augue',NULL,'2020-10-04',0),(16,89,'6546.83','in hac',NULL,'2021-09-09',1),(17,45,'964.54','curae mauris',NULL,'2021-05-25',1),(18,60,'3789.2','nam tristique',NULL,'2021-12-18',0),(19,75,'9531.31','sit amet',NULL,'2020-07-01',1),(20,44,'9043.75','rutrum ac',NULL,'2021-05-14',1),(21,1,'8992.15','neque sapien',NULL,'2021-10-08',0),(23,41,'2058.66','quisque porta','massa','2021-09-29',1),(24,82,'2461.74','ante vestibulum',NULL,'2021-08-11',1),(25,47,'9147.1','ipsum primis','proin leo','2020-04-07',1),(26,59,'4449.29','a feugiat','potenti nullam porttitor','2021-02-20',0),(27,24,'9359.24','turpis adipiscing',NULL,'2020-06-01',0),(28,2,'5111.0','molestie hendrerit',NULL,'2021-09-14',1),(29,94,'550.78','volutpat quam',NULL,'2021-06-03',0),(30,92,'2440.1','odio in',NULL,'2021-08-04',0),(31,77,'6499.76','odio in',NULL,'2020-09-17',1),(32,64,'4101.01','accumsan felis',NULL,'2021-08-06',0),(33,87,'2874.4','augue',NULL,'2020-10-04',0),(34,89,'6546.83','in hac',NULL,'2021-09-09',1),(35,45,'964.54','curae mauris',NULL,'2021-05-25',1),(36,60,'3789.2','nam tristique',NULL,'2021-12-18',0),(37,75,'9531.31','sit amet',NULL,'2020-07-01',1),(38,44,'9043.75','rutrum ac',NULL,'2021-05-14',1),(39,1,'8992.15','neque sapien',NULL,'2021-10-08',0),(41,41,'2058.66','quisque porta','massa','2021-09-29',1),(42,82,'2461.74','ante vestibulum',NULL,'2021-08-11',1),(43,47,'9147.1','ipsum primis','proin leo','2020-04-07',1),(44,59,'4449.29','a feugiat','potenti nullam porttitor','2021-02-20',0),(45,24,'9359.24','turpis adipiscing',NULL,'2020-06-01',0),(46,2,'5111.0','molestie hendrerit',NULL,'2021-09-14',1),(47,94,'550.78','volutpat quam',NULL,'2021-06-03',0),(48,92,'2440.1','odio in',NULL,'2021-08-04',0),(49,77,'6499.76','odio in',NULL,'2020-09-17',1),(50,64,'4101.01','accumsan felis',NULL,'2021-08-06',0),(51,87,'2874.4','augue',NULL,'2020-10-04',0),(52,89,'6546.83','in hac',NULL,'2021-09-09',1),(53,45,'964.54','curae mauris',NULL,'2021-05-25',1),(54,60,'3789.2','nam tristique',NULL,'2021-12-18',0),(55,75,'9531.31','sit amet',NULL,'2020-07-01',1),(56,44,'9043.75','rutrum ac',NULL,'2021-05-14',1),(57,1,'8992.15','neque sapien',NULL,'2021-10-08',0),(58,85,'4051.55','nisl',NULL,'2021-05-13',1),(59,51,'294.68','justo lacinia',NULL,'2021-05-20',1),(60,34,'4839.45','quis',NULL,'2021-01-07',0),(61,45,'8635.29','purus aliquet','risus dapibus augue vel accumsan tellus nisi eu','2020-08-06',1),(62,36,'1797.22','diam cras',NULL,'2020-02-10',0),(63,23,'5273.26','dolor',NULL,'2021-10-25',0),(64,87,'9291.8','placerat praesent','natoque penatibus et magnis dis','2021-06-29',0),(65,73,'2997.9','pulvinar','lectus','2020-01-18',0),(66,22,'8317.24','dolor',NULL,'2021-02-28',1),(67,71,'2298.74','semper interdum',NULL,'2020-07-03',0),(68,70,'2989.91','hac habitasse',NULL,'2021-11-09',0),(69,88,'889.0','ante',NULL,'2020-04-23',1),(70,25,'8730.55','diam',NULL,'2021-05-30',0),(71,16,'801.16','mauris',NULL,'2020-11-08',0),(72,12,'7874.3','mauris','in hac habitasse platea dictumst morbi vestibulum velit','2020-04-01',1),(73,67,'7288.82','consequat metus',NULL,'2020-09-16',1),(74,2,'2514.7','nulla',NULL,'2021-08-24',1),(75,15,'6993.93','eget nunc','luctus et ultrices posuere cubilia curae mauris viverra diam vitae','2021-07-26',0),(76,66,'4173.47','convallis',NULL,'2020-12-18',1),(77,5,'701.82','tincidunt eget',NULL,'2021-01-05',0),(78,81,'3582.21','tempor',NULL,'2021-03-07',0),(79,58,'8271.91','sit',NULL,'2021-01-15',0),(80,68,'102.13','turpis enim',NULL,'2021-09-26',1),(81,51,'1740.35','eleifend luctus',NULL,'2021-11-17',0),(82,95,'4660.29','nisl',NULL,'2020-12-20',1),(83,49,'9281.92','sapien a',NULL,'2021-09-30',0),(84,48,'1824.66','aenean',NULL,'2020-09-21',0),(85,88,'9076.56','dolor',NULL,'2021-08-19',0),(86,24,'649.39','arcu sed',NULL,'2021-09-26',1),(87,8,'7922.39','sagittis nam',NULL,'2020-08-09',1),(88,9,'3257.11','sem duis',NULL,'2021-05-05',0),(89,2,'5869.82','vestibulum','vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem','2021-09-25',1),(90,92,'79.36','integer tincidunt',NULL,'2020-02-14',0),(91,58,'4103.69','donec ut',NULL,'2020-06-04',0),(92,77,'9671.84','accumsan',NULL,'2020-03-21',0),(93,52,'9475.26','sit',NULL,'2021-08-20',0),(94,61,'3793.8','vestibulum proin',NULL,'2020-05-12',1),(95,47,'9265.71','placerat ante',NULL,'2021-10-06',1),(96,77,'5596.07','posuere cubilia',NULL,'2021-09-14',1),(97,95,'3904.95','tincidunt ante',NULL,'2021-03-11',0),(98,74,'6730.94','luctus',NULL,'2020-09-25',0),(99,85,'1076.34','congue',NULL,'2021-04-24',1),(100,98,'9170.6','eros vestibulum',NULL,'2021-02-26',0),(101,94,'857.71','lectus in',NULL,'2020-06-30',1),(102,34,'9222.25','mi nulla',NULL,'2022-01-02',1),(103,80,'3252.05','non',NULL,'2021-01-21',1),(104,87,'3966.96','sapien arcu',NULL,'2020-11-06',0),(105,26,'7856.97','arcu sed',NULL,'2021-02-12',1),(106,10,'8305.18','duis',NULL,'2020-08-24',1),(107,62,'1688.46','nibh fusce',NULL,'2021-05-05',1),(108,27,'3692.86','sociis',NULL,'2020-04-19',0),(109,69,'4047.22','faucibus','pellentesque quisque porta volutpat erat quisque erat','2020-04-21',1),(110,26,'1764.03','lacinia erat','ligula suspendisse ornare consequat lectus in','2021-10-29',1),(111,61,'2384.48','lacus curabitur',NULL,'2020-06-22',0),(112,39,'132.59','luctus rutrum','dis parturient montes nascetur ridiculus mus etiam vel augue','2020-02-16',1),(113,40,'7985.74','ut blandit',NULL,'2022-01-14',1),(114,77,'3367.25','odio',NULL,'2020-05-21',0),(115,22,'1015.79','odio curabitur',NULL,'2021-05-30',0),(116,73,'638.17','donec',NULL,'2021-09-27',1),(117,81,'4954.13','nisl nunc',NULL,'2021-11-01',1),(118,3,'7000.53','vel','volutpat in congue etiam','2021-08-10',0),(119,5,'9227.55','cubilia',NULL,'2021-09-30',1),(120,70,'5498.23','hac',NULL,'2021-11-30',0),(121,55,'1357.56','vehicula',NULL,'2021-11-18',1),(122,13,'2050.43','ut rhoncus',NULL,'2021-12-24',0),(123,83,'4602.63','at','mattis','2021-05-18',1),(124,8,'6823.0','vel',NULL,'2020-06-18',0),(125,56,'636.87','in libero','cubilia curae nulla dapibus dolor vel est donec','2020-03-29',0),(126,77,'5830.39','pede',NULL,'2021-12-05',1),(127,76,'1296.6','amet consectetuer',NULL,'2021-05-11',1),(128,34,'3986.4','posuere cubilia',NULL,'2021-10-31',0),(129,8,'9365.2','dolor quis',NULL,'2020-11-28',1),(130,6,'9079.39','sodales',NULL,'2020-02-10',1),(131,66,'9226.33','dui vel',NULL,'2021-11-06',0),(132,39,'7822.74','ipsum',NULL,'2020-09-02',0),(133,86,'9091.57','ultrices',NULL,'2020-06-13',1),(134,74,'34.16','ut',NULL,'2021-07-28',1),(135,24,'9307.13','non velit',NULL,'2020-10-14',0),(136,99,'591.39','orci luctus','auctor sed tristique in tempus','2021-11-04',1),(137,34,'8614.03','imperdiet',NULL,'2020-11-24',1),(138,39,'7453.67','cras pellentesque',NULL,'2020-02-08',1),(139,52,'6010.5','quam pharetra',NULL,'2020-02-25',0),(140,137,'555','dd','sss','2020-11-02',0),(141,409,'33','ededed','wdwd','2022-01-22',0);
/*!40000 ALTER TABLE `wydatek` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-24 22:19:20
