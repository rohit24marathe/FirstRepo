/*
SQLyog Community v8.53 
MySQL - 5.1.22-rc-community : Database - rsm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rsm` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `rsm`;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`id`,`name`,`designation`,`dob`,`username`,`password`,`role`) values (1,'rohit','ceo','22-12-1987','rohit','xyz',1),(2,'thomas','Sales Executive','27-05-1959','thomas','abc',2),(3,'anant','Sales Executive','27-05-1959','anant','pqr',2);

/*Table structure for table `issue_status` */

DROP TABLE IF EXISTS `issue_status`;

CREATE TABLE `issue_status` (
  `id` int(10) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `issue_status` */

insert  into `issue_status`(`id`,`status`) values (1,'new'),(2,'open'),(3,'closed');

/*Table structure for table `log_action` */

DROP TABLE IF EXISTS `log_action`;

CREATE TABLE `log_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timings` varchar(20) DEFAULT NULL,
  `tablename` varchar(20) DEFAULT NULL,
  `actions` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

/*Data for the table `log_action` */

insert  into `log_action`(`id`,`timings`,`tablename`,`actions`) values (1,'2016-11-07 12:02:33','employee','Insert'),(2,'2016-11-07 12:03:56','employee','Delete'),(3,'2016-11-07 12:04:40','employee','Insert'),(4,'2016-11-07 12:08:22','employee','Update'),(5,'2016-11-07 12:19:20','employee','Update'),(6,'2016-11-07 12:32:36','employee','Delete'),(7,'2016-11-07 12:33:48','employee','Insert'),(8,'2016-11-07 12:43:00','employee','Update'),(9,'2016-11-07 12:50:50','employee','Update'),(10,'2016-11-07 12:51:05','employee','Update'),(11,'2016-11-07 12:58:28','employee','Insert'),(12,'2016-11-07 13:33:09','employee','Update'),(13,'2016-11-07 13:45:00','employee','Update'),(14,'2016-11-07 13:52:39','employee','Update'),(15,'2016-11-07 13:52:54','employee','Update'),(16,'2016-11-07 13:53:02','employee','Update'),(17,'2016-11-07 13:55:24','employee','Insert'),(18,'2016-11-07 13:55:30','employee','Delete'),(19,'2016-11-07 13:55:41','employee','Delete'),(20,'2016-11-07 13:56:46','employee','Delete'),(21,'2016-11-07 13:57:10','employee','Insert'),(22,'2016-11-07 13:57:24','employee','Update'),(23,'2016-11-07 13:57:32','employee','Update'),(24,'2016-11-07 13:57:41','employee','Update'),(25,'2016-11-08 12:13:50','employee','Update'),(26,'2016-11-08 12:24:07','employee','Update'),(27,'2016-11-08 12:32:29','employee','Update'),(28,'2016-11-09 17:58:40','employee','Insert'),(29,'2016-11-10 14:01:45','employee','Update'),(30,'2016-11-10 14:01:55','employee','Update'),(31,'2016-11-11 13:27:26','employee','Update'),(32,'2016-11-11 15:52:19','employee','Update'),(33,'2016-11-11 15:55:36','employee','Update'),(34,'2016-11-11 15:57:01','employee','Update'),(35,'2016-11-11 16:18:43','employee','Update'),(36,'2016-11-11 18:24:43','employee','Update'),(37,'2016-11-12 14:02:12','employee','Update'),(38,'2016-11-14 13:31:51','employee','Update'),(39,'2016-11-14 15:49:42','employee','Update'),(40,'2016-11-14 15:57:12','employee','Update'),(41,'2016-11-14 15:59:33','employee','Update'),(42,'2016-11-14 16:36:46','employee','Update'),(43,'2016-11-14 16:38:02','employee','Update'),(44,'2016-11-14 17:15:51','employee','Update'),(45,'2016-11-14 17:17:39','employee','Update'),(46,'2016-11-14 17:19:23','employee','Update'),(47,'2016-11-14 17:21:57','employee','Update'),(48,'2016-11-14 17:38:18','employee','Update'),(49,'2016-11-14 18:47:10','employee','Update'),(50,'2016-11-14 18:49:40','employee','Update'),(51,'2016-11-14 18:52:08','employee','Update'),(52,'2016-11-14 18:53:04','employee','Update'),(53,'2016-11-14 18:59:27','employee','Update'),(54,'2016-11-14 18:59:57','employee','Update'),(55,'2016-11-14 19:01:20','employee','Update'),(56,'2016-11-14 19:11:53','employee','Update'),(57,'2016-11-14 19:30:49','employee','Update'),(58,'2016-11-14 20:49:50','employee','Update'),(59,'2016-11-14 21:25:08','employee','Update'),(60,'2016-11-14 21:30:28','employee','Update'),(61,'2016-11-14 21:40:25','employee','Delete'),(62,'2016-11-15 09:10:39','employee','Update'),(63,'2016-11-15 09:12:44','employee','Update'),(64,'2016-11-15 09:43:11','employee','Update'),(65,'2016-11-15 09:46:29','employee','Update'),(66,'2016-11-15 09:47:44','employee','Delete'),(67,'2016-11-15 09:53:57','employee','Update'),(68,'2016-11-15 09:54:20','employee','Update'),(69,'2016-11-15 10:08:58','employee','Update'),(70,'2016-11-15 10:10:19','employee','Update'),(71,'2016-11-15 10:11:25','employee','Update'),(72,'2016-11-15 10:20:04','employee','Update'),(73,'2016-11-15 10:46:30','employee','Update'),(74,'2016-11-15 10:52:24','employee','Update'),(75,'2016-11-15 10:58:31','employee','Update'),(76,'2016-11-15 11:12:27','employee','Update'),(77,'2016-11-15 11:15:04','employee','Update'),(78,'2016-11-15 11:51:34','employee','Update');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `image` blob,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`username`,`password`,`image`,`role`) values (1,'rohit','xyz','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0€\0\0\0€\0\0\0Ã>aË\0\0 \0IDATxœìu¼•ÅöÿßÏóìŞûtNĞİ- ( (X¨XØ×îºê½zíN0@ÔkØ€(HI7‡:İ±ûÉùı±H‡‚ÜßW?¯¯ÃkïgÏ¬gfÍÌš5ŸµşÆ_\ZÒÑ*ø«¯¾êøĞCİæq{tİ468®¨eYµy¹¹+\'NüxıÑª÷ošÜrë-/7ËI¾)=3êòJ‚¡õ\rV¬Z‰¨ÆOÙMrß˜4ñã¯VıããŠ³ÏüÇ#ÿK¡	!\Z„°*…0+DÄ¿UÌšñ…¸è‚‘¢OïŞŸ_rÉ%ùÇZÖ¿2”£Uğ&‰ëæ®\\ßuéÊe­Û´Ì\'9%4\ra˜4oÙœsÎ>\rËÒÚ}şå7§^sİõÓ~3§öhÉò7ö£¦\0¿l)1ÎïÖú×e+×9?øì»Üõ¼-Z4%-;5D&½ôG6¢©ßNû©ûM§\rùğÇÅËÌ£%ÏßØ7š\0ôÊNªÏs-Íòº®_»±òíI“[æå6ñ´ëÜ3\ZE:=ºt`Î¬Yy«ŠôÍ…Es¦<coUX°½\\ôÎÏ)¦Q‘çZâ„‚ñ¿îŸ•îíÒ«;F8Œl³‘—Ä§Óî?jP¿Ÿ®^·ıhÊô7vÇQU\0€ÛÊÄ‚íåÑy™¡»¼!/#mË{“8±}Û–ÚbDUâ½nœ’©L›ûkû[Fùá–G[®¿ÃQW€X°­LÌßVfk™½Á´9³ÿNŸNíZÓ®sô¨J~V*%¥eM¶úu±bÅŠŸş,¹şÆ1Àg¸<¿IÑ4+C,ÿu†f¥(Y÷³X1ëSqîÈÓ\Zî¿øÜ¦ÇZÆ¿\näcQ©ätUß¶)W÷hÉµ7ÜCƒ?@RZ:II‰èÕ)¾^¶_x,äú+â˜(€HËiæ:wœv<q5å<óì+¸““‘;Ú6£*:÷îƒÜÇB¶¿\Z‰TU×ôm‡Í&óÈ9ƒ™ûıj*«Ql6ÒSSdÑÆtzşöş	øÓ`Ò§ŸùJ\n6ôïİ4‹@T§C^&-\\2‹—¯Áîpàp8eÉŒD³şlÙşŠøÓ`Ó–-½›ØŒ¦írÒĞLI‚&‰>\0`ápÔT„%şlÙşŠøÓ`Ù²å£[\'y%¯Óe	„\0I–±La™ÄzİÒì²¬şÙ²ıñ§*À7ß}—·bÑ‚‘}Z4A±®6-“„xÉ		è†›tÓfXÖŸæ£ø+ÃögVöÅW__×5Á–t|Û|\"ša¡	™ÔÔ,ÓBªë²¦üyNª¿2ş´àÇ~L›óÓÌËÎìŞE’€$I„¢\ZAÙFfF\n†¡ 	aÙmÊß6ÀŸ€?M^ymÂÃn5=°mS\"ºB`—eÊjÄ5É!5%S7¡°F–leü)\nğÔO^ôı?\\R§Ö$z¾T„T2òó‘˜–…,KØì6YÕ´câ£ø«á¨7ò§Ÿ~ÚvÂ›om‘ŸGïüôØ‡B Iº®³¼&BŞ=¦e™(Š‚Çí’N§ıhËö7²Ì3Û1vìØW[µn‘Ú6=‘>ùÀã°“ês³¦¸3;—Î=zb³Ûp;$ÄÇ‘”˜ ;œnÏÑ”íoÄpTw_}9ùR}ğ?.Å×¯ŒÇ!Ãª-ÅÕ¨ô‡˜¹©_û¼úÊxœ’Àˆ¦ÅÆÍ[IA´:š²ıêVË¦(sæImjjëøzÊT(ÖË^Š]	+æ¯ÛL§v­QÃaŠKË)*«¦²ÎORrÕ¡H÷ôŒìÜën¼iıO3gÔM9ÿÆQÀ£>j:tè¬Q#‡‹ï¿CLûn¢¨­Ü Ìh©f¥ĞÃÅâÚ«.µåk…µBèåB¨¥±¿f¥h¨\\/^xæÑ¹Sû¢‘gŸ;úX¿ÏÿU•À>ü¸ã‚ù3_Ğ¿g¯Ş=ºÚò[6ÓÂˆF°,İagùŠ5l/,æ¬3‡£F\"1a$	\Z=„ŠMAñùX·j-÷?ğ$Û\n+\'2ø®g}6x4dş«âˆ+À\'“>m[°aÙÔ+.Õ43\'UÑ4}÷J%	UÓp¹\\ÓB°ŸÓãFÁu7ş“%Ë6|üŸİsÉÈQçıM?B8¢\nğå—_f­\\º`Ú5W]Ğ93=5\ZİÅR¬j!ìğB`w8@‘¹úÚ;ØTP2nîüy7I¹ÿÊ8¢ÛÀí[Ö½èü33ÒwNëûƒâ€¯È2§—Ç„@‚ñ¯>CR¢û†fÍš™ñãG-®ñ¯„#ÖˆŸ|üşiyYñßô9®j(ò»Kv8Hn\'‘ú\0Å¥åøa2ÓSh’›v;şš:.¿âF\"†mü]wŞqãĞ¡Cÿ>3ø8\"\nğğ#öÒÂÕŸşç¾ÛóeÓBVd»-ªb	qH•H€#ÎGqa	ï}ğ9ß}7•²Â-3ŠË—B§n=¸ë¶ké=`Áúr.¾äzÂªôÚ?L¿~Ï²|êiçôï§Ÿ\Z‰Ït¹ÜZ¯^½şûì³Ï.:ïú\rÈğğÃtdù~K½xÇ-W¥§f¤£ Y³féi)ÈÒÁ»_	qLıîGÎ»ğj~õ-Í|tÌ6™2ëÖòî\'Óp8ôÔŸa\'ŸÈä¯¾îéõ%jåååsÆMÊÊÊ:wİšã†ê}÷EŒìÚ¼iv‰?;oèÉ§l_¹bÅê?ò¾Â™g9Ğår=•y•Ïë=Şí‹£c‡ÅÅEG«Ê#‚ß¥\0?şD·êêªñÂ=~ÆğŞzã•Îô´TÖ­İ@DÓ¸ôÊ[xçÃ/IKK¢kÏ®šìºqÆÇñİ7?0zôUtJ­ãø>|dYF’dœ…f™.2<Ş|\Z6‡O:‰û÷`â¤/Ÿ~Úi›N>ùäğ×_3±eó¬{yèÎ¼ágœJ‹¦¹tíÕ!\'çúø£OFvèÔ%°qãÆ¿·±ö‡\'xâøŸfş0ıî»®íuÇ­×´Ü¯[/›0.Z»aó ‹/½lÅ‚_~)?Òu)öğÒK/w}ç­7¿¿õ¦+Ò/¾àldoD\Z0|öÙ7<şôK¬İP@ÿ~¸bôé\\ş‹QûŞº®x¿.^ÎğçÑ;7D«&¢šØK2	p9$\Z‚\ZÓWKLúò3;~\0ëV.ç‹Ï¿\rÎ_´,pİÕg>rh:¦®apÆù(+-ãüÑ×[Z·<î­·gÿÆÚn¾å¶kí„^{~ìXPëÑÃ!ªK‹X¼t<ûzÉĞSFxşÙg¶É:k˜6mšû¿ÿ}óó»ï¼ºõù£/bîÜy¬Z¶Ÿ×C¼ÏG«–Í˜öıOlÙº“÷ãŸwİ„Ğô}Zûp8íÔÕû¹âªÛH›éØÔKTg¯ÎWd¨	\n¶Všä§Û‘s–•rîY§’Ù$“œÌtÇˆáCâúôïƒPU–-_Íò«iÛ¾\r¦abª\Z‰éäeeHŞú°ıè^Ş]°i»õÚm7tëØAjğ×_yÆğ²¡j$jª«iš“	–ÿÅw?v¼rØÀIsW¬ıŸó_Ö6pÕªÕÒSã{çççqÊĞ3xñ¥7X¶|5e•H6gb¿?³¿aüKOât»å}O22 ;ÜÿĞ³”¬[@÷q¨ú>Å² Ñ#¡‚‚2“6¹^¶­]ÈÜy‹¦IÓü\\òsš úHî84Ã`æOs‘”Fı–$Œ`ˆ~}{¢8l½K¢æ°Ãyïƒ!¡¶xmEYÅºÚêZlŠ‚¬(xãâ©o0ò´“ˆwÛ†––W|$ë<R8,(¯(ï¿jåZn¼ù^.¹ä|>›ôÿyğŸôèÑ•¢íÅ|úé×lŞ^L~Ç¡j:3gÌ¦º¶§Ï·Óñ£ßãæ—y‹ùò“‰ìàÂì×(\0»9)\n•¢(ÄÛ\"Lÿa6’Í†®i!p8L2×ßx­Û‹05}§jš&îÄxúôìÂÖêú‘¿³½ö‰g¾ü>lbÆü…¿\"»œ!pûâ¸œN†èI‘?zŞ‘¬óHá°`Ãúõùõş\0/½ğ£/»S ‡#DÂşqí<ÿÏ1ú¬‹8ã¬Ñ¬ß¼Â¢®¾ş.>x¯Iqe\0YfÜ„wi\Z&ÑçÀ<È„l	%‰ôxÓ¤\'@]mÂ0Pl6‚‘c^x•cÇĞ5PF}E%ÁPi×HÀÁÇÑ´ÿ:ıDßa·Ö¢ğÍ´6…%@œ.\'v»USéß§Õ\rõın;¹_â‘¬óHààÙçËY»fõÀÏ>~ÇõF­¯Ã²Š,S]SCQQ	÷ÀŒ».¢y}	g1šÎ]:1fÌó|<é+ülv²$aw:Ø´qËÎ¥}İ<4_$Ixœ–\0K¦¬¤=ªaóyyïƒO	ÎÉS£3²_Wêªk©©­EQ~3s„ªÒµc;ÂQµeXÈG4ô,Nh‹‹¶n©«®AQddÅ†İaGÓtòšd’’šÜ,jww?’u	²Lÿ~ú?/:ÿŒæ}@­¯ÿ­\0YBÓ\r’½–V\"$….;ûOèÌ•—İHb’÷ŞÇÖ­Û)ÜVˆÍfCr8˜3w!f¨ŸÛÎ¡Ä\0	Ài‡7x]6\"şJêêı I¤¤$““‘‚jZXË ®>€$ÿöŠ†¦Ó¢ySZ·mé-¬¬îxX-u¼:sQÀ¦(+6oÛb·#ŠÍ°^‡&™©òÖªºãdG‡¤\0cÇM¯,/uÅ¥ç#\"áİ¾3M“„„8R“âIq;øhÁ\Z\Z\"\ZWŸÜ—Á^®¹îvRRSxæ±ûHHˆÇ4M0MÖ¬^Kn’àPw¢Â‡\"e!Àa“qˆ‘H,€Èãv#–e!I1ÅŒ ¿•o	âqÓ¼Yõ`Ş¡5Ñ¡Ã\n4,Ú²µl6$dEF$Kdg¤RQ;é:ÿ(IfÌ˜Ù&==9«yËfHnÎø¸Ø?¯ÅfÃçñ€ÛK—ÜtZ¦%2æû…¬)®äÚ“ú²ğÇŸøîëi$7ÉÂç‹Ñü¢¡k×¬!Ñ+³cöWdpØ$”}IÔ¨\'¿q‰A’%ì²ÙK SYUMÌ°)\nE!ªi°—\'RĞ¾MKjÑûğ›ëÀğJÖŠâ’ò¾oYV€°ù¹YÃ‘œ;†ö9¢¶ÇÅ!)@yeevFF\Z…Åå¼ğÜ8î¸ó^zùM¾ÿ~&[¶nÇ•˜È°S†2síV2<v’ì2Ï;Ÿ§&ÿL½?HAÁ\0,K`Sdê\Züë«ñºb\rd“!,-Rİ ï­û˜$LÓ$%)¤ÄxÀB3j‚a$	IÂmWĞ½S\r	UcğÀãˆ\nzİyú‰G49.-ssMM]İ\0IB’$$À©ÉIè†‘f†÷HÖùGqH¤ĞÓO²yò´iâÂÓÏ“<EÄÙ%~\né8ZwÁ0-ztkÏcü‹ùéÉ,-,Æt¥ãõQY×À½œÊ¹g\rÇÅ–IV¨o\"AœvE–¨	X|»4L‹ö½¨4kH2Jû=-–@Ó|MrñÅÅiáv:±6h<f¶8ìöÜ\\êªJÛíès\\Ïü[ÏÆÿöÛ\riÍÛ„ëê*uË²Ø…ó`	<^Ÿ×#;ÿÿ)€º|îÒçõÍëW]{I×lŠÂ†Ê\'æÚ[oçö[náÂÑ×2}úg(\'h\ZÑHŒâŠó`†£ºNãâL}ƒô 6›–lÑñG½ûôÁ_´Ó¿›²Ñd ±|Ü@œ^˜:Šb9fñk¦‰&$â}Ş˜iÂ4¹ÿ[¸ôò[î¹`Ğq?LœıKÁïl¿İ°~ËÖ¼®šÆÉV$ºé%ÆoÁû˜•%i	xìëYVG»sš/xiu\r««Cä%Ç±ñ‹·¹ÿŞ{xè±ÇhêŒ;Ô(ºªaWdlŠŒŠ`šÖÎµØ2šde—€e™ø£ Ø]¼ıÆ8B%‹q¹İûı\0ÂD“¼´éÔ\r\Zã	Á\0Š¢P£É\n	ñ¾XÀé?×#QZ·mÅ˜Îß1¾ziÜøÃ¦ ?öøãM¯¾úšá—]~ÙåO=õÔ]£FwİÊ•+:d İ4l\'		ñ¸½¡K\"$ùO\rÈ=Y˜§§Ì)ºç´®YŸrÓ;KW^qB@³ËK`ÖOŸs[ÁFZ´mÇ´é³9kØ ‡Ó21\rI@Bj\ZŞøx,ÓÄ4MRÓ’Q<i¨j)>Ÿ“Î96fmdÆÙIğ(1ÁoüĞİ KĞĞ&§ÍItëÖCU±9ÔTUÑ!Î$AUCG\\<ñq>Lk|IB\ré; /¯=ûïO}û³7^~éÄ«o¾å ùŠ|ø±ÎkW¯¼qÜË/ç©‰}{låÂóNã”!½éĞ¾5Ë—®äÅ—Ş Áç¦_ôïÓ¯×ƒª[q6oÜÿTî£Ã:ê•™P›çúU$¦uú~õ––ÍâœôÎIB©)åçµ[¨Q-†èŒE$BW5Ôh„H8ˆ/>Å¦ ,;ÎÇ¶må,]0—ìT‰^‰¼d	·#vè£ê2^çŞ;YËÔØVçæÎŸ#/¿	¦a¢ê:Ÿ|0‰>²SùfÙzÈmÎ9gÀl<ŠŞ„®“ç¥ª¢4cş‚eÑUk×ÍÚß³/¿òª/ª\ZÿY<óË	RÍ’~m3W²Ç ŞnPSSEÔ´qÁ…çÛ¼9Éq^ÒÒÓØ¸y+}ú\rŸ3í…¥”WÖ„Ú${_Ÿ¿q{õá´ûÑÄa)À‚íÖœ…sú÷’êH HÛx;É>Í\\‚U[KÈmİš.í[¡éfl/®Èº%,â’bûb!hß¡-}ñ#áš2Rí$xÒãeÒb¯È 4]I›,Ã¬,´¸ö§8uÄ)há06E¡¦ŞÏÔO¿ä¬v¹8ì\n¯ı´”ãÏ8=»¢«Úş=\r’DCM‘p˜Ÿç/g·iòÑ¼‚¢½œÒã_{½ÓÄŞùH+™IÏ¦†37Í×¥™`#/M&?YP¸q%ãßúŠÄätzöéF³üN=ıTÎ>ÙÔ™>û6nŞ&e¤¦­Y[X²ôp;êháw‘B…¢ÔwîØ9!™°¦£™‚LŸ“n¾Ÿ1\'6íJÄpŠ\"ã¯«%ØP¬(ºNZjcÇ½‚=ÿ~Z­²±ĞO0¬‚°Hô\\vX`!¶–…0»rç£ã¸ø¢óÑ#áØ¹‚ÍÆ¶Âb2íïuSŠRRi×¶%è0¸$	Ë414\rMÓ	ƒñ–{Yè~<©ç›ãŸ–Zx|ŸÖnìv;ªóFj¦@3beujÏ –ºë&{lØlh\r\r¤¤¤2úü³øxÂ3<x×u®EÛŠ_éß¯ÿ½ïøÑÿ©õw$RF^ß4[-æVC‘\Z×kA‹”8~Zº‚¥«7Ğ­C«^:ˆAÕe¥8]nNZT¥GÎ|2é=¦Ï˜Ç—_~Å†U‹+Ë°¡ãtØp;hR™Í:qÉ°Ó6âR“Ñüß8vóæ/&Ïc\')ÁË¢‚bLoÛ¶ÂĞö?úeY&ğƒ°˜:óÜ–¹F¶ŒİÎë,Z\"İ~óõo¤è²[6‹‹qb¯³„\0Õø<NNî\"ñöËÏŸ—Ã%£G¢G¢H\'pÅE#Ğ·»óÖ?õä»o¿ìÅgü³qØ\n0uÚ´„¯¾š|¾Ën\'Uâ¶»	\Z&³‹üø-;	qILûa}»wØEb;MU)İ¶…ÄÔtœnj4ŠÇídøˆ>l Å%¬[¿‘­[·“’’HNv&É©©äçæàğº1#aÔÿ^2ÉXÌÜT„>u!SWn¢}ï¾Ä%& ‡Ã{=±Î×Ô(áúZÖmØÌOó—èÃZåş¨Gƒ»)À+/¿ò/[ÃÊ®m›ú~ëüÀ0.§>-t^|öYN=yÉ	>¼¾xjjëÈÏÍæ½qOpÉu÷^7|øğò)S¦<|˜]pDqØœÀV-[ŞQ\\R6ª¶`]•\0Š,1­8D·ã†sÛÅWĞ·e+›ø)];·¥u³|tİhôäÆ<c¦a\n4j¨GW#|şÅ·,_²”6­š“’–B‹VÍèÑ»íÛµ!§I6É	ñËÄPÕXV±F9v8ZôH”4Ÿ“–];ãÎoÆ×s3úÂ³èÚ½†º·(É2¦aPSVBĞïç\'^¦‰ËùF®“/ÕH¤zQq•ğÌsc/üüçÇõk¥ ¤Cl&)vlçV(®¨£EûŞ´íĞ\Za	t]\'\Z¢›q^ıûtãƒ‰Ÿ\rJIÏ®­®®:fŒåÃ²¾ıæÛ–¿,XpW8\ZÅ*ŞH¦ÏÁÏ!ºõÂSW]IšÇÅÚÂíïÖƒû|‘w?ÿ†@8ŒİaÇéràñ¸ñù¼¸İnLË¢ªª†ŠÊjşùàsÌ›¿\0d5F\rQC!ÔHMÓ°¬}“$Y¦®º\n»\"Ó£c\\Š„®itéÔ¡í=dcéèLüU„ü~îzd¡ŠêÉïD£jÍË¿¬Ñ>şô‹üÏ?|ıÙŞÍvû~<’úL’Itè±w’bÎ.¯/I–‘€P8J~n6/=ù/)P_óâe£G:œ~8’8¬%`òä¯nOKÏH.Ü°–6ÁòŠ\0O:·u&†\Z¥¢¦–³úõ§U~>SçÍçùÏ¾dâG“ÉÈJÇér‘œ‡$•µõDU§Ãa\ZtîĞ†—_ÿ€şCNÄ.Ëûípømù•dMU‰†l(ØÊçßşÈüÅ«ˆOH¤EÓ\\,}wÔV²ø×e<7ş}\ZÊ«¦m9VSÕR=\Z©X¶|¥ı?÷ßÿªİ¿¦IvëFšÚ¾‰˜p–€ä8…5+—£†Â(Ø›\rÓ4bÉ±BÚµnÁw]«<øì„1w}Ê/Ï}1­øpúãHààë¯¿N~î¹çFzÛg}G¡;u*ÏNnV&Á†z¶mƒ¦iDÂA†õéÅ‰İº²©¸ˆ57\n‡Y°~#³6Ò¥wg®¹l™é)Äù¼8ìvÆ¿÷9å%e4ÍË= ì€$I„\Zê)/¯ä©—Şâ´“’›Å¼¥kp¸\\˜–Õx #ÇF±¡1î<ŞşğKfÍ]RŞ*%şã^ÍÒ¾°tµ<\Z	—_´Á˜üõ··,û~ÄvF—Jvzİø]ì¸ZB8LÃD±+(Š\rÅnÃ0ô˜‹X0Ä)ƒ0uÆÜì¥—j)òPUS“ç÷ûs·oÛFqi5MûäÎ{ÿÅæâJKJ°Ùí,ß¸‘KÆåÃY³‘e—ÃN§víè”ß”Â†:š×‰7Şxš§¼ƒíZ’šš‚Óã%>5\'»Ÿ¬ÌtıàÖ–$Ë¨Ñ(Z8È”Æírqõ¥£hš›E$ÆáõàğzqÚmÈ–Æ†Õ+¹åöû¸áÎÇJŠ×oşïğVÙ7tIö|hêF±®é…ã®×¾ış‡6“?~íÁy’¢ì=ËïìüÆıíşä“@Õ-’SÒp¹›ÍÓŠb	ÓâÖk.¦¬ªòÂÑ\'öëu¨ıq¤pÈ3€V¼¥HFÊ´h°Iƒb£sŞÜpóÍ¼bSx`ÊÜ¦Iam-£o»\ròÃÂ…ÔE£¬ÙTÀÖH=gœ?‚ÛÅÈ›/ñ‰É8\\.dYA’$,Ä!EÁÑ_GEE%ßığ37\\y>‘¨J«M©­®å¾û§g—vÔ740oŞb±bÅºz›aÎœ—ö®[è…ªª†4Iª¶£îåy«,€‹—z¼ïŞW3l¥¾ÔD7Úş¦şCˆÉ˜œ”€¬(]e?³Ùv~¿ªªÒªy—7Âñİ´¹ÿ¹gøñg>=åç?-Şñàúÿ<Zs|¯su-|şÓcâù1¯°µ°ˆo¼‘ËÿñBá0‰ññ8ívÖ¶iÃµW^EQy	£Ï;Ÿs9q/²ÃA\\b2N·„À!¬üìY–‰†C-Â»\'“—“ÉIƒÃ’—›Å5WŒbÂ“ãX–JmE9eB2ø\\F¤vªª†ÂQA5’T?fÖÒİ¶|¼ÿş=›—N2¸SºÉo/Ä>H%Ö!H6ºté´ã“˜ì¶}7w8ª2êô“™<íçU–}0ëĞ[äá°ŒÀÉq“ç-~íÕ—ÆMùv\"cÇ¼ÌEœCVvİ{ô$!!ÂÂm”–qüÀ\\<ú	ÚwlÚàG;©€eşÎøIÂ-àãÏ¿cÚÌùüwì#˜–ÕÈÄy½\\ß½’Í\Z\nbÂöŞÒ•×ôïÑá{{CÍæg/İË=xç]÷\\ùÓ”IÿêİÂGT“q pØ\Z·œ‡8+í\n!LB–6í;\0b§‚ïïˆÛĞ\r2ÓRvBoùûæ_ÃŸ¨\0‡åX²yûö³útÓÇ}øÅI#N9Qºòš[yjÒRPÃ\r¨‘:wlÁ•—âÌ‘#HKMÃÄæ°7¾¼àd·Ùì‘\0ï¼ÿ	/NxŸgºƒmZ‰ÆN6§ƒùÓ&7 ²İ_‡¯ÁOºÍ†á÷\'nLË–?üişä=Ë¼ù–Û®\\µtáøÓuv”o_‡,Ë!a·ÿ>9e	Á(‰Ícô¥— ›$)æ|\nùı»ÅHì:™d¤%3ù‡¹M/Òÿ»k7Vü.‡í\ZÑ6ge|\\‚şÜ„÷zézÀ1ğø¾´ëÒ›^}{qÜ€Ş´mÛ\ZŸÛ\r6\rµu¬[¿‘òò*Â¡pcÄŒ›×ƒM’¦IŒÅwp8½Œpˆû|Šÿ~øÏ<pı{w\'ØÈ4r8ìl+­`Ñ§Sh”ÌÆíÛÁ©p\0\0 \0IDATÈÑ4I¢‰ÃÎ¼¢â–gœsÆ‚%«ÖlÛQæY#Ï¾w{Áš½÷û‚_~¡¡b3‡=FSSbyÈhÜ!H’ ¬NpáUwĞ¹{Wt5¦œ’$£k*Á†úİ ¦e‘‘Æšõ›œ[+ê¥­…EßFí¿¿ËÌ¹{h¯¤€ì¾¨°â2WrÒ ÓO;Ù1lè	4Ëo‚Íá@‹ª|;m¯¿ñ~Øˆj›-ÓT\ZxOœ/¥U›–îŞ=:3tğ@Ú·k…İëUE‹ª»ÅJÄÖ{›Ó	N\'ëW­áÖ[ï¥¼¬’§¼í[6ÒÌ$	·×ÍcO¼L\n?5ÂBÚ´L$LÀ#K¼[ßÀ¶¦ÍŠ»tètR‚Ïç\\µzÕÃé	Î3ÿ}ÛÕ$%%qı7“m«@±ÛÜNİ.Ó>ú†0jRoŞ|çm|nFãr\'Ë\n¡@¥Û¶ I±Í×®»Jø<n~š·ˆŸy½øœNÍ»¼ğİ¬£~Ÿòï:Òt£Ş-ßÉK]Q£‹Ó?ùrè—Ÿ|İ5\'\'ËmwØm\r\rhuYùæi	_%{],Ë’µD»Ó´»’+·mm>iåš¾o¾ş~‡æmZæŸ8ğ8iÈ‰èÒ©º¦cSOÌHùüºdü%³çÌgÄ°øÇè‘8vêëêÂB–âã}Løğs\\ë¶‘Ø¢Û–-£µ%0™8¨J\\³<^|àæœgÇ¼5{qQ‰ûÁ;®‰;ñøŞ€D Ù‰f˜xvÌ}Ù}»b?ş\0›$ØX.¸óÆËHHIF\rvûQläK;“dE£*‰	qX¤•¨ªÑ¥}k¼>wNfõ¾ù=ıs8ø]ùl/ç—måj¯Ü´—0\nó¼‹³]ÊlWØ?Í¨û6ıÛ–‰\\B/°,³!JmvS/JqÊkZ¤Äÿœça‚Kæ/øÕÿÎÄ¯êü	CNBÑ¶BŞ}o\"ãÇ¿Íëÿ}ŸißÏ$=-…{ˆs/:„¸8¾„±Ã—/¾ŸÍÂ¿æ‚öíX·¹€ìúú¡NIb½?€}p.½à,º¶oåİX°Õér»h–—ƒ¬(ø¼nŠÊêX²äWrÒÜ±ØÅƒÙ\0{,ãvE°js–½Oã¶;nB6İ£¢%	C×	Ô×!5ş?\ZÕğz=;ŸB˜Ïšu›((,õWT}û{úçppDÎ¤oÔÍ„WBr6–)	Ğà˜YKwKvÛ	İe„pH’ä•.»İá	J¶ª¾ûúƒ´uk7ğáÄ/èÖ­ıúô¤UËfx@UQw9ÜQ[\\<ÆMàËç&pG÷î¬o¨ÇZ»–x!0)Ù6añA8Â%ÏŞÏ ]BŠDxóıÏ)-¯äî›ÿArrõõAn»÷QÌÊ•ôhÕÈ,è”%°ÉË6‡Hjy\"^Kzz2Zt÷o$Y&Qºe3’ºnPQYM“&™¿Õ¸İN-]Åİ->»S‹/N™}TÁcNJ¸mPW»ÓårÎ*\r¾wımW¼ìÊKÀldk\Z†¦Ç¶y;„àp:<Şxë&?ı*÷õìI¹i°vé¯dúıX£ß-I,®o ò¤<şŸ;ÑÔ(–6›ŒÛå¤²º»İ$qØ¨móÀ“c©Ş8nÍx<v@Bv_“¤FQ\Z‚\Z«\n5Zõ<•1c&33•h(²×\"É2j8Dq£¨šNEE5yyÙ± ±|Y–%‰Ën}—ëú¯fÏíh¶ÿ1¿–eÁörkŞæbmH.®Š@ğ¬§œ€Š «*†aîœ%b£Ş‘OUM-·ßı KŞş”§ˆî°³qÅ\n¼µ5Èo“$\Z4©n\'7ß}#i‰ñ¨\'„–e¡j:N§£‘¶¦àòÆÑ¦cFsµQ\'3l¢´2@} B$ªašºa‰\ZÔú£W©TªÌ,Î¹ü&|ì>’ãPÃÑ}Ú;¦ı@]²$‰ªlİ^LNvænÏ	>Ÿ‡ÚÚ:®Ú”xEïvÌ=‚É,öÄÿE¹UŸşéMúˆpƒ§Ã¹³ãeYŠ%Št¹×ûyë¿ïóÆËÿ¥».xvğ`ªLƒÕK—’RZJØnÇ vÀ¡‹É¡ §Şq[7G3©YÙ±²\Z!!¡Øl\'‡Ã´ğ8l<øĞ]\\zÉ(Ö­ßÌ²eËXµrÕÕU†\n²LNë|úvêH‡èÒ©9ùM0#Q¢QugçìÜH–$\Zü,ËÜ¹+ØUÓØ¯\'Mş±OÔáí,;’m½+ş\'à»ï¿O˜ğøã—&ùCWÖĞ¦}l¦\Z£oG\"¬Ù´…©?üÄ—Ÿ~ƒ»¸‚;:w¦Oó¦,(-£díjòjª±Ûl„¤Æ\\BHL\rI<€óNŠÜ¦yHrcä»vNc$Qã	¤a Ms²hÖ<á##4ƒH$ŠašÈ’„×ëAr:À4º¶3Ò’ŠØGj¼ØŠ«KÈ1ÅG¢èº‰Ã±»hºNÓÜlÒSâí…µşÁü_W€™³gwk¥ë»åç3ş½Iœ8 ~‹-eíŠµ·“#Û¸¶U+uïC©¦2eõ\ZÄæM4F‘;œËYæçú6¶Èç•[¯Âëó’’™RìnÂ8Øö^Ó4Ø‘İL’pØeöØò¢k*BıÍ¶Bàt:‘œÎXÉ¦Ë”º‡a‡T‘eBáE%˜–Kœ±Ka	\\\'Côfò”9çŞ{Ú —úvö!Òÿ\n§¬Ä½=zHã¿û‰q“¾Æm³‘ëróÜ<:\rnC¢×KI$Â§Öa”–’SW‡Ï2±vÛJ.Ib^}Ó}^¸ûzr³²ˆOÏÄîpÆ\ZúwÊ\'„À<@Wc‚Ë&}Ãºuk9õÔ“8oÔh¡Ğ.[A	Ó2\"ÆSĞ4-–EÄ¦ìS5Mç¤AÇñÉ73{„dG`Éïÿ€øŸP€V64ÔÔÕ¥ÜĞ·ªaâ¶Û°ÔF#¬¬¯§¡¤˜pi)Šr2…ˆqû\Zc@ø¬º†’¶-xúökè×³¾”tìv;ÖèüA\0.·›%‹–sù•7`Öm!\'	şñsjª*¸şº+QÃÑØ“X4uE’©o ë‡ã7Ì*= ë:ù9Y4ÏË²o*«ÂÿeHMI3jTU<1{İâqÊ\nN‡ƒ¨®á6L²tTË¤Yc¥!Kbë¬G’¨6t^­o iÈ\0^½ë:Z¶l‰;!	ù ô²?\n‡İNii9×^™Ò:÷ŒC‰æ‘_½?ÓG\';3u\'ÉE×õ˜ı!KTV×!D,\\^5­}RÍmv…ş=;ñöÄï.¸cøÀ—_˜2gß4ç?€ÿ	(õ‡x<îÔPm\r#œì€\nÅœ,’„Œ„%É˜²„@Bà”b¹‚~òûù\nÁ°k/æ–ËÎ#-+w\\ÌK¸çÈ?Ôõ»BjŒóßWvsÙagÕÚX\r›éØnu<F$uJªkjÉi’s‰	¦ş1\\VQENV²\"³sØï!V4¢qòà¼ûÙ´.%\rá^ÀMp	Çàòè}aŞÜ9W¿ûÚ³´?ã>­©#ÑfÇkS°É\n–$£K`I`\'6âíB°<âñº:–ôèÄcá¾›®$+¿)øDD#?`ÏißlN=TH²Œ®k„~LÓˆùv;Ê•Ù°né^µI€a˜˜²—„„ø˜Ÿ5ŞÉz*+¯\"=-é·²víüÆ*tÓ If\Zızu”ªÕ#›Ûpù0|øˆ[²Ò6”Üfy\\·|\r3*kHvÚÉ”6$a¡Z‚¢h”uj”ŠŒÕ¶%œ§ìKFVî¸›m¿d§ËÉü…¿R[ÛÀiÃ‡ô>I’ÑU•’­›Ñ5»ÃIbj\ZÉéé±øË!HMM¡>»bÃ²\nÊ4†>ŸfÍòPÃ!dE!ĞP‡iè(²\rÓ2Ñuø8/–µKZÜ=”@0…`@ï®<=Ù©wë÷ÈóßÏßÿ-¿ÇTyæÙä¯\'şÏ;oÿ?L›ÍfµED±Bù>mjB¤y¬Ò4”üšwiÇ%}{Ğ¿G\'RSRpÇ\'âòÅea(Ù`£åøé _’%\ruhjE±aè:•%ÅTUVÒ¢M[dYÆP£?e0S§ÆÒ¥SHpZ¨–BÿWpÍõ×b¨Q$b@mMl9Q$\Z\Z‚‚a²2Òc3Ò+Òn F5útïLrjr§*~ÀÌ?Ğä{á˜*@qqñ€Ş=:åä·êÂÔÉ_òÆ„ç˜üF_SæÙ76‘›écéš2¦¯ğÒ3÷Ñ·kGâ=nÜqqØœ^/Š¬2ÅLXuCšı?,P£ÑÆ¨Æ˜-àt:X°x9Š¬Ğ¢};LÃ$ÎçåÍ7^æÇç±hábÚ¶mÅçŸƒe\ZFlÙh¨ª@W5dEÁn³Q^YMTÕğzİX±Gb¹:°—2}ê¬KiT€½zÙ–,^ü‡ÓS ¼¼üä¾}º£…ëyæùWùçÕMéÒ.…®íâyì¶¶øÂ<uK7:æÙ0\":ñXJÙ„Ô<qñ16±µwçï³I…Àår\nš!mYº¦í–iTQ¼^/›7o&âo@–•X\'#N;™‡Ÿx€GB×UÃh\\û£Ô×TïÌWh·ÙX´té)$ÄùöM‘Ûe; j\'\rêK@ÓFœ;âÔ[Úwè8¥¼´tşĞ“N¾}Ò¤IèŠİc¦\0·İ~{|EYÑi§œt¿.^ŠİÊiCšÒàWñr²¼¤¥z„õLeÖ¼%˜¦…Ëã‘C-sß)DØ^€Óa£!Øího_%ìˆa4um·Ò,ËÂírRV^E}U%º®5*¡eóûQCá*Iµ•˜z,D–%Bá0?Í]L®íc¡j»qöİVš®Ñ\"?—ãzwM·dÉØ;şqÎ©/?ñÏ^‘†ŠÆŒ}éı—ÆŒq¸µ÷c¦\0éi}›7ËÍKËfı†­ôêäÃç±íÌ¬Èàt(ÔÖ«¤§8©¯÷c	Ãõ;3¬H`šZTÛ‹Ì±×£’„¡k˜†¹O’$ê\ZèšFmEÙn™Hw…¬(êñ×Õî|Æép°jİ&TU£oÎ¨ªº{ıb¿»|®&×]6Šö­šÑµS;úõîÆ›cÁn…ÏŸğÆ›c§)v“ó÷şğ¢¾¡¾[Jr\"`ÇàóÊ{nğzŠ+TêëMšçz)(Ò²y>6›®8¢ŞÈ\nU5ø|Şyï@h¤l‰}8‘‚h4Š¬(»%½Ø­*9F\0­.+Ù\r±Ë0¿›>‡.[“’œKuˆĞuœ&YèÛ	ï}J4\Z‹­|åéû‘ÍÈuO|×!¶«¬¿çGG?şøc“¬Ìt@Ğ¬Y«71…Àn“Y²º¿(bØq)ØÁüå\rôéÑ1æsØË‘³²LyYññq‡ô¸¾ãÎC‰Ó„Íf£¸¤Ó²P”XÔouY)†®íå;¦õŠâ\"4UİÙùN‡ƒm…%üºb#‡Aß3{É!øª#‘ç9C€¹—\"ÄÇÇñü£wS´mË“÷]õ Cz¹]pÌ )ÎW·±`ˆ(ô$ çrÏKùü»Jfı\\ÃÉ}SÈN·óğ¸åääv¤W—6Ø]nì»pR¬tKé!ĞÕèoÆØN¶Ìú‚­de¦5æ\0–Ñ¢Q*Š‹°,+æ‡0tÊ·o#ì÷#Ë;.¬\0»İÆ»\'Ó­szvë¸½-Véî²î;;ª…ÇíâªKÏeë¶\",KGèĞ¶7_q®mâÔ^|ñë=‡Ó,ÇL:§ÅOûeÑr£º´„Ä´$}òQ¦ÿ\"øø«5jï|¾ïZH„Ö<rÏµ$¤¤’œ‘õû¦ÿFTVÕàõ<U¯ešhš¶QC’bq|5µõäfe`4f“‘…PÀOÉ–*Š)Ú\\@Ğ¿û²àõ¸Y²|53~şUİ^Rùqö/$Äûö²/öéÚªª‘Ÿ×„aCUU \nqÆ©ƒIOï¶°¤öŞCn!%ìÄf[ê‚ƒİqŞü½{’™’Ä©Ã† ¸›PP¬àMjËU—]ÆÍ×]Bv~>„DäFŸüáBVL5Ê;ï|D¯^=hİº9æ~¢%IÆĞuêkªÙ•×c³)ÔÖ5ğÃ¬ùœ2ôxœ»,E’,ah\Z‘PaYÈ²¼³3EAUUxvÍ¼¯´JŠûøı©szƒåíÓ½#š®³Ë‰ñ.‚ìÿ},aár:/ÛşĞ47“×ßÿ´Ëe\'öı|Ñ†Í‡SpÌAO~7G¿jÄ	ãŞøàøsF %!¦yM¸á¦Ëcé]-0tÔhÅ#gîğíÈ|Ğ{‡Y’–ÉÖ\rë©«o eó<Ä²‡I’„®kXæî;\0»ÍÆÆÍÛp8¤$%¢ïšDÄÖş}&Ÿ×ÍsãŞ%Tçÿ¥O“„‰f°¦èøœÔª?ö‚?Î½öÒsQU-6£ìïuöœDL	vı>Ğ·W7N\ZĞ3qÙæ’»kØ88¦ tÉøRŠj³ï½ÿId¯]ÓPı´PK×)**aÖ3¨(ÚJéö­T—•â¯­%c™&²,ï/ßäÆ\\uÕ¥%”–”#+62ÓÓ| $ÅJ±Ë½ëà-ÛKHINŒ%œ8ØË	ğy=Ì[´œf-ª:.7õe]–èBªğê¡¯7Ë¼ñ›©?ozìÅ7bŒ#‡c÷Õm?îá]åÜªªsá9§RVSsŞõ#†´;˜ˆpŒà‰og‡OißôÙ³æWş0å‰ñ;G¶išÄ\'Ä3óç…TWV£†ƒÔV”S^´’-nŞHYá6üõµ±”´²K#+1ÅP„”ú©©«Çíõàñy:shê.;€FX–Åö¢2Z·Èßë»İ›•q»]l+,áñ±o™í“ãÆº´Ğ¯T½Ô|nÖ2M	ÕZÛœ+7o,úùŸŒ!\náõîÃÇ±ÃİÃ;¸×÷€¦©´jOËüì„…ÛJo:àK6â˜?óåô…½s3»û¾\'õÂ-…8\\1§–eY$¦¦Ğºu\Zó6›‚ËíŞ9Ú\r-eS^¸Â‚M”mßJME9Á†z\"á0Á†zJ¶n!P_‹Óá`cÁ6âãâq¸\\ûÜßï€°Dc@çoô^]×)*)#!>.6RwtÊŠ b7…UÕÔğ¯\'_%Çã~\'ß%MÑL«rÌ¬e;Oò^˜½\\‹ÔV-î“l¿.\\QıÎÍ÷=#ÖoÚ²»q(í^îõì	KÄl˜‹Î>…Òšºó¯?©ÎÁÚÿ˜+\0@»ŒÄñv‹ù—_u†ií¼kĞˆD¹èÂQ$$Äs×%çE’bkõo\Z:Á†zjÊJ)-ÜJñ–M”nÛJ4ŒİÚ!`ËöZµl\nŠ| ä.X–;ØuÄÉ1ëÛa·ÙvŸAö(Ìét`š÷?5‡ª~Ú9Ññ†nèåcf-«gŒ™½\\»&Úÿ“çr<pßãj?øì;<.—ó`™höª_\"‘(Ç×ƒ.[¥lä×Ç^ŞxãÍæË¢ö—ã“ã{^såhä]2†˜¦‰Óíá‰‡î&7;ƒ«o{ˆÙóãõzq:;_>æg]Ø(K2RìŞa9æ]Ôt-…Å4kŞô€ÛHIC×cWÎîºDÂ0MtİÀfÛÅÔÛ£(Ÿ×C]}w=ô¡òÊÏ»%¹^ŠF#eHRåşê3g¹¡iziÔq}3®ÿä³)‹nğyÖ¬/Àçõàõ¸QvÙU–Øg<ˆUÛK¯¸ëÌ¡	zş˜mß}÷=O³fMoZ¸`î[ô8áÉÇşåèÙ·\'úÇµÃé¢{§6¤&Æ3şíI,\\²’–-ri’™’´»Q·GC)ŠL$eò´Ù\\<zYi©˜û¹´A–ÔH]mÌ€Üa\0²\"óÅ·3hÛº9m[5ß-™•\"ËÄù<Ì¿„;z‘H]ÃÌòR7u­T •ì™fO,Ø^.æm-Ÿ›²½eJÂ/uõÁò¯gş’¾jãæ4Ó0ÉÌH%ÎçÅn³5Nî;,5yäd§3mÖüS3—o(.]³¿º‰<öèc\'Î3ûÃÎí›^yÏ?oğtÊ`ì²ŒÙÙEÄrë¨ªJvz2#NHaq)Şù„«7Ğ$3Ü&™Øl\n¦iíÕ06›BeU-ÓfÎçòKÎ#Şç¥Û$Y&ØĞ@Øï¹vw*“„ÓigÚŒ¹ÄÅùèÛ£3š¦#Iàñ¸‰ÿ~ø9¯¼ù1íÛ¶&ÏçäÒBS-¤Š1³öNI³?ü²­\\ëÕ$µ.ÅÎÚ¼xï¼úšºµ—®Îœ·Ä½jıæxÃ0$Ó00-—ÓÁ^Ú¾Ãl±	ñq¬Û°™’Šº`aYù^™QvàOU€©S§e\'\'%=ZZ²å¥[oº4÷ì‘§áq:Ñ\"Ñ³w¥X$Mme%²,Ó¿OwNĞ›¢ÒrşûÁç,]µ§ÃIVF\n>ŸE–±¬XÎ ›M¡ª¦–ésrñEçàózyTÂ_W‹\Z	ÿvÊ·#j×å¢`k!›¶rú°°ÙvsüÊ¿y‘ÒòJ^~òßH²Bå¶í¹LmÎ˜ÙË;Ò‚íåfïü¬0ôšEd{¿ømfÔ\\°dÕ&iñªõ­++«ğy½df¤îåØ!¯Í¦`S¦ÌZ|õ Î]¿yŸDˆ?Í4şµ×¿4ö…	çœuRËK.º#–1<>Ï|l±~–i†Hˆãæ«GsşY§0õÇŸ™ğÎ$,$«OÏ.r¿èØ®q>/Â²°ÙlD\Z•Lv¹zpŸKên;€]­|KáÒ·ggfü¼âÒ2V­+à›i?QZ^É¨3‡1êÌaØl6>ÿvfm¢MZ+´Czµ}bÌ¬¥¡ÛNè^í”)u¡•Ii9¥Õ×°k/?ßffìV´]·ˆ»ÔjtïÜ„_^¡?2˜¸¯ºúğÍ7ßÊ’$ı{[Áº7ºï–´SO?¡è¸ÉcWH¼Ê’btMİéŸ·,MÓq9èÛœìL.Xö“QSóÁ¬…+ìSú%£º®^IOM\";#o¿Ÿ…j\nRS“INˆß[\ZI&õÕU›»“„%HJŠç«)³˜5w![¶3h@/î¸árzuïŒ®TV×2ıÇyŞpı[cg/«9í·`[™¹`[Yô—ÂÊp¿æMªı‘û÷î’èv»b„ÒFùv—˜{ØçóR°y;«6m‹–UV¹¯òêğô3ÏäL™òÍ«­š¥ŸqÃuW™†êü‡Ä”Y‘eÃ ¼p¡`à·{€wÑtÓ4‰DTÂª\n†^İÒíx³e¼kreØè8gÊÌA³f/:!;+-7;+Ã&L“UKW’—™Kµ3HÌÆ€„¼—Æ4MR“é×«3kÖğæ˜‡±„ Q	C¸Ê*ªP#Ñ2‡İ^w„šp7T×Ö…t»7*Ägšû™k,KĞ­s[fÎZĞöÖÁ½¼cg.íùÌQS€_Ûó‹Ï&½uÃµ£;]pñyXáj ´“W°ğiEVĞ5•²í[‰†Ã±ÎßõĞdçZgC’á—%«h×$ãg-T[%t½*Qˆ¢©®9–Çûñ²šÀøİsC‹“F5Œ\Z‰ü6zvÙÈİ·vğÿw`—ÇtÃäôa\'0uÆ\\Ö¬/ E³|LÓÜ™»`óöR¼’X/Yfğ6ß>Ñ|è™rÍ‚¹6ÇÁ8»l£s²39[$[VvÃQQ€§~úÂ¯\'öê“Ş•Ôÿø~¿İğ±Ë´zÀØyE!\ZQV¸½‘}³Û Ixİ.¡oOüšÂõ_´vX?’l™µT%.È5£F¼äÌã›4â$´úš.Ì‘à.³Ó®\ZºÓÕªÓºESâ|Ì]°Œöm[Æ¢ˆ}\rkÖà’Ø`JÂãßa#NsÎŸ7Ç¥ª\Z.§kÿîah¤À™¤§ş¿ö®<<ÊêÜÿÎù¶Ù³@Bˆ‘°ˆD-jm­×[ÅºµVn¹W[¡E´öV«öªT¬AĞâ‚U,ˆ²ˆ&€&BBÂ–}™Ìdö™o?÷o	ˆ½Şçñ÷Ogf2ËyßsÎûşŞ-.·{çôdh>ñeg\\îÿãŸ®[¿îÍ—?û˜mBÑDKø_âÿ)Ç!\Z¡³¹	†ŞS“|²×\"—\0”í®Äš·?ŒÒhlÍh^ÑµKS?Ï´X¶ì¹I{voÿïg]CõHìäßƒš†X4bÙ\'9xC[§²¢ ÿìa½9<Gáõùa¬)3+¯´p\nìÛ[iÅã^ûäÄ$’NHÃ4‘êq#==Ej„&\0ØÓï7É/øÛ»çşÇ–Mï/]öô_¤	ç;àx—“B)‚¾.tµ·ŒYquÀ\n·Q²úùì«©Ã›ï~ˆÎV_y¾¼àÔJM1ü†at-ÙYÃ\0`óÇ%îÅO,\\ù§sÒ.äxü¤§¥‘PĞÊİï›/x‚mv	ïm*Á·İ€—\\Ğ›b.ğ5w@PµD•›@é×R‘Z^¾;×a=nwŸ€Ö@§@O©¡É`³KÈ:ÍÕµy½çQ€ùóç¬¨¨¼§áHí¯_}±£N[ø–\0ÀºÚZèê´(\\jíD£°ÙlĞ4u‡áõ··àØÑæº<‡ğÊD;¶ªĞ\0/cÌ÷LYU¯ß½jåŠ§\'O\ZS4uÚ¨Ñ“°,æp ıV²ÏÉc³ÛP[Õµ‡ğä#÷Bî“3h˜*«\Zu—ìmïú\0\0UIDATº*.İûµœ\0íãòs9»Í†X<ÑûİT‚>åde r2zşSÉ¢-åÇ½ò+)ÀÃ<bD£…MSm’xi}íşï_ûƒ‹3gÿü&¸S<PÂÑÓæ®9ƒ¦©ğ¶¶ Z~rÈƒ(\nÃØ²mJ?©0¾À>‡®|xÁ O©·j\n‚ ¤«¸¤â8’ã±Ç¿©¦jÏí÷.ø\rô„rÊ+ˆRñXñdà¨}VxÈ²Œ7_÷C8öŞİ/‰\"jê ¾¾áğHh»Èéù·_Åô¢sÆXñŒ³ˆN¼’0ÃĞ¬ÁPt3Ë0M’¶QNKV®|!óàÁÚ©¦aLöû}gyÛ›&åfg{å4!??#‡#mÈ`è	J<ñ¥„\r‡àmk*+àyv»Ã0q¤¡%;>ÅöQ‰±myNñİ³¬–\Z\\P‹†b Ô[\\ZÑï˜yvÉÒ³×½ùú¢%O?›$Aˆ^îÂôû`\Zæçnfb…ã(Ç)F~Ş0üğŠKïÙ}ÄjbU²£n˜9f´-*­<#`qñb)++;½şPä÷û½¢hóTí)»lÂ¸¨šI¡$¹‡İ’Œ†Ùû8\00f\"5ÅÉ&¥ƒPNWÖ­[ÇÕÕÕ]~ ºêgû÷í¾|âø‚!Ã†e#3#ÃÏ\Z†”ô4+¿Ş0`¨Zo£¤ÀQ\n^\0‚ŞÚ<B)üŞø;:@Çí‚ªª(+¯Ä{[¶£¥©½ÆÉŒc\\âGi\"TWaÃ@D‚”ÒØS%ıîÙµëÖ9—-]úê¯qcÎ˜	ã C§\\d«o±PpÀ»ŸR\n§Ã‡-C8ÅÂ€a|ŞºNà4·v`Í‘à^ßlÆé‘_€ßÿş÷÷íÚQz31ÔÜxBå«i3\réÙz\nC2¬˜ÈäIã!6lÙ†M[Ë“=3.¾\0cFç÷éeÌ:¥â‰„]Óı*ˆT€W^~eÔª¿ÿ}Å%Múş}÷ÜÂ‚‘Ø_S‡Ÿì†¦ª=2š¬XÔ*%à8!5y$‡\r±Hûªk¡¨*&MçÑÙÖ‚@g\'ì;˜iâƒ­ex{s)wÊóSœoOI÷ğÌ¨²WT3@D)P\\RqÊãuåŠœ6eü´oõ‹lB`2İŞN0†Ş„PJátÚñä’—ğÙŞXQü0X¯å\06I@Ùî½ğPl°™Z­Jè©kÎOóæÍ½»pôĞÇîşåÑÑÔ€ßıiFå\r)˜;w&!Á@GÖ€‚O÷Vã±Å/àùwaxŞ0²U7`ã>f1Æ ˆ¢ƒR*øyı`Ë–-ƒì>˜wçÏG\\}İµ€\"ãÁ‡â`ıÜyÇí(*:<ÇPÉî@<EcS¡–“İg}­<·ç—¿„µomÀğágaæŒ‹1ù¼‰ú}x½°;ìğúüXøÌ*4mÚuîĞÌ²ï…–²P8¾cqÙşÓŠ¦İ|Ó-óã1ÿ=óçßC–¿0í‹RŠ@—‰häø»?ùœËiÇâç_ÅGeåXùÔCHKñ !+½5~N‡‡š°kOuÛ(‰¼¦FÔ`ñ¶½ÿ’õ_Rº-ı½·ß¸öí7CîöañÓ›át¹ğŞ»«ÁÛ`rŒ1ääEfªÑ`\0kÖoÂı÷ÍÅœ»~h«ª9C[Ã1Ä£Q+cXÁsÏëGı÷S€%K—İ=¹hÜˆ«¯»j¤~ø	¤¦¥âÕUK H\"tE/Šğwù°qË;¨«;‚ŒŒtŒÈÏÃ°œ¡ ÉÒçÑÚÖµomÀÄ9Æ‚p‰pşÎ<x\"û]>‘xyf^Æ\n-jº|zÇ–ûn¿ÅSã\rÌ¼üŠ™ç\'u,3#‘Hç ôA¡C‡·de\r‰\Z4¨ñÂ.¨\r†‚³‚]­Ÿ-~\nN›Ô¯ş¯/,ŠÙ\"šüıš4RÂå°ãéå«±aË6¬^¾Ã²‡ –átXóÃ‘(ªjêñw>Bº©­ J¤”şËìßêêƒÒ<ƒ‰ÀÃïó£ê@îüÍàíN(Á`/‘FMÂñ…#ˆÄâ¸|ÆE`‰nôP /Àæp\"‰€«÷!Ï& ±ŸTí«¼é[~\0˜\n>.ùÑX>ş LEƒé*>şh;Şzo.œZ„_Ì¾¹¹9 ŒYõt=)ğ8XS‹‚‘Ã1ñüs¡…Â\0¡HD\"Ğ5n—å;ö#Šî¹4Ûó\\\"\Zé°»İm7îPfßvÛõo”í|häğœqÓ¦LÂØÂÑPÑP`“Ï…@(‚Æ¦}Í¯u6·´™qÉ…ÔÛÙ…·û”F(G-¯£³¹ÉÊ,N–xÖĞ	AàñüËk°ôåµøé¬«ñYÕAl)-G4.Ãç ë^_ÌTôy©®m™LŞ ™Ì_|Œ¿;wüèÊ“UE \0/ˆ3j˜œèÇ¢0´µw\"#cr†fCï!	i˜ã1BÀqZ;|y¾]„~q?àx^nomC¸ù>ÛóŠÎ\00¡înD~ÔÕBÙgğ‡?ÌCîY90e¥w*F(Ç!\n¢éèQ`@O³g„“íÒ\rÓÄ–’räHt­¡$\Zy›­}áÆìÆŸŞ¶°jÿŞÏ,z\0W_ûC´64âı÷7£`ô|öL€©@ò=µ„Âwy»rZ::±{w%BàqÕ„RPB¡È	t47B‘å$ÿ`=ïr:ĞâñgV¡¼|ïÑ›¦ÿRgíÁ´×*«3Bx;Ìö4»Ã%	İé6.l“ÌV¦†\"šÉº@Èé3^§@ccÃÙ™C®FÈë3Mäæd!%ÅıyçB@‰ ‹G\"U\r”ãÁ‹¨ÉĞC@ú;Ú‘ˆF“\r¨€ƒG\ZàâIGX?#µŸäå}¸yû®Â›¯¿\ZJ<†¿Ş£‡àïòCxìØ³?¹qrór¡FúÓ¼Ç#\rÃßÖ‚ÌAƒPW·	r$\n›$ÁÛÖŠD,Ç²ò\nì¯®«¿lXz©îö?[^Ç.ûÁÕË\"Ş¦97®AÆà\\?ñWlÙº\r¿œ}Æ@w÷&s¢\0ã\nG 	\"îºëW€ªB‘åãwKòÔSqÄÂa„ºıĞ5­×êç8v»„²]xbéËTõOÈ_A†TQ8·C\"„ğºªj¦™0˜œĞbê	€D@H<¿ÿ—aw8‡«`\\n&xŞjKc)*B˜Ì„,\'àïì€šˆ#=53ĞÙx.O*cˆ„Bˆ&KÒ)¥ˆÅØwàòR™ª$úµGé¯\0Núâ¦Úc7<óâëÙ5‡B©VpÙES–ê?DcS+Ò\"^/Çã¬dL\0„ \Z	¡³¹†n`\\áHäËÆ/u7æÌş	§§Àn·¡©¥‹W¼ü4×:ÈÑÆgËë”{Ü{ıİesŞ|{5şûŞûP¶óS¬~e)rrs Çâ½ıt$»\rş@ËW¼à¼ó&bT(d•÷Ü“”Z³’BODÃ½{„o³I0M‹–¬ÂÚw·z/ÈÏ]9Âéz_‹G}&!`ˆëªÊƒÁ’\0¡:\0\0;SBï#«útoÕU×ÿè2ğ<†£u!Â€¬(VÂªj\rÑæyéi©PU-­p¹‚½åæ”£V×q‡ïoİªª;»l;5™ô3¨û)À“ë7ïûíUÿlã[oWxat\"¡ˆ·ÜqßÈ±cF¹xhimG¸ÛC•aVŸ[.ÙUÃ€ªÈ „@°Ip:˜0~]ñfë‘#‹ƒ‡däñ<O\ZZ‚\"·~¤Ç¶^Óøğ?W½ <÷Úw?úÈ}px2ğâòçñÏ·6`ËÆ5ÈÉÎ:.‡@°‰èğvaÎ÷â†Y?Â­·Ş\0˜&Ôx\"9ËŠ)$¢ø»¼ˆGÂV^a²-<˜U1är9qøXşR¼-Mí{ÿ}üˆENS©V5BÚŠK*zîô¯%²7Æ¤9ßİüiÍ¼ƒ‡\n…#\nGÑŞáE^NV¯Òã…˜ÌDJŠéé©hléÀ¤sÆZÇÄêDêö8q¤¡/¯Ù Nä^i$\"íÙ)ò\0\\\"²«h½‰¥LÃ´qQƒä´57kˆÄÇš’}ä¼ÿ6á{“\'Òü¼¸v¸]NH’»$AÓu„£1¨šİ•°cgeõ5ã†ÿr¬5¬ÉÃ5™Ù¦d8½Nb4«ŠÒ¾xû¾˜8µ~Ê„1g_4õ¢iu6áÉ§Ãœ‡Üü<(É{½\'Fyóü……£qëÏo…\nZmVG9¨ªŒ€·¡@w²P³O4Ñ´:„¬^ûV®~[Éu9^»fôĞ×L9Ş®2t€î¯cwŸ<Zô“±C2Šç>ğ·{–?ñG3»+öcæ¥ÓÀ ÷!¡\0+:Y0\"{*÷ãÒ‹¦ ·U„£1¬{ÿC¼ùÎÖÈP.wÊnèW—\0œD*İ›;½è˜yAÀÛêG¹ùò1éNp|ªOÓ\'íØ\\rÎGœ0B3ÍI”Ü¼Àñ.·Ë‹%¨]\ZeEÕmºV5ŞA× Üİj>7X$FF¢†¦úÀ$dÚ•W\\B\0›?,…ÓåÀ¬Y×@G~¤Û‡õ«6âÓŠıxò‰?ÃŒGa2ÊYÂ]^tû¬\\¥ =ÂO\0n—5uGğ·ç_Å¡ú†ƒÓ†]š-²r<\Z¡m\'Æ¾i<öÁ\'lÁåSjŠ ÎYğèì¡Y™}5õp{\\˜9ı{HOñ€xˆ¼\0€AUUŒ1«×n@VÖ`BPUsGµÈ‰P¤|â`ÏK©ÄØ¯ªº¯¸´r@Nü¤Tp2¹—K;½ˆÓUU\0S$Ø‘ôqx!Å0L‡a\Z¢n¨¯ÀF%-ÚMj‚\Z	]–ƒ ´½¸¤\"š|ŠîP5;<7`\nŞİğ!.™vD§JĞ2®	!ğw¶Ã×Ş†âe/á¿şóv–%d\ravyêî†œˆƒRú9§\0ÌšÃFğ·>Às/­U‡¹œÿ¼vìY¯@‰·Ê*óPïåîSP5µ{BŠğèpêÚÕØÕ5ùÂ¼¡ü®’ò!;wU/ÚÄ¡¢$\n6Q$†a@VU3É†¬{ï­-ºœ]×8Êã86ÔSg¨jPë!\'ÍO<íh`r\02€ĞÜéE>è²‘‚\"Ç”8Ç@tPAˆ	BÃ}·x\0?‹ºx“¨?tW^9£·“å8„»ıˆºÑÜæE\\Qqİ¿]–A(…·¥A_WÁÃòë%IÄşÚz,}q\rª«ëk§Ê]’m£{‰h\0„v—TşşL¡¸´’Í^ä“XlSaª´‡1CÌwØxÙ03!qY:W¸»K\0²=nÙ°Ñˆ-Ûãy>b\Zœiêšb\ZŠ¦™ˆÄß·q |å|€¤‘tF$#­ß^^‰üÂs@\08œvËç¥Ô:Ú}^‹ÀÑup„€P‚X8„P·\\Ÿ¡Ì„ˆ‚\0Ip´±¯®Û€­ïôç§yŞ¼fLî;Ó[	ÓB»¾LÑÆ7‰ä&	Ì^ÀéŠB(A3‹(N2©E_š¡.Âj2BTYSc 0¢ƒõtÛÿy¯`\0È4åµÏ-õ.¿¿{P4GcC3İ2øâ¡tU…Í&aÄÙÃàq;ĞÔÖ‰ìü±0”fØív«p”BÕT>Öˆw6oÃG¥»#©<ıàª‘9ëL¯Ó5¢ƒt—~»vıÉb e\0Á¹Ó‹ë1k)‡¢¢_§¹ÿúqÇÌ‹~¼ãhÛ¼@<Q Úli£x§DW­±²v»›$aÏŞ\ZŒ;\Z3/»r8€¬ÌtH¢ˆXBFcK;*÷×¡¡±µ#İ&îš08u½Z¦jQFˆ@÷·å®ÿ¶à[£\0¿›>ÉIq¤Aù\\]°e%4İ#Ë\ng2F8c²,SEÓİ¢(8:}~‡n2Q¥\\&8Şãòx$5‰ÌèÌpÙëóÒ\\ûCíĞT5j¢Wğß˜?ÿÿ	ß\Z\0€¹Ó‹lÌ\rÆì\0xB{Ü¸dO\0€RJ)¡”c„\n&ƒÄqo\Z†FÁ]S5ƒANòóádŠøw8	¾U\nĞIw±o,=Úç/X’ªˆ@ \räm|‡ïğNÀÿ¦î[×5U3\0\0\0\0IEND®B`‚','Admin'),(2,'anant','pqr','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0€\0\0\0€\0\0\0Ã>aË\0\0\0gAMA\0\0¯È7Šé\0\0\0bKGD\0\0\0\0\0\0ùC»\0\0\0	pHYs\0\0\0H\0\0\0H\0FÉk>\0\0\0	vpAg\0\0\0€\0\0\0€\00á1š\0\0U7IDATxÚí½w¼eWyßı]k×Óo¯ÓûŒzC\r	À€\r˜â\0–›¸ò~ìØ±ß¸`\'Nl\'óÆIlÛ`ŒSD¨ Ş5£¦Üéõövê®k½ì½Ï=÷j$Tf„p¼æ³çœ{î¹{ïµŸßzúó,øçñÏãŸÇ?ÿ<şyüß8Ä÷ú^ÃóÕßë›}5Æ?5\0ˆïòó‹³~Ÿÿ“\0È÷;\0Ä¼ïõó¼_9VşN?ÏwÎ„ïK@|¿@œãuåg\0Úqùºk®ÉmX¿Şíêîvòù¼m™¦Q*—»LÓtÚ_T*^X\\œ‹ã8Ã0jµZáüü¼üÄ	ÿñÇ÷‚ ˆŸç^:ñ}†ï\'\0t¹óçögÅbQ¼ùÖ[‹[·léYS,7Û¶½Î4ŒÕÒ0¥”½RÊ^!„­µ¶\0Ùq>\rék])µ¨”š•š£èl†\'›wtjjêÈáÃ‡ç¾öõ¯Wc–s‹Î¾€ğj\0àù®ñbÎÊÕ½Œè£££æ»ßõ®ş-[·n­”Ë×¸®{¥išK)LÓ,†a†iš†!%ú¹· ÓÏ´ÖÄqLEÄqLÇQÇÍ(Šfã8ŞÁîF£ñäÑ£GwŞ}Ï=ÓOíÜtœFñÂ\\á\\¢ë{¢_\\H\0<Ÿ^9Iı\"ş^¬Và8¼íG´÷Š+®¸¢«Ryƒëº7›¦¹Ù²¬ŠmÛÒq,ËÂ´,LÓÄ4LËBJ‰LA€HO¿Ï€(\"C¢(\"ü  ‚z‡}ß¿waaá[>ôĞÎÏ}şó‹é©Ëğ|s€ºä’Kt«Õ’‡~U9È…À2yüçÿó+¥ÔoıöoOÎ/,d“^É.Ÿïád„k×®µnûà×lÚ´é­ù|ş]®ë^aÛvÙu]á¸.mc;¶mcYVû0MÓ4‘†)eûU\0´ÖÉ¡±RÄQ„R*ã\0DQÔ>‚ Àkµğ}ß÷ñ<oŞkµœ_Xøìwî»ïŞÏşóóßeí•ÿ¿ñÿV¶mİrC†§~êg~fOöùŠ×J¨E|è¿ùÔ§ş¥eY?ÚjµşìÁ‡ºëÿüå_6W€@ã2#şÀÀ€ù‹?ÿó[Ö®]û#…Bá]ãlq]×Êåräòy\\×Å¶mr®‹“Ëµ`\ZBÊ„àB ÄOWŸJ)T­\0@†AĞ@³Ñ ÙjáµZõf³ù©ÉÉO|ò/ÿò¡={öd¢a!MÓäçîçú.»ì²7”KÅ5\rãêÅjícıÉŸüG»@.ÌtŞNj¥TÎ0Œ7‹Å«Ş|ë­_Ú±}û_üÁıÑ3333q:9Ése¤´m[ü?ûØÚ;v| X,~Èuİ\rù|^æò)á3ä\\Ë²/—t»N¢7\0¼ĞïµR¨71@\n<Ï£ÑhÆ;s¹Üë~õW~å¯zè¡ÿóŸüäxFT)%şĞ‡ún¼á†7—+••]óšõı…|5Ğ‹§ÎN4:hòbDÈ+ç\0Jš€0Š„B›¦YqçÇ7lØpÓı/ÿå¯Ÿxâ‰Ïıéÿøã,G¹ô[ßúÖâ»ßõ®êééùù|>y>Ÿ·2Âçr9òù<ùBœë¶å{v™|ÿnI“ÈJÛ¶q‡0‚ã8¸®‹ã8är9\Z®;hÙö¯Şzë­×ŒŒŒüáïÿÇÿøô‡~ìÇú¯¿îº·VººŞ›wì«ÜÈİÔ\rån›]gƒ¸ºXõRšt²ÿòI¼âq¡8@¶ú\r@6Zoo˜ËåLišØèær¿ó¦7½ém[·nı³¿ûÜç¾óàCµÅÂ¿ùÕ_İrÉ%—üB©Tz_>Ÿ/•ÊeŠÅb{µg«ß4Í%yş\"Xüù\Z™8B`¤`p‡ Ú\\Éu]×5\\×½Å¶íUÿëŸ¸»T._S(ä/-\Z‘½Æ˜cØõ±œ\n¡Öø¡Š¦¦§<À\"’ÕÁ\'t> VFz~³ÙlQ)Øzİ`¹¦&6J)+ŸËİ˜Ëå.şWûØ×^ãù×ŸúÔá_ùå_~ãºuë~¥X,^Z,•D©T¢°bå[¶İ&v\'»‡Dvg2[©Ûv0ã‚<¼Î{Èô;SDÇqN•ÏoéîéÙbKMŸša8:MA Š\0Ä\Z‚HÇ“““	\0 @ü²nì%ŒÁ:5w0Ã(2c\rCEuf¢<5³›X)A¥X*İV.—¯¿òª«vç\\÷õÅb±ÙªÏåÈ\n8¶‘jòPJµÍ³0‰ã¥½²T’\0í	§Ü@kmÛmáØ6ù|R!‡¨¡´p€b0Ô\n¤Ûşû(Ö„q\\›ŸŸ$\0ÈLÓJÀ’°¢(²b…#MQŒ†SÔ£ij¥øÅ\nA(Êåò†(Ú ¥lËS7e¥n¦à¥Ú<$+=C‚ÀOˆÅ(­;Lì{êeİüË¢AJ‰iš8~9ó4ÖÔ.dÔDÊ*!õÒâbÂÈ¯×kÙ¢i[@\\`1p¡8À2E0#©0N€,‰(·N’oMÒêİ×½™Øè¥ŒÔn·m+]õrá}ß\'\nÃöJG€ò97¢Ô«ï]C¢‡·\"6‰K#¨(À:ñP›²A~Õæ4	\0^5ı…4Û\0PJ\ZAØ©Öh,P<û¹ú)¢Ñ«Ğ]k¦İ~x»ÏØkGxOEh•Ş{®§U³dÏ¿1s\0%÷#\"Y”‰#ñÅOHÑ³zÖVH!“RC%¹ç@A«Àkµ:Ÿİ«‚)Ú PJI R\"5ÓÉ[.\"0çbÖÇQƒ;`Ó-«b¹ŒŸ QJ%\'~r]èåÎ—:<¯E«ÙjÏFJ‰ÒHÀÙy¬TFÏ}C2‰>I	Â@Y„„J†auvv6âUĞ]H\0¤\r¡•Ji%–âoZÃÈeP…é10,dymÚ¹ôâ8Æ÷<¢8‘™Ëì}^8¸Èb>/èâC)&\"!$eõR ¥Ñv7·MÓºS\"\\wQÄ;@„D)´Z­N…åU‘]\Z\0\0¢Z­6â8ŠƒX£M±Ä Mw@ÿÖ„RB.#dEø¾Vjy\0§óäßíâ\"á /j…vŒ„sˆDÄ^(ŸNşÓé(¥ƒ€(‘†Ä4“D§Å²ìÜ¥A´ÛG\\¯â›e\"\rAT£(\n_z,¯\n\0ê†GqÄ‰q+\r!;^ò¹ì<c‚ q£‹—@¼s¦ù¼L1 HCvœX,¿Æsß 5mSÔ0Œ6–‡ŸZ+´´Ì\n¾ª†¡Ç«ÌÆ«€d½hM¨%J˜„—cc9¹sşRŠ0L‰ÿRWıù” ©2úœ vsév”Y¥ÑDÓL\"’KsÑí—¦,ê–ö¼–ïşEW\0í¡´ 9T®YéóÜŠ\\\'~)_õçñœ!„X¾Ò_ä-‰\r™Ùª”Â²¬„¤_R¢¤	RŠÁÁ¡«¶oÛşûìo¼šó{i‚ñDf6Ín”´v(Î}ùDÛÉ!“UøJøîb Ódì4…”!—9yhë#¢ƒXöyû3Ú¯J\'ÑD­Ó©“ù	Ç¥¯¯ïuüànb):úª˜‚\n\0Ï½y!PHZf	-_Ø„k?øs<ü—s´‰¼‚ÀZë$Ä«5Z%ÄQ©éø\\RgX¹­³¶qÀÊk®‰ ´Jä?\ZÃ40-;ÉeÈçİM›6¿ûúë¯ï=Ç3¼`@¸Ğ =‰ä?‰–Ö2çÎóà•}‰2$šúÒê{Tö^AºR3£H‰\'X±òÛŞÚ•^ÛïwB,-½!D’µdÛär9*•Êïzç»ŞÀ¹]Á\0çºQ	CJŒç=A–¶õİ-%†i\"årïé9“ùS¢*­PJ·„ªÍ¢U ÚÓİ(!ä2Oå‹ZkâôÈÄAb)ØI9ŸwV¯^óo¸±‡W)p!9@;*844Ôç8İöë· wUf„<çŠM?~vœÛo¿§zŠ0Š:¾ŸÙ¿Î•®:Ï“²ãsœ_\'KôœùX¾ïóØ£rç·¿ÍÜÜ\\ÊŞéTîSGŸãÔ’Ğ:\r%\'\\Àq]JåÒo}ëÛ®§#ŸâB‚à|`eHä7oÚtC.—smÛÆHÍ¡L¬$B{.;ë\n–.µz_ÿõ_çƒø\0ïÿ¿àşûïGJƒ6tte9!ÔsVcÂb•~¦Î™5!\r¾üå/ñş÷ÿn»íGùãÿüŸñ}‰t\\¶óÏš8›gzDÍf’ÁœDAs…U«W½kË–-åWç\0çÊÛ—€ü¹ŸıÙ7\r\rİ’/°§Í6—ˆÏóËæ•Ÿ“­~A­Vç©§¤Õjqúôi;–<ÿçYÍZ¥ù|:ÉøÍ@—½-²÷\\¨ãPZ³ÿ¦§§©×ëìÚµ‹f«Ù®ê¼÷sêX£â\\\'H”A0¤Ä2-ÇÅÍ¹”JåßõÎ¾4%~\'\0Îû8™+³€À¬ók¿vÓ—_ñ=½½ƒ•J…B±€ëæ°,+õŒ-…xÛ«>#ºêxüégÙªÔZaÛÁÉ\'¸şúø‰~”îî$J¨—Î“dU.­Ç6cHÑÕ&n{¹f¼bùgÙ‹‚R©ÄñcG)•ÊüìÏı—]~ÅX:ÅOç\\:ÀœİDv~­u’†®Tšãä„`ñ{îy$Š¢(ÃpôÊ‰w¾\0ĞI|ç7ÿíoŞ|Ù¥—şÇî-===”ËeŠ¥R’äá8©‰·ô|;Y¦ÈŞŠ›Ô¢AÄ\nfçfÉåò”Š¥eV…`	PËÇÑÅ²O²Òdú›,j»ò4‹‹ADOOÏRğªó‚:=ÕÊÏÎñ\0µVøA@«Ù¤Z­2;;ËÔÄÄØW¾òåşıßağÓ#æ<á•r€•À`üÚ¯şêÕ—]zÙ*W*ÛJ¥…b‘|¡€4Ív¡†è´;L·,T´dÊµ©´ôV-9jŠ…\"¶e·9H[Î³\\\rhs™e\"‡å¢FÑfáéK\na[d%ßO´ö\\JU•r“Îëv,ñ™y•Vøi6SE„aDà‡„a¹Ë¶mºë®;ww]=÷i¼²ñJ]Á+ ê§~jÃE]üÛùB~{.—ÃNË´\0T¬ğ=Ÿù¹9šÍ&sss,,.ø>Z\';İA`Ã0(•J‹EÊ•J’ríæ(‹X–	:Ñ.½3œ¢Ó¨èĞÎ³U˜qˆL!UJuL)cÕËW±n³\r½ôY\'@Wx£(¢ÙhĞh6i6ÌÍÌ²X]$Ãô+™£*Ñ;¢(Ix©×ªÔë5küìÙw•J¥½µZí8p–„dwq^@ğJ\0Í5#¾¹eË–ÒÕW]õsù|îFÓZ2ù?ˆ°mÁ={˜ŸŸ£P(ĞÓÓÃúuëqsn²¢;eV›W¯Õ¨V«ŒA’\"†a208Ààà ¥R’@š\0¨Cñ[ˆe$K_&&ÎræÌi†††(äóLÏÌ \r6¶SÌtÇºóÓì ì½×òX\\X`aa3gÏĞh4‘BÇù|îÖ¯ßˆmÛˆ4“¸Hçëy-æçç™ŸŸ£««û²K.¹ôº‡~¨h\0^Ç¢{M\0 3ÿßøğ‡?|K¡P|¿”†(6qŒïû¦E©XàÊ+¯ÄÍåÒL]½,éB¯ü_/WR”Ö´ZM\ZõõFññqzòÉ¶8èëïgõê5twwãº	{îô´¯“*sããgùãÿüŸ¸êê«P±Â0\rf¦§yì±Çøàm?Æ†\rÛœAwğ,7AkM­ZcjjŠcÇR«ÕRR®”]E9f.ŸG¶-Ÿ¥Ù¶EE:×XÅ8®“Ô\Z86¦i–Şó÷~ø¡{Râ,‰‚ó‚—€N³Oòæ›nîü°²¢•ÆT\"˜…ÆT*\0Ç4Tš±èì,WÚ–!»ší¸ØKOokÖ®CkM½^§º¸È©S§xü±Çˆ¢ˆî6lØ@__?®ë.o’:`Æ\'&Ø³gƒÃ”ºúÒàØ‘#9r„F½–‚é%…2½•jµÊÙ³gyêÉÇyz×.ŞtË­lŞ²•*]]˜†™\'5\rc…Za…´b‡b›9Ÿ¤”ÒÀ4LJåò®»îúO?úè#gR\0d)ãßsÍA\0âšk®ÙÔêµ]-Ï›Z˜ŸŸ–R–6mŞòÖ®^·\\.%5uqŒLW[NëNN˜æÙd¸Ù…Ü[£Úß)Š‹%FGWÇ1LLL°wï^lÛæ†oÄq\\”Vm+ÅêÕkØ´yOïÙƒ™+bY»vî¢·¿ŸU«W£âTóTˆã˜ƒP­V	ÃˆF£ÉÅ—\\JooRJ¨TºÚI·U\'Ø5Šåú‰NC™‹Û´,×İtùåWl~ôÑGÆy®{ø{Æ:‰/óßøÆÑ§v>õKÖÙ³g­jµj¼îu×nûÈO¾±\\érµRDqŒ™ÆúSİ§­¹‹ö²mÂQÒl6iµZíüÀz½N³ÙÄó<<¯ÕvÜtÆ”R¬[·á‘=ÊêÕkpóùv9¸ĞšJ¥Â¯ş›_çK_úcûŸÅó<††øñü8Åb+´€f«…cÛíğòåW\\ÉääAğo{ûö=›ŞºàÔÉ“x­›¶l%Ã Ÿ/P,–(•KI%³e·«šuJÇNQ%:A`Zå¡¡‹€‡XJïäÀ¯/\0â\\?ï?°ßÛ`ÿP*€½vİºUR\Z®a(­“r-­ZµÕëv”\rˆâˆêâ\"Õj•™™¦§§;´óäJ®ã&Õ6¥2İİİäò…e%ZÇ#ŸËÓÓÓC¬Õj•‰ÉIúúpr¹ÄÂ`‰Ë¬ZµŠŸúÉŸd÷îİLLLpİu×308@Çi]Âó|ÓD‡HÌÏb‰;.¦X*âØaÅ1W\\y5q%I qöm4\Z4ê\rN<I³Ñ@+•úAår™ÁA*•.Jår2—4.…Ä0L™Ïç×’øW\"^C m/iÇÏ±a¬]»~›c;”²]gGqºJ%B\n‚ `jrŠS§N2==\r$²áá¶ï¸(©¯ËåÚŠc[9ìÈ¿Šã8å\n\rv?ı4Fƒ-[·E†4(–Š†R*@2¢0¤V«ÑİÓÍë®½–,Á3N	—¤\\*%	kŸœœàÌ™3IQ%æj?=½}T**]İéõ–|\nKb\0ÂÀosµ¹¹Yáû>¦iÒÛ×ÇààP¢+¥QGË²û‡††óãKbà¼(‚/\0ËhKÄÏŠ# \Z¶+•ÊjÃHL³(uvXV„’ ğ;x€\'N Ry|ÕÕ×ĞÕÕ•°Æ”Ò*q\0 â8Õ¾¡V«177ËÙ3g˜šB\nišì¸è\"úû)•Kòyr¹|ò·©2¶4	\rR/äÓĞpœe/¶\'–ˆ¨ãŞŒ¬^Íèš5h­	ü€úâZ™é)v?úQ«‰V1}CÃ¯^Kßè(Åb)¹’¬X)\rŠÅÅR™şA¶nÛç%&äÉ“Çyü±ÇĞZ±zÍZLC\"„(Š‡x% #~Ì’v\Z¥G°~ı†²ëæF?À÷|\\\' L#‚óT«5®yİµôõõašfÛ[F´g™&S¨˜…¹y&&Ç9uê­fË¶\Záª«®¡\\©P(ä©Î­ôŒ•/[&Ğ!,{ÉªS/cT*“#ğññˆ½ıÛ¶“¯T.±ú¨•Šˆ/şã=ÌÂÄû„äğ›ßBï¼\r×u\Zahh˜rÊæ“`Pv?\ZÓ2éëï§·¯Í[¶qôÈa<¯…t\\¢8\n}ÏËŞyMy¥\" I½D[·n[\'\rYX\\\\8cšf¿ã8¶›Ëa‡!¡iÒ×?ÈÀÀP›Xa¥&ZFód¥W«‹œ:y’#G!½}}lİºîîŠ¥RGdQ§¬;‹géÜI2‡Š\"âN‚†QàÏÏT«„Õ*Şâáâşâ\"Au~¿Z%XX ¨-ùq L‹7şá3ú®wQÌ»X¶\nCæw=Exü8%Ã Ål\\¿¡›ßÈÌÔ$Çåğ¡1lÛfıú\r\r¤ÜI·½™¤D)$££«X¬.0?;‹ïyÕ™ÙÙ˜s‡…_‘x¹\0è4‹ŸÃş»··]­VÛóğC|éïx×OŠ…õyßÃqœvN@ÒÜa)5LB…!gÏelì\0õzî®.¹ä2ps¹4a_G±ï£ÓU=ŠÖô­Ó§hÌÍÓ\\XÀ_L…‚Å‚ÅE‚êa£\nt¡ã¨0­;L¹HE€Nsú4‰Kûè7¾ÊÖ·½Q*¢°Q\'lÔA&I$Â±±zûÈåó¬^½†ÕkÖÒl6™š˜àØ±£<»w/}lŞ¼…®®n ‰ÄqL%ı‡? BjµÆ¤×jeec+W]X	„q‚ÑÑUF³Õ<ùÀ÷Ş³÷™=›o~Ã„ïõ¯÷<Ç	’4®´¶¯3øãûÇáÈá#ÄqÄ¦Í[X½z\r…B!}@šH)üÉIÎŞş¼‰qŠ62zë›qs.eb¸.ÙÃS¿÷qf«U‚(BGh$YÆB ŒÌd!;:~Xæ9\'™¼It!§î½‡Ó÷ßGÏû~Ô&&˜÷=!°Ñ®‹=4LÇè()k³m›Õk×²zÍZ8~ì(?ô\0ù|‘í;vĞÛÛ‡ŠQ\'A¢ Ä÷ıÖäÄø±WH§€çå33Ó­/|î³_›r¤”]ÍfsÁ÷}Z­V’bšHÃÄ²’RpÇœ<qœİ»wcY&—^z9CÃÃ‰é¥4Q§«P\'Âó8ö™¿¡~ì(=—\\Êúz}[6ãÚVr¾ÇÌì~œ””Ic)½;é™•o¯¨ô•K+>gÇdSŸ…Ô …AX¯òô_~’\r7Ş@ex„…Ãc4\ZuGiºsyìáT§É¦,TC©XâÒË®`Óæ-œ<qœGy˜R©Ì¶í;°l‹ ğŸV³5{àÀş#+Ü¹’^u\0¬Båû~055Ù\0Œ8[­\0ÍF+í aÒ0X˜™áÉ\'\'®¸òJFFV%A”¶]pJ\'v¦ˆ±èyİµ4eñà~Nİş6ÿë4\0$¨ÎÌàGqšZNÒ*.Mã–r)ô‘Öí\'^Š@K‘øü\rÀ”\"ù9›¨\0!LN?úş·ÿÊ5?ûó¿÷t‚”4”¢8<‚ÑİMÜÎbaÉ´H¦Ja[6›6oetõZÆìçû¾ÃÀ`¢~ÀìÜìî½{÷L­\0Àyç+#({íLiç¬[¿¡;ÂZ¾PXe\Z¦eš&BJ\Zã©\'Ÿ`İú\r\\{İõTºº©Riˆ}yŒ?‹ÕËB3Ü‡ò<¼©)Vİr¥BÏc×ßş-{v\'ìŞHY¾L+„ ZZÓÒš@‹´#“@‰Á‚68B­	”&Ğš8W)Ak&ÙÃ¡o‹³»v¢S3S+ÅÀMo`øM·‚ifÒŠT7:æ§4B\nº»{¨tu3vğ\0GBJ£±ßŞO?½ë©,)$ Ñ±²&R¯ç³yÎÊÔ°v”pff¦öìŞgnİ²u}¡XQ\ZöîİÃÔä¯¿éfÖ®[—šzÉ‰\Z©[&+ÚĞ\Z¬î|ïìüÙYÃ`Í-·à-.òÈÿSêãg1™®şJš*!|œ)yRb¤ É¾×~ß‘°¢R@Z¦ÜHqDcz:ñ#¤CZkßõ^º.¾t)÷oÙ¼ôRë\Zø ¢´ë‰V1•®\nóó<òğƒ\'¸ÿ;·{7E\rô_‹\0/pHÀ¨×ëªV«E¹\\®922zù¾g÷ºZÃ\r7¾b©œe)c‰àËcûí¨42—Có<Œ\"Æ‚ë2~hŒg¾ğyT&V†L\\Ä±€ºÖKuıB¤5\n	¡\rI[?È>ËJÓ–”ÄäVc L‹´”-oh¥qzzÙø‘b÷ô¬H|íLl]ÊRŠã´õ¬çÑl6iÔë!÷í}æsc÷—q`–%pŞRÃ.„è|ß™/`9szqxd¤’/¶ì¸èba;ÎŠJthÚåSË³‚—fRİõ$şÄ8‘ïóì}÷3v÷İDÍFÚ\"6)ïÎˆ§Ä7:ÀÌ‰êÔ‰¡“¶m1‰@‡NĞÎàIß·¹BÊB+z®¸šÕïx7Â0ÛáÎeÙÂièQøÄo4¨Õªúø±£w|ãk_şB†§0ÇÒêÏ\0ğŠÇù®áçM¢H×ék®yİF×uû—×\0®hô¨R–ß)[–L¡0ò„a°øèÃxQD-ŠˆÃa¤+;•ù”¸ÙÊNô\0…§4~*çã”ğšä5\"IáUBàP-ÏÇj~¦”Zc˜ëß÷º.¹<aÿ©GRÑ‘f–¥£Ç1a˜xI[­&Fz­Êääø³_¿ı+ÿgbüì0ÍòÕrØÿùÀ¹\0ñœ¤À˜ñMËš¹Ø0Ì|»J(­ÂI²õÒ÷ì¿3‘³C\'pGVÑ<y‚é±1\"Ñ©ğ%çõ\0¤û˜’h¦„W°ŒÕR,m“°­&„Nt\0½„t¢±Ò8#«ÙúáŸÄ,•e¶ãví@”ß÷ñZ-\Zõ:õZùù¹Éï¿÷“O=ñØ I²úŸOş¿âq¾•Àï	\'›ïíëzz{·)­¥äÈál¤0eşKE$bBØöÈ*ÆŸ|o~>Yı)c!hèÄì’RèDû×©Ä‘¤Doë\0–Š‘–j;\rD©e¥¾ë,3|íÛŞÁª›oiç3er?K`Uiú0Ó•ß¢ÙlR¯×X˜Ÿ_xò‰ÇşêÎo}ã‘”ğÍôÈ,€Œøç­ùáùæ\0ç*_Z)\n„ÖZ9|h|hhD–K•-€±Dxt:yÜRp§í3ï`§vo?F±ÈÌ“££ ]ıĞê`ıÖx©K!³ñÂwzEĞUšr ÈÅ\Z+sCÑ1“%Ö©D„DJQåâùó8©GoYúŠ.ã¾çáeùµ\ZóÕ=OïüÛ¯õKßQJÕ;ˆï¥G§ò÷šä\0/m DQÄ±cGOŒŒæóùüúì^´Î2A—dş’E/e¥5[a…µëPQÈÂ¾½ ±´tò€–ÊòíR…Nˆ¤gŸM%T¸\n´!(…Šn?&k\nq„X\n\"C.…‰õÎÉæ÷~€Õ7½±Ö®²Êã”øYƒKÏóh5)Û¯2?7;·{×S÷µ¯~é®(Šê$Àì¿“õ¿¦\nC^áWşœE´¤çyññcÇ÷÷X…Ba-`.¯¡_²Ûô_QPšÕô!\rÊ[·,ÌS?<†§5¡HB¼M­SïİÒj—¤r_@_ è\r…Háh%%!‘vÒĞ\'ÖøRJÑÀ´X1|ù5\\ú‘ŸÆtó©ÆŸ–œw®úTŞ\'™Íujµ*³3SgôáOßñ¯İÇqFøFJü¬\"è¼Ëş\r€s™„çô4›ÍèĞØØ±JwwT,–Ö«XÙJ¥5üZµ5iÕa;?ÇI¤“ï\nË¦²ı\"‚Z•©£G’B‘˜v´Ù>©)(¤ §5}Aœ50À5\r\\ÛÄpMÇÄ°M¤)1…ÄĞšº¨vñH×/sÅÏ~Œ®uP*FÅŠ8ˆÂ(ñé§qV#]õõ\Zµê¢\Z?óìıß¹û¯zà¾]ZëÏ]ù+WÿkÒüB\0ÈVü¹>oAà«±ƒ;=_.UÖ€.&mZ;wéX!SW¾*c¤ãR¾ä2b\r³‡ÑğÈä{\n€¶—OJ±¦%®XÃ11sVÎÂt-L×Ä°L¤™¸\Zšh2®Â©tqñOü,Ã¯»¥’”·lÅïy4\rZ:FF½Juq¡uäĞ¡{¾yû—?;vğÀÑ”à+Ğ©ø÷šÀ€N“¯í(\næ¦İíÛ¶å-Ó4šÍ¦ã¸sB\"#}hìàÙ–×:ÑÕÕİkF_ÇR¥ızUZÖ­Tœ)—ˆUú^¥¥Ş1Â2éÙ~Vo³Çã×ª©ìmù/D\"º#…«5†mb¹fŞÆÌYÉáXHÛÀ0Bh¥ğcEM+œ®v|ägXuó­(Kû%r>)	k4j™™§§§¦N<ùÄc×·¿yçüÜÜ,KÚ~ÆöWÊıNâŸw\0œ¯Ü²•«šıÀŠ×]wİæ«-ËÚ¤µPJõAĞò<¯º°¸8yúôé“;wî<õÌŞ½z½n\0yÀ\ZéÓ-o¾uÃÆÍo,–Jİ¹\\7—Ãq\\,Çn÷İK\\½‰2×ö$f(µËfÇ°ÿK_`âÉGQ^C\Zmß¿-`µ“Ìœ…]p°òVŞÆtÖ/´\"“T8älä`n\rSFb°À¿~-Û®¿ŠXk¢0\"Š’n¡Ÿl+ç{¾×¢åµ¨W«ó\'OôñG¾ÿô©gR\"g„o™æŸÙüçZı¯9\0tÖJ€o¸ÁùÈ‡?|cooïGÇ¹Éuİ7—3s¹¤/€Öš8Šh¶Zja~Ş›>söìgŸ}ö‘»ï¹gºkFÎ4ÍÜUW_»ıª«_÷Öş‹Ü\\Ş¶ÇuÓ²•†•;=‰²­à‰´—4$Q«ÅøSqü®;X8|å51¥ÀE°Îq¤Ä*¤\0(8Ø\'o¡r9»x°|;KW0k÷âb…EÄ/\\ÒäÆV¢İ!ÕVÄl#B„M¬¸Ô0Ôª‹gÏœÙóôÎ\';¸ÿKì=[í\0V²şÌìË¯9\0¬,?ûÓ?İ{ÓÍ7ÿ|¥\\şéb©4Ø××GÿÀ\0år9)	\'ñ„e›0z­‹‹‹LLNrúäÉÆ‰\'ö<şä“ß¼ë®»­×ëp*•®Êµ×ßxù–­ÛoêêîŞè¸®eY6–mašV;¯ İPHtÚh¡wèíîÁ“L¨Qgîà>¦v>Æü}Xs³Œ.Ö0ÑØE»ààmd¹ÈÉ¡‹¸ø-<^ºŠ9YIrùUqŒ5«İ4O·áqtAppÎäØ¢d².4«¼¹¼Ï·âÖYË“–)…!ZûµZmúÌÙ³Ç:tüø‰“õz½J²ê;=~NŸN\0p¾AğJĞ.ÿØ/ıÒğõ×]÷»]]]ìííµ×¬]K_’Ë¿¬U‹jfÛ¼´<……Îœ>Í‰\'êc‡İuûí·õĞ¡C€Ø½}ıİW\\uÍe6n¾¾\\©¬slÛ5L+éµ—&˜ˆ4¯?C„€¸ù:.Ù¶³35ÚÏ’n*&¬V	ÏœÂ8q=3EÜj€ÔÌÈ÷÷\\Ï£Ão`ÎìÂĞ\ZG(L\ZúÄ­y\nİ=ôJê¢ÇxMà‡\nâTL¿œç\'Öo^ºyUX©tå×µ²-kUGa¶šÍæÔôÌÌ£<ğÀ?ÿ…/<«”\nx®Ù·’œw\0¼’âĞv¼ÿ}ï}oÏõ×]÷Ûİİİê7n¤ÒÕ•ÜmVî”Êh‘6NÎ)¤íQJ¥«V­Â¶íb.—ûáîîµw|ë[õàƒÔìÌôÌ]ßúÆ]İİ{·lÛ¾eİú—ww÷l.•Êİ•JE¸é\Z°ìDÔ8ùN©5×Âo4h´ZÄvÈriTF˜ïİÄÂ?HMIê-E}6àğ¬Å<Ezs’­ƒÁœ¤ß…Š-)9ÇŸ%¨yøN‰… ›™EŸ3sMMÕ™YŒğ=E©h³cÛ–üğ@ÛqÛ[\ZIÿ3¢R¥ÁÁÁ£££×lİºõÿ?ü‡»¢(êT¢³âì5#şy+Íùrş&Kú0úûİ?üƒ?øØàĞĞ¿íëíu6oÙB¥»;«t\\Fül,¥qÇí®à^«E£ÑHÊÂfg™šœd||üğ7ï¸ãÏï¾ûîC¤œ =Ã0\noûÁw\\û¦[ŞüÃİİİN–g¨TÒ›·ÕjÑÛ]¡XÌ³ûÈI&´Ãxi±âsV™¦é\n‹\0ƒÈÓˆ)²±¡l°¥ßf¤Ç¢$4v¤hS$Êc`\"0„Æ0@ª˜(©6NÕÙy²Ê“ßù¡58†bfv>ÛB.ÙÉ4McOšA$u³33gxòÉßúün–\"~çâç½CÈË13tš€ù¿şëW­]»ößWººzFFGéXFôçkİš¥…wBÊv£ˆ¤$Êê\ZXU­V÷>sf®câúu×^·êİï~Ï»Ö¯_ß]éê\"—K¶•³m+i§5³³³ì:5É?æ7ñ`eûrCL™%\ZÂ&&‘èÅÂl‹m®àÚQ—Í£.•.á+¢VD+\"úü½ˆ(R„\ZËLBÅ^²a•éHúË’+zC>|Ó:6¯îÇ”ŠFËO;›¸m 8é¶rfº½­4Œr¥\\ŞÚÕÕõÔO>9Ã¹•¾Î÷ç­2è¥ ]\rX½½½…÷¿ÿı¿ØÓÓskOOÃ##I÷‹â³İû9ÀÑŞ	¤óo“nœııÅı<U¯×}@W*ç\'ê§ÿÅE]tÑà`Rôé8Éƒ5Í„øaà3Ó\nù¦=ÊşÜ ‘4q¢€n¯Jú\Z9Ûb Ğ\\Òm±6çau¢|°µ\"¢X)ˆbE&@ˆE[ˆCEØ£˜ÀIà…ø­úõ\"çã¶í`Ù6¶e%GÇæÖf¦À\nÑßÓÛÛuèğá‡\'&&ü¢¿^u\0´³{\0ëG?øÁ—]rÉ¯Uººzº»»éîéYÖ	ô»µƒ]	‚•ŸC\".Ó-—ËSO<ñÄ Şö¶·o¾åM·¼oíºµN!_Àq’lÙ6~Ñjµ¨!ßjXì£DŒDi„Ad8DÊDV#F¤`}Å&W´ˆEØl5-â¢8Yõq¬“WÓ *ÚD†AÔ½€8VKüºéÖ<¼ f¼Ú¢¹0òš†™¤Á§ÀÖ\"ÉwğƒˆX©dÁ@Z<«Öôõöøöwè öó±ıóÂ^\n\0:?°>ğş÷ß´jõê”Êe«««‹b©´¢ìw9aÇw–E÷:ô‡8QJãôŸbbb¢şc·İö¦K/»ôÚ„ğVRoØh´8}v2i8eHzÃ:—„³ôufphÆ‚¸ŞDx&C†AŸ£]ˆÊy\"í‡9â(ÙÈ1VºÍâœE”·‰üˆh¡EäÇ„¢¼C$aµEØÃ€°µˆ/MªµÇH¼”AR­7™]àØé	¦æè*—É¹NâÁŒbÂ(²¤”óóó=z´Î¨8\00S\0ØïyÏ{Ş1ĞßÿÆb±H©\\&ŸÏ·›A¿˜ÑŞ=5İ¢(J*i:€…RUW¤”ãÏ>ûìñÛn»ííÛ¶m[_,Ó¶sV’µÇTÊE*¥iPP f•ª“÷êìßwí	ºÊ}¢:ñ©=Ä¶C,JÄÕ8T	Ë×$¯¬zÇ$®„ó-¢0&2\r¢’K$Ñb‹Èˆ”\"4Q¶BêÍ‰ù\Zs~ÈTİg¦Ú ÑòpI.ç²zxˆ®r	EGzX„a¯ë:Gï¾ûî}+ßé:?o@x)fà²¬ gYÖ \\¹mÚ‹ìYI	T@mù\ZÇí°”r©‡n.g¬]»öÚ-[·îìëë(•J‰M/eš;İİ•¤ÓV+Ù~\'\nC‚+/ÚÌëQX•E¾<ß\rŞ\"\rosõ¬\\Æb€)$¦H­1EÒ¾Õ°%f+ÆXô1ı(A¿kb”rqŒœ­#=C‚È¹ßƒPBºµHcæSÕaD¡‚#yÁ[/¶ì\'çÚí*h•õ2,ÇµGFV½uË–-ß\Z›¥#|Îs3^µÚÀçdù–Ëe[QÈ4vËX÷lUg©Ğ­f“z£û¹®kÛ¶-DÚ3P\nÑŞ|©T,mÜ°~ıªr¹\\Éöè•R&Éœzé&mÛÂM·q×*fõÚ5ôöõñS=³ÜûÍ3ŒG«&.F3Â¦PÈ„ø‘„ƒƒ£`(…yÇ0¼	Œ‘ÍÎ0Ò1¤ÀÈ¹ˆ–¨yˆ8)\\¡gíæQ^ˆ®6évc¶äqLˆ¢?²ş(I’¨¥a’Ë.»ş†7-pî­dÏ›/àå¶ˆ‘Õj•([Ù9™ÿnÄÏÂ¥­f3±ƒggıï|ç;íÛ¿ÿìİvÛÛ‡‡‡{mÇYæDJ¹Aittt‹ëºi\Z†D\ZBkĞIã)!q“ı^iÍÙ‰iÆ&küÖãœŠ@åóDÈ ÀÀÀ”:ñhI™31\nF 0!f¤¦Àˆª˜ScÈÌœÂ(†Zc¸Ù‘u©4Âu9‡hW¢U\rÑh²¦ı%!\r‚0Ä÷´^êš^­7‰ã¤uŒiY•µk×]ìd©Ê*+?¯›!¿T\0trİh4fU¢¤Å1q¡Vlò=‰$ğ}ZGµZenn.úÖwÜûôG÷EQ¤®¼âŠ­år¹7¥<±Zê‹`ÒÎçóJÅª½½¬LwãÔ\"m9\"Òò2ÇDAÀ3Ïìã›“šû[ı¨B	YóÑ‘I,,b)UQ”\rÆ|°şXa`–ò˜İë0º1<d¨1ƒ£z\ZÃ-#Í†ÒH×Aæ„Q­½ĞÂôclS 4„a„çûHÃ$V‰˜«Ö\ZŒONÓß[I¶ªÂ(K9w_ •\\àUïĞ?µcÇV†¹(	Ã3ÀJdÙ°ÛoÔë,..²ó©§üÓÿşßïi6›ÀôÔô|«ÕÂ0-,Ó\\â,é¥ùz½ÑèäZkk5ü ÄIg1zD~‹À÷8X\r¹¿YD™Ñ\n³Íj§û÷Å¦$6Q#Bø1Rƒœ>„±xó¢›0ŒFŒÑÒÌœ‹áö!c#ídx\nQŸ@ji Ú/Fjƒz¨éªTÈå\\šÍq¬0Ó}Æ\'g’‘ Ä¢¤°uxttUîÌ™Ó­D?¯ãU?ñä“‡o¼á†	ß÷×{‡ëºIóH·r‘ËÜ¾ÙÊoÔÔjU:4ö‰¿ø‹¯OÏÌ,¤§Ôï7|?Àu“€RY\"ˆNë´±¸¸X¢¨İƒØL2;yC€e›|åÙSœœ^`ÑÙİ´7Dé¦•Z\'=\\™FûZâ…Ó0w1z	2p1\ZMŒ8Æğëª†¡1CChÌ¢‹aIdcyúRæ¡B ÁÌ1îÅl¿è\"º{fz~Ã0‰•\"#\\Û¤Õláy>~ÇÊ”I;Õ•Ä?¯@x©\0Xf>şøã3gÏ}¢»§g}–#\r´ÆŒã¶k73ó|Ï£ÑlR¯Õ9uêä™OúÓÿğôîİ§Hä€â¨Ç‘âXÈØXÚn-½lËóZgÏo6\Z—çr¹ö¶°#ƒ}Ø–ÁÑã§¨V9:9Ç×PN™—‰ ˜zùTL™HX?‚VÚ(Ê4##02\nÊDÕTúMÄ™g…>Ñ“xÄò¦V˜VÑs† £1V¡´=PI\\Á\"@…>³33Ä\n>Ûb¤ËaãP™@\Z¾ïøA…a¸$ÿ.x±\0Xi&}|ß¿ç;ß¹{ttô&Ç¶‡MÓLJ«¢ˆ¬<QúbÂ IŒl4\Zœ9sæôßüÍßüí7¾ùÍı$áÏlSQ(m¥J©v«Öv‰•Ò4›ÍÚ3Ï<sôæ›o~s¥«Ë$îY)%•R‘õ«‡9q2â‡×—9Yy¼.Ùæí(Ó©X,A¾&©ôà0í¤F¬&a^	\Z]A•†‰”FÄ>òØ¤\0sx+F\"=áZÈâ\0¢Q@„pbªÆ_ßõ,ÍF•æÌiÂ0âÔ\\ÀŞÓ-Ş¶£@Ÿ›”•ÅqD³Õ¢Ñ¬OOOM¾Ğn¢çÅx9 ³L|û×¾vxÇ_¹áú~!rQá;Î\0â8é‡ÔëuuìØ±ıŸùÌgşşÛwŞ9ÆòÌWHÓ0b½äüéŠX)İjyµÇ}äğ{Şó3CCCt.‡©†a§¯İ•2kú»øÀÆ€ñ1Ó¾noêĞ~š¦L.	ÓÆ\0R‚“¶±õhÉ¤Me ò]`”ndè™qb;Oœ$\\ôq„ôj­qŒõÈ¸„4L¤ˆ«FüñW\"eŒki¤6=l¡ˆÒ¾†i†­V+›;ÇqÀó{_u3°“díàÂ(Šü?ûó?¿Cá^uåUïîêêê²Ó¼½¬ekzaaq~÷îİúÓŸ¾kìĞØËÓŸ3M×BÄíÏxi“%­A)ÌÏÏÍŒ:4÷ä“OŞ·jõê5=İİ¦mÛ8“6pŠ‘Râ¸96w»\\Z‰89•T\0µ‹ùL‰>S§›n3—t}°%¨(éèä®HEGV‡ˆ¼ÃÑ¡‚Å:èyÄ\'!Ô\Zi’ìjbŠHb¤4³gğ•N{m \rAÃÙ°~\rCı}<¹ëf¦g&>´‹å÷¼»_*\02d Ë`ñæçç«ÿåOşä«o¾õÍÇn¼ñÆ×m,–ÊİJ©p±º8}êäÉ£÷İÿ®‡zèXYök¥8Ejë\n)£lãÆ¸£U»FÇ*œŸ_X\0âÏ|æ3÷ïØ±ãÒ-[¶\\U*—QZ#…H»ë¤¿iR´Œ´¥é«FŸØ…{±ãÖ„Õ£Á\0={\ZÎ@_nûsb‘ø†…#N@Ê¤:µÙ‚8ÓiCßD~-L”J\\ÛÑÌd®ˆˆAè<†\n‘:©E”àhÍaóÖml];\0aS»çñG>Ê¹]Àß³Œ N“°í,¹ÑjµZÆí_»}÷wİy¸¿¿¿«X,æâ(ÒóóŞìÜl])•åºu&BzégØ¼BÅÊcÕ.¤„¥® J«h~~~ˆÍ~å+_ùÂÿø¯3½#³ÿ‡zJÄ^_×ÒÎ‰Yª\'¡÷ÜƒØñ&Äè¶tJ!úÄ3èC#·‚]6ŠÓÕN6»¶JIÛ—0‚¦a*\0Û»ˆèİQ†@Ä\n}äItm’xøJ°Ê ÌKCˆ›LÆ]T=Í³‡ÎğÌ‘³\'Ÿ}ú‰¿o4êË³_3 İS!€ÉRPI{:uªÅRgkMÚ=”%™ß™›õ¿0&¢(ã(²¤‘ø?’}|u‚8Ê&ÃÏ~îs»7mÜøé7¼ñ?ÇqÅ²L@ĞU)12Ğƒ2LÎ>2IéB ºWÃë?„(\rd§Dß‰{1´\r±şêä»™™§×ÎHßCÇQ¢DQZf¬¡:VWD!ÊF¯½\n¼”„8ÃJÌY%Qp-ÏyüìÿŞÉb#@7çú›ÖÀ]ûèh¼ÅŠö,y_•X@çèl\n°ä¥Êtd5+>o‹–²_³Ì×Ìİ©?~âÊ+¯j„qÜ%#…”Y\'Ğöv±í¤QÆøŸşèÓvÄåW_óó=y· \rIÎ±˜mÆÌªué@\\GŸzìbxs¢Ì!—ºwõoBäûÅ0,²ŞÄd»™¤UËº63§ùÈ÷¢u¶\rf”™XP=ƒf\0œ\"Â*£ÃÖÒTµ•lFU?\rùF¾ŸábÈˆ¹ÈÅÃ?.÷ÿƒW<Âä®Ùo¸¡òoyËÆîîîJE3OíÜ¹ço?ûÙùs,Ê—¥¾ĞIÔN»ªİ%”´;ØŠï†)2 d.²¿}ğàÁÉF£1Y,–º\"i`˜F[!Œî®n›œ¹f³üîİ»./^Ò|S_TXeÅTLñØâ·UCDu\nNîƒ®!\\¸à· Y·ŒpŠà”ÓÇ˜öôËBŒ‰7\n½0S\' 8\0ùîä–…ND@”êB€›{mÂ	\ZÍä÷hÚÛK,‘Ëc\Z7ú¼s‹fS·@š&>{¬ëffßı·ö\\öÄ[Ş|Ë¿*K×J!l¥T022òíJ¹üö‰OL¤‹oe»˜ÎÚÕó€N„©”+Å‚•·“3t¶‘:ÍòXuäÈ‘Å¹¹¹±î­Y–o¶•»aÖàĞP¹L!G—ßzù“Q©gÏ„ÂmV‰\Zuš:‰ZKi!Ë#põ\ZÈåÁ²SÂZà”@ÅéÊÏ}lY{»\0ıënW2­4„K\'îd¯†DX©DŒ’\Z‚6IDúÆ0À²îz®ì©ñî->oj±­P\'BrP­Â£äÜ¸­ÿm¯ß¾î‡ú{º®é±&‹*—7¤|çE;vÜüƒmÛêßşöüÆ­\'NÔÿá‹_ô‡V\0l\'@gø2û]§ËµFççAàû\'NœØ»jõê·™¦e‘vŞJ¶‘3¡Á¡\0bó®XµéZ×bM }-dš†AA¹\0¦n5`n2•ÁÔ\nHVy›ZŠ„M7!vaçSV¯R‘ıMrÛM®çµ–\Z\rµ©/“Ç` ctÒíøÜ4ìÑ“7v}\\™¬¥UF¹Ê ï¾¢÷¢¾®bn«=Á¨\ZGiÉIsGİnGÆĞÅ]4ø‹¿ğ‹·v÷ô¼EÑÕ•Wí¿éõ¯ÿÄÿóË¿¼¯ƒ6ßUGx%Å¡+W¹3µyåêïls²,Ñ°è‹.ºø:Çq*BÈtkÕ˜(d„?üà£J)ğÅûşÕ¹á²ŸÒÌi ´B>)Ø÷h1°:!Üî;Ñ»ïL8ú×$D‰£DA“F‡­“îj4Áo ¬üÒT§D\n\0İfíÚk€_GH‹NÉu…H8„\0E\\TªsıHL._Äu]*fH,fóëQÅ!º»+NW)/G£“ä¢E!L‡E{0˜[X<xë-·¼ot¨ÿ—İğÒ‚¯UÒ¹Úqrëºº*wïÜµË;Î9ÎG³èe‚%^ã{çRV2æ¸Œ;ì}æ™‰ÉÉÉ§‹¥òê¬ÇoÒÀ[RéêÚ±uëöò³Ï>³„bÛ5—àæzˆÓ¶baÂÎ…àƒXwT*IÉØÂzê$bÇëÛo™)|º­ùë¹Ó°8Å„[|íÖóK›ÓŞíj©eHÒ()¾…JBXq˜F<4R(úr1%‘–Å¸Ñ‹ï®#—Ë!\"ËÂ0$†aĞÊ]‚3/ZV¶Ğ%ûåöíÖH\Z\nOÈUáq0á˜ÑÇ³q×5k×­ßÌŸƒ>\0ÄíŒV©çù^çëJµ7œğ}¿µoß³ŒŞ\"„,˜fr›BHr¹üšk^wíÅÏ>ûÌ	6\\’ı«®Áv%Qj%E.H:°aw!VmƒBmÙ`¯C¼ı…RBT/HÄ$mŞÆÑ€Vì\"º2Œ\\s%8…´y`ŠoMÚ\0Zƒß@/œ…â`Â%¤ÈZš¦³Ó©w1İ^¶9‹±pˆÒP/Èd«:iÚÄVeç“šËj—»Å…­,ö¬O{\ZšTÂÈr]w$ô[ôÌùXaâFé—5,Q‘ç¹$Šx§’ı¼qƒó€ïFàówÏQ|à}—_~å~Û²¯ÎRÃÓ2İõ6¼y¸¯çŞñ+ßäP(]ŒHå½Ö	±ì<:—‡5Û’ÃqVŸv\"S‚$:†0¿€˜…À‡3 YM¸Bä!ÜB¢4ªza%N%•‚A©D|´¹ZâkCÊäÓûÑÇÄ)vÓåô!dZf6†aš¦…i%•Ï¦a`n²%VXV„e™x–M#ŞŒ­Z¶˜ĞıZ¶N<Ñ ¥™yı‚\\à|à•‚§Ó\\\'&Æç<poWwÏ¥9)lÃHnUJƒJ¥ë†~÷ûnøÄê×/b;ı™C_ƒ(ÂğÅÈÕW¤‰ÀN!c@ lT.ìê†jªMDÿÅP\\\rõiÈƒ“_›i‚c§Êá,ÔæÓÑ. ú6$×j÷¼Èô„g®#hÍ!z7am¢”×íZl‡0‘´6Ï˜mó²ï™fb\Z#k8m”©×ªÌU›4Z“GvîÜYOØ^p|¯>ÓÚÚ=Şs÷]mÜ´eïàĞà•¦©Û™Ç¦eÖnØô¡Ñ‘£ã¦UAM•î¬+ĞgÀ©gëæ@ÓG7}úópk¿bÔÖœjJœ/sV¹°XExHQè‡Ò\0¸fBŒ0\0ÃDØEˆCôÔQôø~hÕ ß‡Xmò3]BdÜA\'«~öHâ0bä*tĞ\"o×±e’à’5$ÔiƒLÕÖ/JÊ$.“XˆL`™1‘aà.‘ğ‰âÓSSûİ·/óÎ®Ü\\êœbàÅ%ğ¿:@è4%À?sæôÜ®]O}­ÕlÕ£(\"Šc´N¸@®X¼|SN¾Sk)Xˆ`1‚X‡ÍSzì®Hİõ¿ >	~š-ìĞçıC!·­R¼c0àçÖ5ùµÑy®jŒ!N†æ\"„ÄAòø„NÙ»HEZ£UôâÔ(6€_\">:á*^²´†Ú8D^êdŠÉ1µ¬vÖYLDFXÃ›I^c\ZYê–›”š\';¨%\r©|ß«îyæ™§y‰I#ßkĞ	€•æc\0w}û7n~`İºõo7,•t°#2]ƒ)p$”ÓØá‹mWş.c»ú‘Âjâ0½CC\\Ù[a•Û`3\'@¥#=Òå¯O<Á}¬»6Ñ1•ß:Fû!ÄÑ·ºÖ\'şşbO­RÃV_…‰hiC×ZèÙ€è^—pÈG+…IœZ’IRkÌ¨É@ã$=¢–Ô;¸ebÑG@	Ÿ\"±,¦9–²İ{P§Öa²°°pø8Áó+|çÔ^­F‘/f¬¬=€†¡ğ¼Öôºuë·Û¶Û“õh	‹ıUÌÍSÀpe†·ëşñ“bÛÕWÃİH¾‚:±}vŒ¡õxûš<Ûzô,&\n??„Yfëè\0óV™ã¡Fê´É²‘¥Hˆßh% Ğ\Z‘Ë#\n®ã”í/Eİ§Ÿ„Ö,t\"råöÊ\'İ˜ª×	ØŞ…¼‹“ËQ±a‡>ÄPtKD‰e`%Í/lÕÂnMkeÒ¯Òı„’šŠZ­¦öìÙóÕ/}å+O°”cÑÙcèyó×Š€%çĞÊÀ‘¿kçSÇxâ±¿k4Q˜UîouqfÊBÄ\n†ò˜®ˆÖŸŞ}¸ïO~±¦•ş*—Ş¸úŠ•mWPJšD¹>b³ˆWu”ËeÖ®\Zâg®\Zâ–Á$Í‹(L†BÏO Ï\0¯Ù4ÀNı:½å(„V+‰ø•FaøRØövDedÉÔñ}•¶½UÒ.g:E<™\\S)P!-h-Bk³9MaöğÓôº¤ã¨ŸæÖëõ™Ç|WÁ_t[¹×\ZÈ^—qÀ<zäğÌÀÀ`ÜÓİ½ıt\\¶¾¼¸‘…ØF¬)£ò¬kŒË÷M<ºùÒË.-ÕÜËšmÛ?Z©|ds×va(Åªr5k7õl&èÛŠÌuaY&†aR°\r653µ&Ç«iœ«±ˆŞ{\'L!*ˆr/ÂuR&›È|†P¯C¢\rºW%ÑE§Ìr¯aŒP‰ÇÑÂgG?äs6EÛàòÂ4y#ZQV§ïdØ‚ÈGz‹„Â¦e÷>ßJkj=zôÑ¿úÔ§îğ}¿Æò<‹,ŞrAAçk¬ôdù&`DQd|õ?GËê©<3pù{Ç#Ëk]ôH[G\\U=J·¡Wù½}ÿúmÍæ;»½]â’Ñ~ºÜE3æúuk°‹İäŠe¬4}¥ˆb»½áj¥ù™Kc¼h‡&}8;^±ùFÄà†$<‹¢Ğ^š>d{\r[i0Hë$g@g»¢§œ\"åuO±Ø‚ş(BE©/AÅ Â4GQôÒhd±hÌà»­¤¯RË£ÙlQ­ÕšOíÜù`µZ­³Üış¢’I^k\0ÈV–#˜™4&`Ô\"ÇùJí[åŠr´0¯ƒU½bÆ2Ø6{ŒÕ“è¤Uœ™sÜkr&]d+Çèòçhæ6á÷­ÃÎ°¬¥.\"Fœx³GWÅ1Ù113Å!Ù\\÷DÏH;,œ	ÕIôûÀé†Á‹¡Ø•ô?R:Ù=Lgåï®cZáEpb^±®?ÄóC\"ƒ’¤ºD”šQ¢€&7qH%½‚t¶z½Î™3gwßqÇ»Y!]Bİ…]¨±ÒŒiÇ·ÅÿíM]ñQ¶6ÌŞıõU•ïS~÷ÍOS\nªIöp”tíïëe´ X«c*iåĞƒ;0m7©\'K\'kB+E+rR‘‹šì:İ$ˆÍ$~o›K·Ó˜C¸7YáÃ[]ƒI l¡½fˆÊ”IT{uëÀK^UŒ¯`}·à,}ÔÈ³¡Ğ\"gDk!³D’\\…`ÒYÇ‚ÊáµZ4\ræçç¿ş¯ÿÕc?~ˆç¦Ùuº‚¿¯\0p®¡¹øG‡Å¦·ı:Âa|÷g\'¿úñ/¹\'÷¸B/Š^õkpã8Ù¡Ü÷}òùC}ôˆ&Ò0ñ/G—GÒ@“Úİiê$ú›h×Y¯ß²sf®Éñ†F–òm72q„=…(\r\"×^(õ\'Õ?A=	$Y6ÂÉ/)æxíú¤Iá•Moö.u¥ûÍÙQùğ|µĞdĞö©˜a²#QÊ940irJĞjù4ëuªÕÅğé§ŸşÒ_ıÕ_İ­”êì3œeZ­l/÷}€ç>ŠşímØåĞZxX?ú_ÿõIovj²qèÙ½û\ZõúA!DK \n–eÃaÒ7¼\nchQÿT÷Ú$dÛŞ¯\'­7ˆ:öÛ—0JÊÖU\"tÈÎù˜ Mq\Ztµ-DÏ`R¹›Ã\0‘ïB8…åÄt½šˆËLô™CzóOV|ûO­®áœeå×¨—äSÜ3ÓK3–¬v}ò–¦®sœ`”#b\r?¢ÕjR¯×â±Cc÷şïÿıÉ/,..Î³Ôhzeªİ÷•Ğ9:£‹JÜüï‡)¯û8Z—ôìÁ?fïßîÍ~F¡:sæÔì3»Ÿ>°jd¨ñºk®¹xİÚ5Öèè0åJùrÒM\n4’0²Ò•R~\r·vwşÎâ1o›VA â€g¦šÌzIÙ9-İhB¾Dş´ƒV6:V	ËOËâÚaâÈC\0êÓˆÕ`:h«¤	•ˆı`¢ºÿÎ¯8\'¾³ïê!Ôæ.5bJ‘;T+ñí‰>îŸífJ•Y4z˜Œ\n4¼V£I­Võìßwç§?õ×Ÿ?}úô$IzıJöÿ¢ÍÀ×’¸rdòKéŞí×	ÍvBÿ>|ënÒ’\r–lŞ¼ë:öe—_¾m¨\'Ÿß\\XÄq\\êùát7ïtÅg;{jM^Õ)“­	hÍƒWÅ\r[fUk;ZHr–d8§8¸@£ë!äºÑfÚ·Xr£XYí-EUˆØˆU—ƒ]@[¥)ZõOëæ¼Oõä	ZÓsÓõÀ¿ëş÷?\\qåU.½èª×o(o½øou÷SSİÖ3syqmƒ·Ïé.£Ù\\˜Ÿ?¹{÷Ówû[ß|taaa¥Nã›J½¤Öò¯e\0$ ½Q\na]ƒÖ–üopâîq Àò$584Tîîê\Z]oÎ²UL£BÉÉ°—fÜM)tVª5jPRÓDI¹£ÛxÙŸ \'.2 µ¦hh´\'ĞÖ\0ˆ$hÂz’,Šhe\"DZK Aû\r( /Jrœ®ƒ:Š~W?ğ¾ÁÌ~	”€.@øA(}ôÑ]»vî<¼fÍêÁU;ÖÌ¹W¯[¨\\~í}­âà‘éJ<8÷Ì§ø«oMNNÍê¥.ãY‘ÍÊ=….hRè«7Şó%PQ!6U´Ú•N4+šh›:R\Z\rT¹©òcáÇ’0“­aÒ<>¡=Ş)L]Kˆ¶‡KêæEkòá<qPÆC¢Ğ‡Å´»dD\"˜3@X€]DùQšgšäÂh?\0m *ÃàTĞn÷^-Ì_Ô_ÿW°öÖ^VİTfnLrú¡:*l{@ı ˆ>Òàğ‘“ˆ¯=ÊÆ·?¦·à=§Â¡+Oéko`´¶Ÿ©OC«¬»xÖb¾sõ¿¤\"’×4\0„4Aš6Ğ´„V§õ’“¨ÓÉ!¦&\'gçªõ£ûjƒÅÂ¦åôR8—õ\ZLº*§q–v¸<Ò(`”ºA«Ä’¨·<f€½Ì^ˆ[ˆÖ8øõÄ<ĞKÛ\\Ë4?HM\n]èBØ¥İHóô‰c{¸éãÿRù# ‡Øğ¶9.ù‰Çô‰ïÜÁŞOOÎ\nmÀBkƒÃßxšÅSÇÅÕ¿ô~J«õ?ğSÚt\'xüOîey‡ñ—½¥ìkU	L\0°ã6Òò/€A¤ù9|~œçF¼déÒÀšëfèÊÕ(¡´hWÇ©ògEuúšG‘‘±Qzd\\\0ÍdçHÍâÄ¬ÏwNõÑĞ½Õ@ÔƒWK®X.!rNb¦EN’@*½$ƒ¨k*#\n#¿G{şoê³\nÛı-!ä¿±„‰0Öcæoİ›.§wûNİ{ŒåWÉÑœšcnìIÑ©‰]ºNF×SzñÇN±´ò_ön¢ß\0ˆ€ëòQqÓïïæ©?]ùU	Ç]X·n›Ïw(­M•:w²ı‡’’óˆ~ÿVÜLÌ·(Lsöâ‡Ú`wµÌøú‘‡K\Zˆø,ˆ(I/s¤ôK4Ä` ºz {5¸•\0i~–8ş¹}Óãœ™xğÀœÖñ¯ˆ°şq´ºat#Í›D~à2.šwg È\nh’*ªÖì\"as—è¿tÓ}½(@ıÌÔN5y	6ÿ÷+\0Ğ\r¼ÈÑš¾CşÖg›ú–‡Í0#G/•+õ\\.·FiUŠâˆ(ŠÓ#ÂÕ K/,åø§	\Z8P/pÿx<XdçT\"ï„ˆNî¡˜+‘+Ô°ŒÇ(÷,P$ß\'(xø„±-ºznn­ÿ3Zÿ®®ÕÆõ¡c½À6¿7ÿI´Zà\r·áÀ}÷\n+ß4o¹\rto¼—ÓL¥Dõ;€Å£ó\\~PäŞ€a]Nÿ¥0ö‡Y.\nÿi€ı—`¸x`ëıc‰×cçÿÈ@Ğî_Øj6Õİ»N4ÃÅb©$¥1Å±‘5¤ôƒ…Ğ¢@‹¢ ’ö!xJòìbo*ğ÷cevN—Ğaë¨>ußrğ)F.»!?ÅØ}Æ•ï9!*Ã7‹|÷iá”ş˜ÙKß$´^9÷—)åÿŒf«ÉôÀ¿Ü|\\˜N‹¯~îü=ÁáÛk|æ©Ç„aoD\ZoùÁVá¦nĞ‘I&ã§÷œ›ŞÑ0Ş,k‚C_¹½¢Ñ×6\0hsp,À[¬ÕÍÉıÄÁsV‚@òô©“c÷ï7-{ŞqÜ¥T9C5?æTËeÚ7™ñ,5ŸqùæÉ_<ÜÍŞÙ\":lÓ\'îúşÄ#ÔçôşoÒ{¿qRïkŠKßyœBßƒñ—ñïüæ·ÄÖ‹Î\0o!ûôüÂwŸzšZ=FˆËIXğ;À	ûÿ.™Üïıâƒ_¬ë‰}„”o@š7ÑµñÇï|ŒÈë4s65¶½?Òx/B(6üà—yİ¿öØó^şóı^øEİäûnÏîõmÀĞêº9ı%ü)êg-’ªŒbÇQBä7oÙ¶îê×]wóèªÕ×ŠÅAË²Í¤eLRz^\r$ÏÌx|ª‹YßÒx{9ş­¿àÙÏ<NbjUYÚä©s\'¯Î{ûğßH\0øÀàG€k€O¿Ôõß¹|r?ü÷¸WÿŞ®ÛLñç gu|˜/ÿÈC<7a\'ïşâ\ZûQàlú<fsÎ—òl¿×Ä}Ñ7š<hHˆÿo€÷\0è½¨è‹º~öÛúêiNÜ¡ã‰³(;\\Ãùµk×ï¸øÒ‹‡69Åî5¾Ù5z¢Õ]8°ØÅD+G«µÓ÷qàÇéû“?;Vnæ¤WÜ›\rüğ¯Iä½$ÌW_N</¡ŞûUĞÊÒø÷À¯¡âÒ·ı°şäÖ6ÄÇ¦5gİ<œŞÌş_€ö\r\'»\0Ü\nü$ğF ˆÖS¨øIÖbñø&wÎP=Ş‚…VyÌ\\»T¦¼nÔèİ¸ÅîY{)¹¾­Çqoî&Ÿú&şş1šSY€%ó¸­±>GáJïK[€›>àYà^`à…•şı ğ$\nï=Ào¢Ã\'†ZªñàİÀßß>4ÿ¯\0\0ïù\nÒ0PJ•€ë¼!n6p…\ZJÍ¢ÂITÔm!dÒêE\Z%„áj­CT0Mkn73Ï<ÈáÛw³x|¥66[·wÿ‚4lêàp[HDÉ[$âãÀi`\0øÿ€~ø¯ğÂÀú®×½tzUÆ;>qda‘ÆµBÈ7‚¸ÁÚ¤LZ 	Ññ\"±š°q\\×Îìãìccœ}x\noŞcEMË	A‰ŸŒˆ‚Ÿ Q \'€±ôóMÀ#$ÖÅñWB|ø§\0€ÎqÓïƒ\n-œ®ŠVY›v?*v‰ZÍ©¦X8ÖÒGf÷„\rÍò.&µ‰á_r–íù)àõÀ€›HÄC\0<@bYì„W¶úáŸ\Z\0;¯çd³Ô¨³tê\\\r,:û¼jÄ_6‰‰>1H\"šN“è%¯˜øêŸâÈL¨ÌG°ÒW°\"{™r·2¬úªÿÕ\Zÿ”Ğ9¿ÎDS¹âw°¼´½3;yåïÿÉÿÒ×DÈĞÑeŠ\0\0\0\"zTXtSoftware\0\0xÚsLÉOJUğÌMLO\rJML©\0/œÔ®©M\0\0\0\0IEND®B`‚','Employee'),(3,'thomas','abc','','Employee');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(20) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`id`,`role`) values (1,'Admin'),(2,'Employee');

/*Table structure for table `student_tracker` */

DROP TABLE IF EXISTS `student_tracker`;

CREATE TABLE `student_tracker` (
  `id` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `ssc_per` varchar(20) DEFAULT NULL,
  `ssc_yop` varchar(20) DEFAULT NULL,
  `hsc_per` varchar(20) DEFAULT NULL,
  `hsc_yop` varchar(20) DEFAULT NULL,
  `diploma_per` varchar(20) DEFAULT NULL,
  `diploma_yop` varchar(20) DEFAULT NULL,
  `grad_degree` varchar(20) DEFAULT NULL,
  `grad_branch` varchar(20) DEFAULT NULL,
  `grad_per` varchar(20) DEFAULT NULL,
  `grad_yop` varchar(20) DEFAULT NULL,
  `pg_degree` varchar(20) DEFAULT NULL,
  `pg_branch` varchar(20) DEFAULT NULL,
  `pg_per` varchar(20) DEFAULT NULL,
  `pg_yop` varchar(20) DEFAULT NULL,
  `admission_date` varchar(20) DEFAULT NULL,
  `date_of_first_payment` varchar(20) DEFAULT NULL,
  `amount_of_first_payment` varchar(20) DEFAULT NULL,
  `cheque_no_for_first_payment` varchar(20) DEFAULT NULL,
  `bank_name_for_first_payment` varchar(20) DEFAULT NULL,
  `date_of_second_payment` varchar(20) DEFAULT NULL,
  `amount_of_second_payment` varchar(20) DEFAULT NULL,
  `cheque_no_for_second_payment` varchar(20) DEFAULT NULL,
  `bank_name_for_second_payment` varchar(20) DEFAULT NULL,
  `domain` varchar(20) DEFAULT NULL,
  `experience` int(10) DEFAULT NULL,
  `attended_by` int(10) DEFAULT NULL,
  `placed` varchar(10) DEFAULT NULL,
  `receipt_no` varchar(20) DEFAULT NULL,
  `receipt_no_for_second_payment` varchar(20) DEFAULT NULL,
  `paid_one` varchar(20) DEFAULT NULL,
  `paid_two` varchar(20) DEFAULT NULL,
  `paid_three` varchar(20) DEFAULT NULL,
  `bal_one` varchar(20) DEFAULT NULL,
  `bal_two` varchar(20) DEFAULT NULL,
  `bal_three` varchar(20) DEFAULT NULL,
  `receipt_no_two` varchar(20) DEFAULT NULL,
  `receipt_no_three` varchar(20) DEFAULT NULL,
  `placed_in_company` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attended_by` (`attended_by`),
  CONSTRAINT `student_tracker_ibfk_1` FOREIGN KEY (`attended_by`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_tracker` */

insert  into `student_tracker`(`id`,`name`,`dob`,`email`,`contact_no`,`ssc_per`,`ssc_yop`,`hsc_per`,`hsc_yop`,`diploma_per`,`diploma_yop`,`grad_degree`,`grad_branch`,`grad_per`,`grad_yop`,`pg_degree`,`pg_branch`,`pg_per`,`pg_yop`,`admission_date`,`date_of_first_payment`,`amount_of_first_payment`,`cheque_no_for_first_payment`,`bank_name_for_first_payment`,`date_of_second_payment`,`amount_of_second_payment`,`cheque_no_for_second_payment`,`bank_name_for_second_payment`,`domain`,`experience`,`attended_by`,`placed`,`receipt_no`,`receipt_no_for_second_payment`,`paid_one`,`paid_two`,`paid_three`,`bal_one`,`bal_two`,`bal_three`,`receipt_no_two`,`receipt_no_three`,`placed_in_company`) values (1,'peter','22-12-1987','peter@gmail.com','987654321','70.12','2005','60.12','2007','NA','NA','BCS','CS','62.0','2010','MCS','CS','61.0','2013','08-11-2016',NULL,'40000',NULL,NULL,'11-11-2016','35000','455566','ICICI Bank','S/W Testing',0,2,'Yes','16666','456789','20000','10000','10000','20000','10000','Nil','16667','16668','yyyyy'),(2,'newton','12-12-1988','newton@gmail.com','123456789','80.12','2005','70.18','2007','NA','NA','BE','CS','72.45','2011','NA','NA','NA','NA','10-11-2016',NULL,'40000',NULL,NULL,'10-11-2016','35000','568977','Bank of India','S/W Testing',1,3,'Yes','16669','456790','20000','20000','null','20000','Nil','','16670','null','zzzz');

/*Table structure for table `time_management` */

DROP TABLE IF EXISTS `time_management`;

CREATE TABLE `time_management` (
  `id` int(10) NOT NULL,
  `user` varchar(20) DEFAULT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `time_per_day` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `issue_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_status` (`issue_status`),
  CONSTRAINT `time_management_ibfk_1` FOREIGN KEY (`issue_status`) REFERENCES `issue_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `time_management` */

insert  into `time_management`(`id`,`user`,`from_time`,`to_time`,`time_per_day`,`date`,`description`,`issue_status`) values (1,'thomas','09:00:00','19:00:00','10:00:00','04-10-2016','dfsdfsdd',1),(2,'thomas','09:00:00','19:00:00','10:00:00','05-10-2016','sdfsdfsd',3),(3,'thomas','04:00:00','06:00:00','02:00:00','06-10-2016','zcxzxcx',2),(4,'thomas','05:30:00','07:30:00','02:00:00','04-10-2016','czczxxx',2),(6,'thomas','09:00:00','19:00:00','10:00:00','06-10-2016','cxvxcvxc',3),(7,'Anant','09:00:00','19:00:00','10:00:00','04-10-2016','fdfsdfsd',1),(8,'Anant','09:00:00','19:00:00','10:00:00','27-10-2016','hotttttttttt',1),(10,'thomas','09:00:00','19:00:00','10:00:00','01-11-2016','cxfxfdf',2),(11,'thomas','04:00:00','06:00:00','02:00:00','09-11-2016','dsasdas',1),(14,'thomas','06:00:00','08:00:00','02:00:00','01-11-2016','adssadas',1),(15,'thomas','09:00:00','19:00:00','10:00:00','05-10-2016','fdsfdsd',2),(16,'thomas','09:00:00','20:00:00','11:00:00','04-11-2016','fsadfasd',1),(17,'Anant','09:00:00','19:00:00','10:00:00','28-10-2016','fgfdg',1),(18,'thomas','09:00:00','19:00:00','10:00:00','10-11-2016','sfsdfsd',1);

/* Procedure structure for procedure `curt` */

/*!50003 DROP PROCEDURE IF EXISTS  `curt` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `curt`(in act varchar(20))
BEGIN
	insert into log_action (timings,tablename,actions)values(now(),"employee",act);
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
