CREATE DATABASE  IF NOT EXISTS `group9` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `group9`;
-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: group9
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES (1,'ד״ר דפנה כהן','בוגרת האוניברסיטה העברית בירושלים בשנת 1999. עוסקת ברפואת עיניים וטרינרים מאז שסיימתי את לימודי. לא ידעתי שאני אהיה רופאת עיניים, חשבתי בכלל שאהיה פנימאית. אך במהלך שנת הסטאג’ שלי הוקסמתי מהתחום הזה והחלטתי לעשות כל שביכולתי כדי ללמוד את התחום. את ההתמקצעות ברפואת עיניים וטרינרית רכשתי בהשתלמויות רבות במספר מקומות בארה”ב, אנגליה וישראל, בנוסף לקורסים מתקדמים בנושאי basic science course, ניתוחי קטרקט ואלקטרורטינוגרפיה שעברתי במשך השנים. אני מקפידה להשתתף באופן קבוע בסמינרים וקונגרסים שנתיים ברפואת עיניים וטרינרית וכך אני מקפידה להיות מעודכנת בכל המחקרים והטכניקות החדשות בתחום. אני נהנית ללמד במרפאה סטודנטים ורופאים לוטרינריה במטרה להעלות ולשפר רמת את רפואת העיניים הוטרינרית במרפאות הפרטיות בישראל. נשואה לדוד, אמא לשלושה בנים- אופיר, תמיר ונועם ואנו מגדלים בביתנו שני כלבים ושבעה חתולים. כשאני לא עסוקה עם לקוחותי אני נהנית לצאת לטרקים ולטיולים רגליים אשר מלאים אותי באנרגיות חדשות, ועוסקת גם בגינון ועיצוב בונסאי.');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_doctor`
--

DROP TABLE IF EXISTS `ask_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ask_doctor` (
  `email` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `pet_type` varchar(45) NOT NULL,
  `message` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_doctor`
--

LOCK TABLES `ask_doctor` WRITE;
/*!40000 ALTER TABLE `ask_doctor` DISABLE KEYS */;
INSERT INTO `ask_doctor` VALUES ('adi@gmail.com','עדי','אלבז','0523415376','חתול','?לחתול שלי יוסיפון יש בעיה בפרווה האם זה קשור לאוכל'),('michal@gmail.com','מיכל','שדה','0525284245','כלב','הכלבה שלי בת 14 ויש לה קטרט האם כדאי לבצע הליך כלשהו?'),('nadav@gmail.com','נדב','דויד','0501114444','כלב','לכלבה שלי יש דלקת חמורה בעין, מה עליי לעשות?'),('noa@gmail.com','נועה','מתתיהו','0543759207','סוס','לסוסה שלי נשברה הרגל, מה עושים?'),('noma@gmail.com','שירה','שטיינבוך','0541737952','אחר','לאיגואנה שלי יש דלקת בעין, האם זה יסתדר לבד או לבוא לטיפול?'),('adi@gmail.com','עדי','אלבז','None','horse','הסוס שלי יכול לשלוח עוד פעם'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','כלב טוב'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','סוס','סוס מתלונן על כאבי גב'),('None','None','None','None','כלב','sdsdsdsd'),('None','None','None','None','כלב','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','חתול','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','חתול','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','חתול','sdsdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','חתול','sdsdsd'),('adi@gmail.com','עדי','אלבז','0523415376','חתול','חתול ');
/*!40000 ALTER TABLE `ask_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us` (
  `email` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
INSERT INTO `contact_us` VALUES ('adi@gmail.com','עדי','אלבז','0523415376'),('anatoli@gmail.com','אנטולי','טאקלוב','0526342373'),('michal@gmail.com','מיכל','שדה','0525284245'),('nadav@gmail.com','נדב','דויד','0501114444'),('nisim@gmail.com','ניסים','טאק','0547283915'),('noa@gmail.com','נועה','מתתיהו','0543759207'),('noma@gmail.com','שירה','שטיינבוך','0541737952'),('prentzip@gmail.com','כוכבה','שביט','0522224444'),('ramzi@gmail.com','ראמזי','עבד-ראמזי','0524256373'),('ariel@gmail.com','אריאל','בוסקילה111','0545593443'),('ariel.bouskila@gmail.com','אריאל','בוסקילה','0545593494');
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_talk`
--

DROP TABLE IF EXISTS `customers_talk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers_talk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_talk`
--

LOCK TABLES `customers_talk` WRITE;
/*!40000 ALTER TABLE `customers_talk` DISABLE KEYS */;
INSERT INTO `customers_talk` VALUES (1,'לנה גרשוב',' אנשים טובים לב, חמים, נדיבים מקצועיים ביותר.\n                <br>\n                במיוחד תודה ענקית לד\"ר שי שקיבל את טושי שלי (בולדוג צרפתי) באופן דחוף, לטושי היה כיב עמוק . היה כל כך עדין וסבלני לכלבלב שלי.\n                <br>\n                תודה ענקית לבנות בקבלה, כל כך חמודות, מסבירות כל פרט , פינקו את טושי.\n                <br>\n                חזרתי היום לבדיקה חוזרת ושוב נהניתי משירות מעולה!\n                <br>\n                העיקר שטושי מרגיש הרבה יותר טוב\n                <br>\n                תודה לכם מכל הלב ושנה טובה ומוצלחת'),(2,'נטליה סלינג’ר',' רציתי להודות לקליניקה המדהימה שלכם, לכל הצוות המדהימים! הצלתם את גארפילד, החזרתם אותו לחיים מלאים ושמחים! כמה אנושיות מצדכם, כמה התחשבות מצדכם! עשיתם בלתי אפשרי ואפשרתם לנו להביא אותו לניתוח אחרי פחות מ24 שעות מאז שדיברנו בפעם הראשונה! חתול רחוב שקיבל יחס של מלך! עשיתם כל כך הרבה! כל יום חושבים אליכם ופשוט מחמם את הלב והנשמה לראות את גארפילד מאושר ובריא ולדעת שבעולם יש אנשים מיוחדים עם לב ענק!!!!'),(3,'קרן אוברמן',' הגענו בדחיפות למרפאה בגלל כיב בעין של ג’יפסי הנסיך שלנו,בן 16.\n                <br>\n                מהרגע שהתקבלנו קיבלנו טיפול צמוד ואוהב ביותר של כולם כולל כולם במרפאה.\n                <br>\n                כל מפגש איתה היה עם תשומת הלב הכי גדולה,תמיד בזמן ותמיד עם אהבה ודאגה ענקית לבריאות של ג’יפסי.\n                <br>\n                אז תודה רבה לנשות המרפאה המקסימות על הטיפול המסור והצמוד');
/*!40000 ALTER TABLE `customers_talk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `answer` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'מתי אני צריך לדאוג שיתכן וקיימת בעיה בעיניים?','  הפרשות חריגות מהעין,  עין אדומה וסימנים של כאב שמתבטאים בעין חצי עצומה וקושי לפתוח אותה לגמרי.  כמובן שאם יש ירידה בראיה גם מומלץ לפנות לוטרינר. סימנים לכך שהחיה לא רואה טוב הם- הליכה איטית וחששנית יותר,  התקלות מדי פעם בחפצים,  קשיי ראיה בסביבה חשוכה'),(2,'לכלב שלי יש הרבה דמעות מהעיניים. האם זה יכול להיות קשור למזון שהוא אוכל?','לא.  זה מיתוס שאין לו כל אחיזה במחקרים מדעיים.  אין קשר לסלק או לכל מזון אחר.'),(3,'כמה זמן אורכת הבדיקה?',' הפגישה במרפאה אורכת בין חצי שעה לשעה ,  בהתאם לצורך.'),(4,'מה עושים במקרים דחופים?','אנו ערוכים לקבל ולטפל במקרים דחופים 24/7.  ניתן להתקשר למרפאה  בכל שעה,  ובמקרה שהמרפאה סגורה,  תקבלו את מספר החירום של המרפאה.'),(5,'איך מנקים לכלב את העיניים? ','את העיניים ניתן לנקות עם פד רטוב – מי ברז זה בסדר גמור- לא צריך מים רתוחים או מי תה. קיימים מגבונים ייעודיים לעפעפיים שניתן לקנות בבית מרקחת.  ניתן בהחלט להשתמש בהם, הם נוחים ונעימים לניקוי.\n                        <br>\n                        בעקרון כשהעיניים בריאות אין צורך בכלל לנקות את העיניים. אם לכלב בריא מופיעות הפרשות חריגות בעיניים יש לפנות לוטרינר. עם זאת, יש מספר גזעים שסובלים מרטיבות או הפרשות באופן קבוע לדוגמת השיצו,  פקינז, בולדוג אנגלי ועוד.');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'שירותי עיניים','בניגוד לבני אדם, החיות לא מספרות לנו על ירידה בראיה , אנו מבינים זאת רק כאשר החיה מראה סימני עיוורון. בנוסף, היא גם לא מראה לנו סימני כאב כפי שאנו מכירים אותו. דווקא מסיבות אלו יש חשיבות רבה לסימנים שמתארים בעלי הכלב או החתול למה שמתרחש בבית וכמובן לבדיקת עיניים מקיפה.'),(2,'בדיקת עיניים יסודית כוללת','הסתכלות כללית על החיה – האם יש דימוע יתר, מצמוץ וקושי לפתוח עפעפיים- סימנים המעידים על כאב, האם נתקל בחפצים במרפאה, האם העין בולטת, וכו. בדיקת ראיה כללית – רפלקס מנס (Menace reflex) הטית כף יד מול העין בהפתעה צריכה לגרום למצמוץ. גם תגובת האישונים לאור עוזרת באבחון מצב הראיה. במידת הצורך- מבחן מעבר מסלול מכשולים בחדר- האם הכלב מסוגל לעבור מסלול מכשולים בחדר שאינו מכיר. המבחן מתבצע גם באור מלא וגם בחדר חשוך. בדיקה באמצעות מנורת סדק- slit lamp בדיקה זו מאפשרת בדיקה מיקרוסקופית של לקויות בעין וכן מאפשרת בדיקה יסודית של הקרנית, לשכה קדמית, קשתית ועדשת העין. בדיקת קרקעית העין על מנת לבדוק את מצב הרשתית באמצעות indirect ophthalmoscope בדיקת לחץ תוך עיני (לשלילת גלאוקומה) בדיקת קצב ייצור דמעות צביעת קרנית בפלורוסין לזיהוי פצעים(כיבים) קרנית.');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surgery`
--

DROP TABLE IF EXISTS `surgery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surgery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_of_surgery` varchar(100) NOT NULL,
  `clientEmail` varchar(100) NOT NULL,
  `surgery_date` date NOT NULL,
  `type_of_animal` varchar(100) NOT NULL,
  `animal_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surgery`
--

LOCK TABLES `surgery` WRITE;
/*!40000 ALTER TABLE `surgery` DISABLE KEYS */;
INSERT INTO `surgery` VALUES (1,'cat','adi@gmail.com','2022-01-28','כלב','None'),(2,'horse','adi@gmail.com','2022-01-13','חתול','None'),(3,'dog','adi@gmail.com','2022-01-26','כלב',''),(4,'קטרקט','adi@gmail.com','2022-01-09','כלב','ddddddd');
/*!40000 ALTER TABLE `surgery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surgery_types`
--

DROP TABLE IF EXISTS `surgery_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surgery_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surgery_types`
--

LOCK TABLES `surgery_types` WRITE;
/*!40000 ALTER TABLE `surgery_types` DISABLE KEYS */;
INSERT INTO `surgery_types` VALUES (1,'ניתוח PDT- העברת צינורית רוק לעין\n','  במקרים של מחלת עין יבשה בדרגה קשה, בהם הטיפול הרפואי אינו עוזר, אנו מציעים לבצע ניתוח להעברת צינורית רוק\n                לעין – Parotid duct transposition\n\n                במקרים חמורים של \"עין יבשה\", בהם אין תגובה לטיפול תרופתי לאחר נסיון של כ- 3-6 חודשים, ניתן לתת פיתרון\n                כירורגי להרטבת העין.\n\n                בניתוח זה, מסיטים את הצינור של בלוטת הרוק Parotid מאיזור החיך העליון לעין במטרה להרטיב את העין באמצעות רוק.\n\n                לרוק תכונות רבות הדומות לדמעות ולכן הינו נוזל מתאים להרטבת הקרנית ושמירה על חיוניותה. עם זאת, הרכב הרוק אינו\n                זהה לדמעות, ההבדל המשמעותי הינו רמה גבוהה של סידן שנמצא ברוק.\n\n                במהלך הניתוח מבוצע חתך בחניכיים מעל השיניים, אשר לאחר הניתוח נתפר בתפרים נספגים. קשירת הצינורית לעין מבוצעת\n                לכיס הלחמית באופן סמוי מהעין, גם היא מבוצעת בעזרת תפרים נספגים.\n\n                לאחר הניתוח, העין רטובה מייד מרוק, ולכן באופן מיידי יש ירידה משמעותית ברמת ההפרשות מהעין. הרטבת העין פותרת\n                גם את בעיית הכאב בעין הנובעת מהתייבשות הקרנית (לעיתים יתכנו מעט כאבים בגלל הניתוח עצמו, אך לאחר מספר ימים\n                חולפים הכאבים).\n\n                הכלב משתחרר הביתה עם טיפול אנטיביוטי, לעיתים גם טיפות עיניים.'),(2,'צ’רי איי – cherry eye\n',' צניחת בלוטת הדמעות של העפעף השלישי (prolapse of nictitans gland) הינה תופעה נפוצה בכלבים וגנטית בגזעים\n                מסוימים. תיקון כירורגי נכון של בעיה זו בו מחזירים את הבלוטה למקומה הינו הפיתרון הנכון והמיטבי.\n\n\n                צ’רי איי (עין דובדבן) הינו המונח בו משתמשים לרב לתיאור התופעה של צניחת בלוטת הדמעות של העפעף השלישי.\n                הבלוטה ביחד עם העפעף השלישי, בולטים בזוית העין הפנימית, עוברים תהליך דלקתי, בצקת נפיחות ואודם ולכן מדמים\n                מראה של \"דובדבן\" ומכאן הכינוי.'),(3,'ניתוח קטרקט\n','כמו במצלמה, בעין שלנו ישנה עדשה שקופה המאפשרת לנו לראות בצורה ממוקדת (לעשות פוקוס). קטרקט הוא למעשה עכירות\n                של העדשה. העכירות בד\"כ פרוגרסיבית, כלומר עם הזמן העכירות הולכת ומתגברת ומערבת שטח נרחב יותר של העדשה ובהתאם\n                מפריעה יותר לראיה.\n\n                אנו מחלקים את דרגת הקטרקט לארבע רמות אפשריות כאשר :\n                <br>\n                קטרקט התחלתי (incipient) – אזור קטן / או מספר אזורים קטנים של עכירות בעדשה שכמעט ואינם מפריעה לראיה.\n                קטרקט \"בלתי בשל\" (immature) – עכירות שמערבת חלק ניכר מהעדשה ועל כן מפריעה לראיה.\n                קטרקט \"בשל\" (mature) – מעורבות של כל העדשה. כלומר מדובר בעין עיוורת לחלוטין\n                קטרקט \"סופר בשל\" (hypermature) – חלק מהקטרקטים יגיעו עם הזמן לדרגה זו שבה ישנה דליפה של חלבונ עדשה לתוך חלל\n                בעין. מסיבה זו העדשה מצטמקת והמעטפת שלה מתקמטת בדומה לענב שהופך לצימוק. קטרקטים בדרגה זו שונים במופע שלהם\n                מבחינת העכירות, בחלקם כבר יהיה תהליך ספיגה שיותיר אחריו אזורים שקופים יותר. כתלות בגיל הכלב והגזע שלו יכולים\n                לקחת מספר חודשים ועד מספר שנים לקטרקט בשל להפוך לסופר בשל. תהליך זה, כאשר אינו מטופל עשוי להיות מלווה בדלקת\n\n                תוך עינית שלעיתים אף עלולה להוביל לסיבוכים נוספים עד כדי עיוורון בלתי הפיך.');
/*!40000 ALTER TABLE `surgery_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('adi@gmail.com','עדי','אלבז','0523415376','73623t1254'),('adiel@gmali.com','None','None','0545593494','73623t1254'),('adii9@gmail.com','None','None','0545593494','None'),('anatoli@gmail.com','אנטולי','טאקלוב','0526342373','yhgt65732d'),('baababab@gmail.com','None','None','0545593494','73623t1254'),('michal@gmail.com','מיכל','שדה','0525284245','gef3245gv'),('nadav@gmail.com','נדב','דויד','0501114444','1234567890'),('nisim@gmail.com','ניסים','טאק','0547283915','876gb3u84'),('noa@gmail.com','נועה','מתתיהו','0543759207','738yy12314'),('noma@gmail.com','שירה','שטיינבוך','0541737952','asfd2314aa'),('prentzip@gmail.com','כוכבה','שביט','0522224444','71qaswasd4'),('ramzi@gmail.com','ראמזי','עבד-ראמזי','0524256373','13sdg22254');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-22 21:38:23
