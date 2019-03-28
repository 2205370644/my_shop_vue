//vue_app_server 服务器
const express = require("express");
const mysql = require("mysql");
var app = express();
app.use(express.static("public"));
app.listen(3000);
const pool = require("./pool");

//express mysql 参数 request;response
//跨域访问配置
//1:加载模块cors--------跨域验证
const cors = require("cors");
//2:配置cors
app.use(cors({
  origin: ["http://127.0.0.1:3000",
    "http://localhost:3000",
    "http://localhost:8080"],//允许列表
  credentials: true   //是否验证
}));


//功能一:首页轮播
app.get("/getImages", (req, res) => {
  var rows = [
    { id: 1, img_url: "http://127.0.0.1:3000/img/banner/1.png" },
    { id: 2, img_url: "http://127.0.0.1:3000/img/banner/2.png" },
    { id: 3, img_url: "http://127.0.0.1:3000/img/banner/3.png" },
    { id: 4, img_url: "http://127.0.0.1:3000/img/banner/4.png" },
    { id: 5, img_url: "http://127.0.0.1:3000/img/banner/5.png" },
  ];
  res.send(rows);
})
//功能二 九宫格
app.get("/getjg", (req, res) => {
  var sql = "SELECT title ,img_url,id ,pathnav FROM shop_nav";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    // console.log(result)
    res.send(result)
  })
})

// 获取商城手机列表//
app.get("/getXR", (req, res) => {
  var sql = "SELECT pid, title ,subtitle,p_img ,price FROM shop_products_phone";
  pool.query(sql, (err, result) => {
    if (err) { throw err };
    // console.log(result)
    res.send(result)
  })
})


// 生活圈
app.get("/getLifeimg", (req, res) => {
  var sql = "SELECT * FROM `shop_life`";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    // console.log(result)
    res.send(result)
  })
})

// life 点赞
app.get("/zan", (req, res) => {
  // UPDATE 表名称 SET 列名称 = 新值 WHERE 列名称 = 某值
  var sql = "UPDATE shop_life SET point=point+1 WHERE id=1";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result)
    console.log(result)
  })
})

// {{item.ptime}}</p>
// {{item.size}}</p>
// {{item.ram}}</p>
// {{item.rom}}</p> 
// {{item.capacity}}</p>
// {{item.resolution}}</p>

// 获取 商品
app.get("/getproduct", (req, res) => {
  // var pid = req.query.pid;
  var sql = "SELECT pid,title ,subtitle,p_img ,price FROM shop_products_phone  ";
  pool.query(sql, (err, result) => {
    if (err) { throw err };
    // console.log(result)
    res.send(result)
    // res.send(pid)
  })
})

// 获取商品详情

//功能十五:小程序添加美食商品信息
// app.get("/getdetails", (req, res) => {
//   //1:获取二个参数 dname ctime
//   // console.log(res.send)
//   var id = this.$route.query.id;
//   // console.log(req)
//   // console.log(id)
//   //2:创建sql
//   var sql = "SELECT  title ,subtitle,p_img ,price FROM shop_products_phone WHERE id=" + id;
//   pool.query(sql, (err, result) => {
//     if (err) throw err;
//     res.send(result)
//     console.log(result)
//   })
// })



app.get("/getdetails", (req, res) => {
  var pid = req.query.pid;
  console.log(pid)
  var sql = "SELECT pid,p_time,size,ram,rom,capacity,resolution ,introduce, title ,subtitle,p_img ,price FROM shop_products_phone WHERE pid=?";
  pool.query(sql, [pid], (err, result) => {
    if (err) throw err;
    res.send(result)
  })
})








// 用户登录
app.get("/login", (req, res) => {
  //1:获取登录参数
  var u = req.query.uname;
  var p = req.query.upwd;
  // res.send(u+"------"+p)
  //2:正则
  //3:创建sql
  var sql = " SELECT uid";
  sql += " FROM shop_login";
  sql += " WHERE uname=? AND upwd=?  ";
  //4:如果参数匹配成功将用户id保存session对象
  pool.query(sql, [u, p], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({ code: -1, msg: "用户名或密码有误" })
    } else {
      res.send({ code: 1, msg: "登录成功" })
      // http://127.0.0.1:3000/login?uname=tom&upwd=123456  测试
    }
  });
})

app.get("/existsName", (req, res) => {
  var name = req.query.uname;
  pool.query("SELECT count(uid) as c FROM `shop_login` WHERE uname=?", [name], (err, result) => {
    if (err) throw err;
    console.log(result[0].c)
    if (result[0].c == 0) {
      res.send({ code: 1 })
    } else {
      res.send({ code: -1 })
    }
  })
})




// 2.1:小程序-上传文件(服务器)node.js
//  -加载第三方模块 npm i multer   下载安装
// #先加载模块创建对应对象
// var upload = multer({dest:”upload/”})
// var upload = multer({dest:"/mypic"})
// #如果模块加载成功req添加属性file
// app.post(“/uploads”,upload.single(“mypic”),(req,res)=>{});
// app.post("/",upload.single(“mypic”),(req,res)=>{});
// #保存上传文件信息
// req.file.size 				上传文件大小 (单位字节)
// req.file.mimetype 		上传文件类型 
// req.file.originalname 	上传文件原名称 1.jpg
// req.file.path         	临时文件路径

// 2.1:小程序-上传文件(小程序)
// --wx.chooseImage();
//  从本地相册选图片或使用相机拍照
//  count:1             最多可以选择图片总数:9
//  sourceType:[“camera”,”album”]指定来源相册还是相机
//  success:res          选择成功
//   tempFilePaths Array  本地图片路径列表
//  fail

// --wx.uploadFile({})
// 将本地资源上传到服务器客户端发起POST
//  url:         服务器端程序路径
//  filePath:     要上传文件资源本地路径
//  name:       上传图片name “mypic”
//  header      请求头
//   “Content-Type”:”multipart/form-data”
//  success      上传图片成功
//  fail          上传图片失败
//  练习:选中图片提示框  正在上传
//  练习:上传成功隐藏
//  练习:上传失败显示模态框 上传图片失败



// 上传文件----必须 post 方式
// 类型---
// 大小---
// 改名称--
// 修改路径---
// 原文件名字--
// 临时文件路径--


// // 1 引入 express  /  multer /  fs 
// const multer = require("multer")
// const fs = require("fs")
// // 2 创建 express 
// // 5 创建upload对象---临时目录--创建一个upload目录
// var upload = multer({
//   dest: "upload/"
// }) 
// console.log(new Date().getTime()) //毫秒数
// // 7 接受 post 请求
// app.post("/uploadFile", upload.single("mypic"), (req, res) => {
//   //  7.1 限制大小 
//   // 7.2 类型 
//   // 7.3 移动文件
//   var src = req.file.originalname;
//   var dec = new Date();
//   // 获取文件后缀名
//   var i3 = src.lastIndexOf(".");
//   var suff = src.substing(i3); 
//   var ft = new Date().getTime();
//   var fr = math.floor(math.random() * 9999);
//   var des = ".upload/" + ft + fr + suff; 
//   // 文件名修改
//   fs.renameSync(req.file.path.des);
//   res.send({
//     code: 1,
//     msg: "上传成功"
//   }) 
//   // 7.4 返回消息上传成功
// })




// 加载模块
const multer = require("multer");
// 创建模块对象
const fs = require("fs")
var upload = multer({
  dest: "upload/",
})
// 接收post请求
app.post("/upload", upload.single("mypic"), (req, res) => {
  // 创建新文件名
  var src = req.file.originalname;
  //时间
  var rt = new Date().getTime();
  var rr = Math.floor(Math.random() * 9999);
  var i3 = src.lastIndexOf(".");
  var suff = src.substring(i3);
  var newFile = __dirname + "public/upload/";
  newFile = rt + rr + suff;

  // 移动
  fs.renameSync(req.file.path, newFile);
  // 返回添加成功
  res.send({
    code: 1,
    msg: "上传成功"
  })
})








































//3:加载第三方模块: express-session 