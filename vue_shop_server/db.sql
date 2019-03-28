#设置客户端连接服务器编码
  SET NAMES UTF8;
#丢弃数据库(如果存在) shop
  DROP DATABASE IF EXISTS  shop;
#创建数据库 shop;
  CREATE DATABASE  shop CHARSET=UTF8;
#进入数据库
  USE  shop;



-- #创建用户登录表
CREATE TABLE  shop_login(
  uid TINYINT PRIMARY KEY AUTO_INCREMENT,
  uname   VARCHAR(16),
  upwd    VARCHAR(16)
); 
INSERT INTO shop_loginVALUES(1, 'tom', '123456');
INSERT INTO shop_loginVALUES(2, 'li', '123456');
INSERT INTO shop_loginVALUES(3, 'wang', '123456');
INSERT INTO shop_loginVALUES(4, 'zhang', '123456');
INSERT INTO shop_loginVALUES(5, 'hua', '123456');
    
    
-- #创建用户注册表
CREATE TABLE shop_register(
  id   INT PRIMARY KEY AUTO_INCREMENT,
  uid  INT,
  uname VARCHAR(16),
  upwd VARCHAR(16)
);



-- CREATE TABLE moli_tent(
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   lid INT,
--   uname VARCHAR(10),
--   title VARCHAR(100),
--   mg VARCHAR(55),
--   ctime DATETIME,
--   nid INT
-- );



-- 九宫格图片表
CREATE TABLE shop_nav(
  id INT PRIMARY KEY AUTO_INCREMENT,
  navid  INT,
  pathnav   VARCHAR(20),
  title VARCHAR(8),
  img_url VARCHAR(64)
);
INSERT INTO shop_nav VALUES(NULL, 1,"Mall", "商城", "http://127.0.0.1:3000/img/jg/1.jpg");
INSERT INTO shop_nav VALUES(NULL, 2,"Photograph", "摄影", "http://127.0.0.1:3000/img/jg/2.jpg");
INSERT INTO shop_nav VALUES(NULL, 3,"Cate", "美食", "http://127.0.0.1:3000/img/jg/3.jpg");
INSERT INTO shop_nav VALUES(NULL, 4,"Fun", "娱乐", "http://127.0.0.1:3000/img/jg/4.jpg");
INSERT INTO shop_nav VALUES(NULL, 5,"Son", "亲子", "http://127.0.0.1:3000/img/jg/5.jpg");
INSERT INTO shop_nav VALUES(NULL, 6,"Ktv", "KTV", "http://127.0.0.1:3000/img/jg/6.jpg");
INSERT INTO shop_nav VALUES(NULL, 7,"Ticket", "淘票票", "http://127.0.0.1:3000/img/jg/7.jpg");
INSERT INTO shop_nav VALUES(NULL, 8,"All", "全部", "http://127.0.0.1:3000/img/jg/8.jpg");





-- 商城--手机--列表
CREATE TABLE shop_products_phone (
   id         INT PRIMARY KEY AUTO_INCREMENT,
   pid        INT,
   p_time     VARCHAR(10),
   size       FLOAT(2,1),
   ram        TINYINT,
   rom        TINYINT,
   capacity    INT,
   resolution VARCHAR(16),
   title      VARCHAR(64),
   subtitle   VARCHAR(128),
   price      FLOAT(10,2) UNSIGNED,
   p_img      VARCHAR(64),
   introduce  VARCHAR(1000)
) ;

-- 永无止境:
-- 荣耀V20 胡歌同款 麒麟980芯片 魅眼全视屏 6GB+128GB 幻夜黑 游戏手机 移动联通电信4G全面屏手机 双卡双待

-- 永无止境:
-- 华为 华为 Mate 20 Pro UD屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G手机

INSERT INTO shop_products_phone VALUES(null,01,"2017年1月",6.5,6,128,4400,"2340*1080", "华为nova4",    "胡歌同款",9.99, "http://127.0.0.1:3000/img/products/phone/1.jpg","华为nova4手机采用全新一代双层膜片纳米纹理技术，使得3D双曲面玻璃机身在不同的光线下呈现出不同的绚丽色彩；其超广角三摄大幅突破手机摄影限制，随时随地捕捉精彩时刻拉近距离美。");
INSERT INTO shop_products_phone VALUES(null,02,"2015年3月",6.5,6,64,4400,"2340*1080", "华为 Mate","屏内指纹版",9.99, "http://127.0.0.1:3000/img/products/phone/2.jpg","UD屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G手机");
INSERT INTO shop_products_phone VALUES(null,03,"2013年9月",6.5,4,128,4400,"2340*1080", "荣耀V20",    "胡歌同款",9.99, "http://127.0.0.1:3000/img/products/phone/3.jpg","麒麟980芯片 魅眼全视屏 6GB+128GB 幻夜黑 游戏手机 移动联通电信4G全面屏手机 双卡双待");
INSERT INTO shop_products_phone VALUES(null,04,"2017年9月",6.5,4,64,4400,"2340*1080", "华为 Mate","屏内指纹版",9.99, "http://127.0.0.1:3000/img/products/phone/4.jpg","UD屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G手机");
INSERT INTO shop_products_phone VALUES(null,05,"2018年5月",6.5,4,128,4400,"2340*1080", "荣耀V20",    "胡歌同款",9.99, "http://127.0.0.1:3000/img/products/phone/5.jpg","麒麟980芯片 魅眼全视屏 6GB+128GB 幻夜黑 游戏手机 移动联通电信4G全面屏手机 双卡双待");
INSERT INTO shop_products_phone VALUES(null,06,"2019年4月",6.5,4,128,4400,"2340*1080", "华为 Mate",  "胡歌同款",9.99, "http://127.0.0.1:3000/img/products/phone/6.jpg","UD屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G手机");
INSERT INTO shop_products_phone VALUES(null,07,"2017年6月",6.5,6,64,4400,"2340*1080", "荣耀V20",    "胡歌同款",9.99, "http://127.0.0.1:3000/img/products/phone/4.jpg","麒麟980芯片 魅眼全视屏 6GB+128GB 幻夜黑 游戏手机 移动联通电信4G全面屏手机 双卡双待");
INSERT INTO shop_products_phone VALUES(null,08,"2018年8月",6.5,6,64,4400,"2340*1080", "华为 Mate","屏内指纹版",9.99, "http://127.0.0.1:3000/img/products/phone/5.jpg","UD屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G手机");
INSERT INTO shop_products_phone VALUES(null,09,"2016年2月",6.5,4,128,4400,"2340*1080", "荣耀V20", "胡歌同款", 9.99, "http://127.0.0.1:3000/img/products/phone/1.jpg","麒麟980芯片 魅眼全视屏 6GB+128GB 幻夜黑 游戏手机 移动联通电信4G全面屏手机 双卡双待");
INSERT INTO shop_products_phone VALUES(null,10,"2019年9月",6.5,4,64,4400,"2340*1080", "华为 Mate", "屏内指纹版", 9.99, "http://127.0.0.1:3000/img/products/phone/2.jpg","UD屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G手机");
INSERT INTO shop_products_phone VALUES(null,11,"2017年6月",6.5,4,128,4400,"2340*1080", "荣耀V20", "胡歌同款", 9.99, "http://127.0.0.1:3000/img/products/phone/4.jpg","麒麟980芯片 魅眼全视屏 6GB+128GB 幻夜黑 游戏手机 移动联通电信4G全面屏手机 双卡双待");
INSERT INTO shop_products_phone VALUES(null,12,"2019年5月",6.5,4,64,4400,"2340*1080", "华为 Mate", "胡歌同款", 9.99, "http://127.0.0.1:3000/img/products/phone/3.jpg","UD屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G手机");
INSERT INTO shop_products_phone VALUES(null,13,"2018年7月",6.5,6,128,4400,"2340*1080", "荣耀V20", "胡歌同款", 9.99, "http://127.0.0.1:3000/img/products/phone/5.jpg","麒麟980芯片 魅眼全视屏 6GB+128GB 幻夜黑 游戏手机 移动联通电信4G全面屏手机 双卡双待");
INSERT INTO shop_products_phone VALUES(null,14,"2017年5月",6.5,4,64,4400,"2340*1080", "华为 Mate", "胡歌同款", 9.99, "http://127.0.0.1:3000/img/products/phone/1.jpg","UD屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G手机");
INSERT INTO shop_products_phone VALUES(null,15,"2018年6月",6.5,6,128,4400,"2340*1080", "荣耀V20", "胡歌同款", 9.99, "http://127.0.0.1:3000/img/products/phone/3.jpg","麒麟980芯片 魅眼全视屏 6GB+128GB 幻夜黑 游戏手机 移动联通电信4G全面屏手机 双卡双待");
INSERT INTO shop_products_phone VALUES(null,16,"2018年7月",6.5,6,64,4400,"2340*1080", "华为 Mate", "胡歌同款", 9.99, "http://127.0.0.1:3000/img/products/phone/2.jpg","UD屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G手机");
INSERT INTO shop_products_phone VALUES(null,17,"2018年8月",6.5,4,128,4400,"2340*1080", "荣耀V20", "胡歌同款", 9.99, "http://127.0.0.1:3000/img/products/phone/3.jpg","麒麟980芯片 魅眼全视屏 6GB+128GB 幻夜黑 游戏手机 移动联通电信4G全面屏手机 双卡双待");
INSERT INTO shop_products_phone VALUES(null,18,"2018年3月",6.5,4,128,4400,"2340*1080", "华为 Mate", "胡歌同款", 9.99, "http://127.0.0.1:3000/img/products/phone/1.jpg","UD屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G手机");
上市时间 2018-9
屏幕尺寸 6.5英寸
运行内存 8GB
机身内存 128GB
电池容量 4400mAh
分辨率:  2340*1080


华为nova4
华为nova4手机采用全新一代双层膜片纳米纹理技术，使得3D双曲面玻璃机身在不同的光线下呈现出不同的绚丽色彩；其超广角三摄大幅突破手机摄影限制，随时随地捕捉精彩时刻拉近距离美。
vivo X27 微距摄影手机 
零感水冷散热，减少芯片高温，加持8+256GB内存，游戏持续畅爽，配备4000mAh电池，保障持久用机需求。后置超广角三摄，支持2.5cm微距摄影，细微美好清晰写意。
OPPO R17水滴屏手机
配备典雅优美的水滴屏，追求时尚轻奢之美，前置采用2500万AI智慧美颜，支持自定义美颜功能，轻松留下您的美，搭载光感屏幕指纹，闪速解锁更方便，拥有8GB超大内存配置，释放全速性能。
OPPO全景屏拍照手机
手机搭载曲面全景屏幕，双曲面手感致密滑腻，19.5：9的屏幕比例，拓宽你的视野，配备全新的人脸识别科技，智能人像解锁更加方便快捷，隐藏式3D摄像头让拍照更有科技感。
三星 S10 广角三摄手机
极窄屏内开孔，加持屏下指纹，精简机身，彰显设计美学。独树一帜的动态AMOLED屏幕，显示锐利，结合认证级低蓝光，可减少视疲劳。后置超广角三摄，拍照性能强大，摄影创作空间更自由。
一加 光感屏幕指纹 手机
一加这款光感屏幕指纹手机，以6.41英寸的大视野全面屏造型呈现出来，并且还在其内配有性能强悍的骁龙845芯片。使得当你用起它来玩手游时，能轻易地享受到更有操作快感的美好娱乐体验
华为P20ProNFC手机
华为新机来袭，高颜值让人爱不释手，配置海思高性能智能处理器，多任务运行不在话下，八核智能处理器，响应快速，任务影音流畅不卡顿，支持触控功能，操作体验更加方便，香槟金色，时尚奢华。
华为限量版手机
华为出品，国产良心之作，品质保证，采用全网通制式，方便不同的需求，采用数字降噪和蓝牙增强技术，提高播放音质，强劲的配置承载了人工智能算法操作系统，让整机运行更快速。
华为 HUAWEI P30 Pro 
超大广角 超感光徕卡四摄10倍混合变焦 8GB+128GB亮黑色全网通版双4G手机



-- 生活圈
CREATE TABLE shop_life(
   id         INT PRIMARY KEY AUTO_INCREMENT,
   uid        INT,
   uname       VARCHAR(16),
   point       INT,
   ctime       DATETIME,
   content    VARCHAR(800),
   u_img      VARCHAR(128),
   life_img   VARCHAR(128)
);

INSERT INTO shop_life VALUES(null, 1, "小小的火", 99, now(), "今天要去看戏了，好开森！😄", "http://127.0.0.1:3000/img/head/1.jpg", "http://127.0.0.1:3000/img/life/1.jpg");
INSERT INTO shop_life VALUES(null, 2, "清风", 9, now(), "今天要去看戏了，好开森！😄", "http://127.0.0.1:3000/img/head/1.jpg", "http://127.0.0.1:3000/img/life/1.jpg");
INSERT INTO shop_life VALUES(null, 3, "我是单身狗", 66, now(), "今天要去看戏了，好开森！😄", "http://127.0.0.1:3000/img/head/1.jpg", "http://127.0.0.1:3000/img/life/1.jpg");
INSERT INTO shop_life VALUES(null, 4, "强", 666, now(), "今天要去看戏了，好开森！😄", "http://127.0.0.1:3000/img/head/1.jpg", "http://127.0.0.1:3000/img/life/1.jpg");
INSERT INTO shop_life VALUES(null, 5, "火辣辣", 99, now(), "今天要去看戏了，好开森！😄", "http://127.0.0.1:3000/img/head/1.jpg", "http://127.0.0.1:3000/img/life/1.jpg");
INSERT INTO shop_life VALUES(null, 6, "辣辣火", 99, now(), "今天要去看戏了，好开森！😄", "http://127.0.0.1:3000/img/head/1.jpg", "http://127.0.0.1:3000/img/life/1.jpg");
INSERT INTO shop_life VALUES(null, 7, "我爱你，辣条！", 99, now(), "今天要去看戏了，好开森！😄", "http://127.0.0.1:3000/img/head/1.jpg", "http://127.0.0.1:3000/img/life/1.jpg");
INSERT INTO shop_life VALUES(null, 8, "随风潜入夜", 99, now(), "今天要去看戏了，好开森！😄", "http://127.0.0.1:3000/img/head/1.jpg", "http://127.0.0.1:3000/img/life/1.jpg");

-- SELECT u_img,life_img,content,point,ctime, FROME shop_life WHERE id=1;


-- 用户头像管理表
CREATE TABLE shop_info (
  id   INT PRIMARY KEY AUTO_INCREMENT;
  uid   INT,
  avatar VARCHAR(255)
)
 
INSERT INTO shop_info VALUES(null,1,'1.png');
INSERT INTO shop_info VALUES(null,2,'1.png');
INSERT INTO shop_info VALUES(null,3,'1.png');
INSERT INTO shop_info VALUES(null,4,'1.png');
INSERT INTO shop_info VALUES(null,5,'1.png');
INSERT INTO shop_info VALUES(null,6,'1.png');
INSERT INTO shop_info VALUES(null,7,'1.png');












