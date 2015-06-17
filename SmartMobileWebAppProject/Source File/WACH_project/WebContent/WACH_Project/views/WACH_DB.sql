-- 지역별 매장 안내 DB

DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `st_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `st_name` char(15) NOT NULL,
  `st_location` char(30) NOT NULL,
  `st_phoneNum` char(15) NOT NULL,
  `st_class` char(10) NOT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Dumping data for table `stores`

LOCK TABLES `stores` WRITE;
INSERT INTO `stores` VALUES (1,'인천작전점','인천 계양구 작전동 866-30 다동 2층','032-549-2681','incheon'),(2,'부천상동점','경기도 부천시 원미구 상동 535-8','032-327-2571','gungi'),(3,'부평역사점','인천 부평구 부평동 738-21 (2층)','032-502-2071','incheon'),(4,'부천역사점','경기 부천시 소사구 심곡본동 316-2 제가호 제2층','032-654-0761','gungi'),(5,'인천구월점','인천 남동구 구월동 1126-1','032-431-1761','incheon'),(6,'인천연수점','인천 연수구 동춘동 1114-2','032-821-0641','incheon'),(7,'공항점','서울 강서구 등촌동 672-1','02-3661-1101','seoul'),(8,'목동점','서울 양천구 목4동 805-3','02-2649-5315','seoul'),(9,'구로AKPLAZA','서울시 구로구 구로5동 573번지 AK 플라자 1층','02-855-7921','seoul'),(10,'가산점','서울특별시 금천구 가산동 60-8 현대아울렛 7층','02-2136-9971~3','seoul'),(11,'독산점','서울 금천구 독산동 291-5 (시티렉스 B1)','02-893-2911','seoul'),(12,'신대방점','서울 동작구 신대방동 375-1','02-821-0671','seoul'),(13,'서울대점','서울 관악구 낙성대동 1601-1','02-884-4761','seoul'),(14,'사당점','서울 관악구 남현동 1059-1','02-3471-1651','seoul'),(15,'여의도점','서울 영등포구 여의도동 34-12번지 신영증권빌딩 지하','02-761-2961~3','seoul'),(16,'안양평촌점','경기 안양시 동안구 호계동 1043-1','031-387-3761','gungi'),(17,'안산고잔점','경기 안산시 단원구 고잔동 530-2','031-405-4691','gungi'),(18,'이태원점','서울특별시용산구이태원동 128-13번지 3층~4층','02-749-5101','seoul'),(19,'신촌점','서울 서대문구 창천동 2-6','02-3147-1871','seoul'),(20,'서대문점','서울 중구 의주로1가 25-10','02-6325-2501','seoul');
UNLOCK TABLES;


-- 메뉴 정보 DB

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `m_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `m_name` char(35) NOT NULL,
  `m_enName` char(35) NOT NULL,
  `m_price` mediumint(8) unsigned NOT NULL,
  `m_picture` char(100) DEFAULT NULL,
  `m_compose` char(100) DEFAULT NULL,
  `m_cookTime` smallint(5) unsigned NOT NULL DEFAULT '15',
  `m_detail` text,
  `m_catID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Dumping data for table `menu`

LOCK TABLES `menu` WRITE;
INSERT INTO `menu` VALUES (1,'머쉬룸 서로인 스테이크 포 유','Mushroom Sirloin Steak for You',29000,'../public../public/images/menu/steak/grid_20130523122803.png','소고기, 탑서로인, 호주산, 250g',20,'머쉬룸 그레이비 소스가 더해진 서로인 스테이크',1),(2,'갈릭 립아이','Garlic Ribeye',34500,'../public../public/images/menu/steak/grid_20130523134625.png','소고기, 꽃등심, 호주산, 280g',20,'발사믹 소스에 조리한 마늘이 어우러진 꽃등심 스테이크',1),(3,'휠렛 오스카 스타일','Filet Oscar Style',38000,'../public../public/images/menu/steak/grid_20130523122731.png','소고기, 안심, 호주산, 180g',20,'치즈소스에 새우, 아스파라거스가 곁들여진 안심 스테이크',1),(4,'우드 화이어 그릴 스테이크 오 포와','Wood Fire Grill Steak Au Poivre',36500,'../public../public/images/menu/steak/grid_20130523135237.png','소고기, 채끝등심, 호주산, 280g',20,'참나무로 구운 프렌치 페퍼 채끝등심 스테이크\n(*일부매장 프레임 그릴드 방식 제공됩니다.)',1),(5,'레몬 시저 샐러드','Lemon Caesar Salad',20500,'../public../public/images/menu/salad/grid_20130426005111.png','',15,'바삭하게 튀긴 새우, 한치와 베이컨, 파마산 치즈가 토핑된 로메인 레티스 시저 샐러드',2),(6,'캘리포니아 스테이크 샐러드','California Steak Salad',20900,'../public../public/images/menu/salad/grid_20130508133640.png','소고기, 호주산, 110g',15,'슬라이스된 스테이크를 올려 나쵸칩과 살사소스, 랜치 드레싱을 곁들인 샐러드',2),(7,'치킨 텐더 샐러드','Chicken Tender Salad',19900,'../public../public/images/menu/salad/grid_20130426004516.png','닭고기.국내산',15,'부드럽고 고소한 닭 안심 튀김을 올린 샐러드',2),(8,'그릴드 씨푸드 로메인 샐러드','Grilled Seafood Romaine Salad',20900,'../public../public/images/menu/salad/grid_20130430165953.png','',15,'담백한 그릴드 스캘럽, 쉬림프, 깔라마리를 올린 로메인 시저 샐러드로 와인 비네가렛 드레싱과 함께 제공됩니다.',2),(9,'스파이시 비프 퀘사디아','Spicy Beef Quesadilla',16900,'../public../public/images/menu/aussie_tizers/grid_20140919004441.png','소고기, 호주산, 55g',10,'비프와 야채를 그릴에 볶아 치즈와 함께 또띠아에 넣어 구운 매콤한 퀘사디아',3),(10,'골드 코스트 코코넛 쉬림프','Gold Coast Coconut Shrimp',17900,'../public../public/images/menu/aussie_tizers/grid_20130523115820.png','',10,'달콤하고 고소한 코코넛 가루를 묻혀 바삭하게 튀긴 새우요리',3),(11,'오지 치즈 후라이즈','Aussie Cheese Fries',18900,'../public../public/images/menu/aussie_tizers/grid_20130523115905.png','',10,'두툼한 감자튀김에 체다치즈, 잭치즈를 듬뿍녹여 베이컨을 뿌린 메뉴',3),(12,'그릴드 쿠카부라 윙','Grilled Kookaburra Wings',15900,'../public../public/images/menu/aussie_tizers/grid_20140919005230.png','닭고기, 국내산',10,'그릴에 구워 기름기가 적고 담백한 닭날개 요리',3),(13,'레인지랜드 립레츠','Rangeland Riblets',15500,'../public../public/images/menu/aussie_tizers/grid_20140829160708.png','돼지갈비, 프랑스산, 220g',10,'매콤달콤한 바비큐 소스를 바른 돼지갈비 요리',3),(14,'기브미 파이브','Gimme Five',30900,'../public../public/images/menu/aussie_tizers/grid_20140919004020.png','닭고기, 국내산 / 돼지갈비, 프랑스산 /소고기, 호주산',10,'인기 애피타이저 5가지를 한번에 맛보세요\n(골드 코스트 코코넛 쉬림프, 스파이시 비프 퀘사디아, 레인지랜드 립레츠, 블루밍 머쉬룸, 치킨핑거)',3),(15,'치즈 랍스터 & 쉬림프 케익','Cheese Lobster & Shrimp Cake',32500,'../public../public/images/menu/seafood/grid_20140707165521.png','',20,'치즈랍스터와 쉬림프 케익의 콤비네이션 (수프 제공)',4),(16,'웨스턴 그릴드 씨푸드 플래터','Western Grilled Seafood Platter',47900,'../public../public/images/menu/seafood/grid_20130522183050.png','',20,'그릴드 랍스터, BBQ 글레이즈드 쉬림프, 케이준 그릴드 스노우 크랩이 함께 제공되는 플래터 (수프 제공)',4),(17,'피시 & 칩스','Fish & Chips',18500,'../public../public/images/menu/seafood/grid_20140919021831.png','',20,'바삭하게 튀긴 코드(대구)에 파마산 감자튀김을 함께 제공하는 요리',4),(18,'베이비 백 립 (400g)','Baby Back Ribs',32900,'../public../public/images/menu/favorites/grid_20140919014938.png','돼지갈비, 프랑스산, 400g',20,'부드러운 어린 돼지갈비에 아웃백만의 특제 소스를 발라 구워낸 바비큐 요리.\n(소스 선택: 오리지널 바비큐 또는 애플머스타드 소스)',5),(19,'베이비 백 립 (550g)','Baby Back Ribs',37500,'../public../public/images/menu/favorites/grid_20140919015133.png','돼지갈비, 프랑스산, 550g',20,'부드러운 어린 돼지갈비에 아웃백만의 특제 소스를 발라 구워낸 바비큐 요리.\n(소스 선택: 오리지널 바비큐 또는 애플머스타드 소스)',5),(20,'버팔로 비프 립','Buffalo Beef Ribs',37500,'../public../public/images/menu/favorites/grid_20140702173048.png','소갈비, 호주산, 500g',20,'매콤한 버팔로 소스로 풍미를 더한 텍사스 스타일의 부드러운 비프립',5),(21,'버팔로 비프 & 애플 머스타드 백 립','Buffalo Beef & Apple Mustard Back R',40900,'../public../public/images/menu/favorites/grid_20140702175916.png','소갈비, 호주산, 300g/돼지갈비, 프랑스산, 300g',20,'버팔로 비프 립과 애플 머스타드 백 립 을 동시에 맛볼 수 있는 콤보 메뉴',5),(22,'앨리스 스프링 치킨','Alice Springs Chicken',21900,'../public../public/images/menu/favorites/grid_20140702153315.png','닭고기.국내산',20,'구운 닭가슴살에 베이컨, 잭치즈, 체다치즈를 올려 오븐에 구운 요리',5),(23,'카카두 그릴러','Kakadu Griller',22900,'../public../public/images/menu/favorites/grid_20140701174106.png','소고기, 호주산, 250g',20,'갈비양념에 재워 그릴에서 볶아낸 슬라이스 비프요리',5),(24,'찹 스테이크 플래터','Chopped Steak Platter',22900,'../public../public/images/menu/favorites/grid_20140702153024.png','소고기, 호주산, 250g',20,'한국식 갈비소스에 재운 소고기 찹 스테이크',5),(25,'스파이시 치킨 & 쉬림프 스파게티','Spicy chicken & shrimp spaghetti',20500,'../public../public/images/menu/pasta/grid_20140919025312.png','닭고기.국내산',15,'담백한 치킨과 신선한 새우에 양파, 마늘로 맛을 더한 매콤하고 고소한 크림소스 파스타',6),(26,'투움바 파스타','Toowoomba Pasta',19900,'../public../public/images/menu/pasta/grid_20130523141209.png','',15,'최고급 파마산 치즈와 새우, 양송이를 함께 볶아 깊고 진한 크림소스 파스타',6),(27,'바질 페스토 올리브 파스타','Basil Pesto Olive Pasta',19900,'../public../public/images/menu/pasta/grid_20130523141225.png','',15,'새우와 아스파라거스를 볶아 선드라이 토마토, 바질 페스토 소스를 토핑한 올리브오일 파스타',6),(28,'씨푸드 뽀모도로','Seafood Pomodoro',19500,'../public../public/images/menu/pasta/grid_20140919024959.png','',15,'쉬림프, 깔라마리가 들어간 후레쉬 토마토 소스 파스타',6),(29,'치킨 까르보나라','Chicken Carbonara',20500,'../public../public/images/menu/pasta/grid_20140919025200.png','',15,'그릴드 치킨과 고소한 마늘 치즈 크림소스가 어우러진 정통 까르보나라 파스타',6);
UNLOCK TABLES;

-- 사이드 메뉴 정보 DB

DROP TABLE IF EXISTS `sideMenu`;
CREATE TABLE `sideMenu` (
  `s_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `s_name` char(15) NOT NULL,
  `s_picture` char(100) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table `sideMenu`

LOCK TABLES `sideMenu` WRITE;
INSERT INTO `sideMenu` VALUES (1,'더운야채','../public/images/menu/sidemenu/img_side_dish2.png'),(2,'구운 통감자','../public/images/menu/sidemenu/img_side_dish5.png'),(3,'으깬감자','../public/images/menu/sidemenu/img_side_dish3.png'),(4,'감자튀김','../public/images/menu/sidemenu/img_side_dish6.png'),(5,'구운 통고구마','../public/images/menu/sidemenu/img_side_dish4.png'),(6,'볶음밥','../public/images/menu/sidemenu/img_side_dish1.png');
UNLOCK TABLES;

select * from stores;
select * from menu;
-- select * from sideMenu;
