<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <title>Title</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <style>
    /* 字体颜色 */
    a {
      color: white;
      margin: 20px;
    }

    body {
      /* 外编辑 */
      margin: 0px;
      /* 内边距 */
      padding: 0px;
      /* 字体 */
      font-family: sans-serif;
      background: url(img/首页1.jpg);
      background-size: cover;
    }

    /* 圆形头像框 */
    .headportrait {
      margin-left: 20px;
      width: 50px;
      height: 50px;
      /* 绘制边框 */
      /* border: 1px solid red; */
      /* 背景图片 */
      //background: url(img/头像.jpg);
      /* 自动适应网页大小 */
      background-size: cover;
      /* 设置div为圆形*/
      border-top-left-radius: 50%;
      border-top-right-radius: 50%;
      border-bottom-left-radius: 50%;
      border-bottom-right-radius: 50%;
      float: left;
    }

    /* 头像文字 */
    .headportrait1 {
      width: 140px;
      font-size: 13px;
      margin-top: 5px;
      margin-left: 80px;
      color: magenta;
    }

    /* 照片墙伪类 */
    #a1 {
      /* opacity: .6; */
      /* 设置图片为相对定位 */
      position: relative;
    }

    #a2 {
      /* opacity: .6; */
      /* 设置图片为相对定位 */
      position: relative;
    }

    #a3 {
      /* opacity: .6; */
      /* 设置图片为相对定位 */
      position: relative;
    }

    .a21 {
      cursor: pointer;
      text-align: center;
      color: mediumorchid;
      opacity: 0;
      position: absolute;
      top: 0;
      left: 0;
      width: 344px;
      height: 270px;
      background: rgba(255, 255, 255, 0.6);
      -webkit-transition: all 0.35s;
      -moz-transition: all 0.35s;
      /* 鼠标移入 */
      transition: all 1s;
    }

    .a21 h3 {
      text-align: center;
      line-height: 270px;
    }

    #a1 a:hover .a21 {
      opacity: 1;
    }

    .a22 {
      cursor: pointer;
      text-align: center;
      color: mediumorchid;
      opacity: 0;
      position: absolute;
      top: 0;
      left: 0;
      width: 344px;
      height: 320px;
      background: rgba(255, 255, 255, 0.6);
      -webkit-transition: all 0.35s;
      -moz-transition: all 0.35s;
      /* 鼠标移入 */
      transition: all 1s;
    }

    .a22 h3 {
      text-align: center;
      line-height: 320px;
    }

    #a2 a:hover .a22 {
      opacity: 1;
    }

    .a23 {
      cursor: pointer;
      text-align: center;
      color: red;
      color: mediumorchid;
      opacity: 0;
      position: absolute;
      top: 0;
      left: 0;
      width: 344px;
      height: 400px;
      background: rgba(255, 255, 255, 0.6);
      -webkit-transition: all 0.35s;
      -moz-transition: all 0.35s;
      /* 鼠标移入 */
      transition: all 1s;
    }

    .a23 h3 {
      text-align: center;
      line-height: 400px;
    }

    #a3 a:hover .a23 {
      opacity: 1;
    }


    /* 轮播图样式 */
    #lunbotuimg {
      width: 1700px;
      height: 800px;
    }

    #lunbotujiantou1 {
      /* 绝对定位两个箭头的位置 */
      position: absolute;
      top: 300px;
      left: 0px;
      /* 设置箭头大小 */
      width: 23px;
      height: 35px;
      /* 设置箭头的边角弧度 */
      border-top-left-radius: 0px;
      border-top-right-radius: 50%;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 50%;
    }

    #lunbotujiantou2 {
      /* 绝对定位两个箭头的位置 */
      position: absolute;
      top: 300px;
      right: 0px;
      width: 23px;
      height: 35px;
      /* 设置箭头的边角弧度 */
      border-top-left-radius: 50%;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 50%;
      border-bottom-right-radius: 0px;
    }

    .carousel-indicators li {
      /* 修改下面标点为圆形 */
      border-radius: 50%;
    }

    /* 设置标点颜色为红色 */
    .carousel-indicators .active {
      background-color: red;
    }

    /* 魔方样式 */

    /*最外层容器样式*/
    .wrap {
      width: 200px;
      height: 200px;
      margin: 200px;
      position: relative;
    }

    /*包裹所有容器样式*/
    .cube {
      width: 200px;
      height: 200px;
      margin: 0 auto;
      transform-style: preserve-3d;
      transform: rotateX(-30deg) rotateY(-80deg);
      animation: rotate linear 20s infinite;
    }

    @-webkit-keyframes rotate {
      from {
        transform: rotateX(0deg) rotateY(0deg);
      }

      to {
        transform: rotateX(360deg) rotateY(360deg);
      }
    }

    .cube div {
      position: absolute;
      width: 200px;
      height: 200px;
      opacity: 0.8;
      transition: all .4s;
    }

    /*定义所有图片样式*/
    .pic {
      width: 200px;
      height: 200px;
    }

    .cube .out_front {
      transform: rotateY(0deg) translateZ(100px);
    }

    .cube .out_back {
      transform: translateZ(-100px) rotateY(180deg);
    }

    .cube .out_left {
      transform: rotateY(-90deg) translateZ(100px);
    }

    .cube .out_right {
      transform: rotateY(90deg) translateZ(100px);
    }

    .cube .out_top {
      transform: rotateX(90deg) translateZ(100px);
    }

    .cube .out_bottom {
      transform: rotateX(-90deg) translateZ(100px);
    }

    /*定义小正方体样式*/
    .cube span {
      display: block;
      width: 100px;
      height: 100px;
      position: absolute;
      top: 50px;
      left: 50px;
    }

    .cube .in_pic {
      width: 100px;
      height: 100px;
    }

    .cube .in_front {
      transform: rotateY(0deg) translateZ(50px);
    }

    .cube .in_back {
      transform: translateZ(-50px) rotateY(180deg);
    }

    .cube .in_left {
      transform: rotateY(-90deg) translateZ(50px);
    }

    .cube .in_right {
      transform: rotateY(90deg) translateZ(50px);
    }

    .cube .in_top {
      transform: rotateX(90deg) translateZ(50px);
    }

    .cube .in_bottom {
      transform: rotateX(-90deg) translateZ(50px);
    }

    /*鼠标移入后样式*/
    .cube:hover .out_front {
      transform: rotateY(0deg) translateZ(200px);
    }

    .cube:hover .out_back {
      transform: translateZ(-200px) rotateY(180deg);
    }

    .cube:hover .out_left {
      transform: rotateY(-90deg) translateZ(200px);
    }

    .cube:hover .out_right {
      transform: rotateY(90deg) translateZ(200px);
    }

    .cube:hover .out_top {
      transform: rotateX(90deg) translateZ(200px);
    }

    .cube:hover .out_bottom {
      transform: rotateX(-90deg) translateZ(200px);
    }





    /* 3D旋转图片 */
    .box {
      width: 320px;
      height: 380px;
      /* position: absolute; */
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
      margin: auto;
      transform-style: preserve-3d;
      animation: im 20s linear infinite;
    }

    .box img {
      width: 100%;
      height: 100%;
      position: absolute;
    }

    @keyframes im {
      0% {
        transform: rotateY(0deg) rotateX(10deg);
      }

      25% {
        transform: rotateY(90deg) rotateX(-10deg);
      }

      50% {
        transform: rotateY(180deg) rotateX(10deg);
      }

      75% {
        transform: rotateY(270deg) rotateX(-10deg);
      }

      100% {
        transform: rotateY(360deg) rotateX(10deg);
      }

    }

    /*10张图片3d变换*/
    .box img:nth-child(1) {
      transform: rotateY(0deg) translateZ(600px);
      backface-visibility: visible;
    }

    .box img:nth-child(2) {
      transform: rotateY(36deg) translateZ(600px);
      backface-visibility: visible;
    }

    .box img:nth-child(3) {
      transform: rotateY(72deg) translateZ(600px);
      backface-visibility: visible;
    }

    .box img:nth-child(4) {
      transform: rotateY(108deg) translateZ(600px);
      backface-visibility: visible;
    }

    .box img:nth-child(5) {
      transform: rotateY(144deg) translateZ(600px);
      backface-visibility: visible;
    }

    .box img:nth-child(6) {
      transform: rotateY(180deg) translateZ(600px);
      backface-visibility: visible;
    }

    .box img:nth-child(7) {
      transform: rotateY(216deg) translateZ(600px);
      backface-visibility: visible;
    }

    .box img:nth-child(8) {
      transform: rotateY(252deg) translateZ(600px);
      backface-visibility: visible;
    }

    .box img:nth-child(9) {
      transform: rotateY(288deg) translateZ(600px);
      backface-visibility: visible;
    }

    .box img:nth-child(10) {
      transform: rotateY(324deg) translateZ(600px);
      backface-visibility: visible;
    }




    /* 底端解释 */
    ul {
      list-style-type: none;
    }

    ul li {
      color: aliceblue;
      font-size: 14px;
      margin-top: 10px;
    }
  </style>
</head>

<body>
  <!-- 选项卡 -->
  <!-- disabled 不可操作的 -->


  <ul class="nav nav-tabs" style="background-color:  #2C343C; height: 70px;">
    <li class="nav-item disabled">
      <p href="#" class="nav-link nav-item disabled">
        <div class="headportrait"></div>
        <div class="headportrait1">Furniture to buy <br />My home dream</div>
      </p>
    </li>
    <li class="nav-item ">
      <a class="nav-link"  href="http://www.coolsite360.com/sites/uxnhsb/preview/">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link"  href="http://www.coolsite360.com/sites/uxnhsb/preview/">Streams</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="http://www.coolsite360.com/sites/uxnhsb/preview/">About</a>
    </li>
    <li class="nav-item">
      <a class="nav-link"  href="http://www.coolsite360.com/sites/xl5z1e/preview/">Learn</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="http://www.coolsite360.com/sites/xl5z1e/preview/">Contact</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="http://www.coolsite360.com/sites/uxnhsb/preview/" id="dropdownId" data-toggle="dropdown" aria-haspopup="true"
        aria-expanded="false">Dropdown</a>
      <div class="dropdown-menu" aria-labelledby="dropdownId">
        <a class="dropdown-item" href="#">Action 1</a>
        <a class="dropdown-item" href="#">Action 2</a>
      </div>
    </li> 
    <form class="form-inline my-2 my-lg-0" style="margin-left: 230px;">
      <input class="form-control mr-sm-2" type="text" placeholder="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><a href="denglu.jsp">Search</a></button>
    </form>
  </ul>

<form action="product">
  <!-- 轮播图 -->
  <div class="container-fluid" style="width: 1700px; height: 800px;margin: 50px auto; margin-top: 0px;">
    <div class="row">
      <div id="carouselId" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselId" data-slide-to="0" class="active" style="width: 12px;height: 12px; "></li>
          <li data-target="#carouselId" data-slide-to="1" style="width: 12px;height: 12px;"></li>
          <li data-target="#carouselId" data-slide-to="2" style="width: 12px;height: 12px;"></li>
          <li data-target="#carouselId" data-slide-to="3" style="width: 12px;height: 12px;"></li>
          <li data-target="#carouselId" data-slide-to="4" style="width: 12px;height: 12px;"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="carousel-item active">
            <img id="lunbotuimg" src="img2/轮播图一.jpg" alt="First slide">
          </div>
          <div class="carousel-item">
            <img id="lunbotuimg" src="img2/轮播图二.jpg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img id="lunbotuimg" src="img2/轮播图三.jpg" alt="Third slide">
          </div>
          <div class="carousel-item">
            <img id="lunbotuimg" src="img2/轮播图四.jpg" alt="Four slide">
          </div>
          <div class="carousel-item">
            <img id="lunbotuimg" src="img2/轮播图五.jpg" alt="Five slide">
          </div>
        </div>
        <a href="#carouselId" role="button" data-slide="prev">
          <span id="lunbotujiantou1" class="carousel-control-prev-icon" style="background-color:gray; opacity: 0.5;"
            aria-hidden="true"></span>
          <!-- <span class="sr-85ly">Previous</span> -->
        </a>
        <a href="#carouselId" role="button" data-slide="next">
          <span id="lunbotujiantou2" class="carousel-control-next-icon" style="background-color: gray; opacity: 0.5;"
            aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
  </div>
</form>

  <!-- <p style="font-size: 40px; margin-left: 50px;margin-top: 20px; color:mintcream;">我的梦想的故事</p> -->
  <!-- <p style="font-size: 20px; margin-left: 50px; color: orange;">MY DREAM</p> -->
  <div style="height: 100px; color: blanchedalmond; font-size: 50px; text-align: center;margin-top: 100px;">MY DREAM
  </div>
  <div class="container">
    <div style="width: 100%; height: 550px;  background-color:rgba(8, 8, 8, 0.3);">
      <div style="width: 500px; height: 400px; background: url(img2/轮播图一.jpg); background-size: cover;
        border-top-left-radius: 99%;
         border-top-right-radius: 99%;
         border-bottom-left-radius: 99%;
         border-bottom-right-radius: 99%;
         float: left;
        margin-top: 50px;">
      </div>
      <!-- 魔方 -->
      <div style=" width: 400px; height: 400px;  margin-left: 650px; margin-top: 10px; border: 0.1px solid;">
        <!-- 外层最大容器 -->
        <div class="wrap" style="margin-left: 80px; width: 300px; ">
          <!--包裹所有元素的容器-->
          <div class="cube">
            <!--前面图片 -->
            <div class="out_front">
              <img src="img2/轮播图一.jpg" class="pic" />
            </div>
            <!--后面图片 -->
            <div class="out_back">
              <img src="img2/轮播图二.jpg" class="pic" />
            </div>
            <!--左面图片 -->
            <div class="out_left">
              <img src="img2/轮播图三.jpg" class="pic" />
            </div>
            <!--右面图片 -->
            <div class="out_right">
              <img src="img2/轮播图四.jpg" class="pic" />
            </div>
            <!--上面图片 -->
            <div class="out_top">
              <img src="img2/轮播图五.jpg" class="pic" />
            </div>
            <!--下面图片 -->
            <div class="out_bottom">
              <img src="img2/轮播图一.jpg" class="pic" />
            </div>

            <!--小正方体 -->
            <span class="in_front">
              <img src="img2/轮播图一.jpg" class="in_pic" />
            </span>
            <span class="in_back">
              <img src="img2/轮播图二.jpg" class="in_pic" />
            </span>
            <span class="in_left">
              <img src="img2/轮播图三.jpg" class="in_pic" />
            </span>
            <span class="in_right">
              <img src="img2/轮播图四.jpg" class="in_pic" />
            </span>
            <span class="in_top">
              <img src="img2/轮播图五.jpg" class="in_pic" />
            </span>
            <span class="in_bottom">
              <img src="img2/轮播图一.jpg" class="in_pic" />
            </span>
          </div>

        </div>
      </div>
    </div>
  </div>

  <div style="height: 100px; color: blanchedalmond; font-size: 50px; text-align: center;margin-top: 100px;">Memory photo
    album
  </div>
  <br /><br /><br /><br /><br />
  <!-- 3D照片墙 -->
  <div>
    <div class="show">
      <div class="box">
        <img src="img/1.jpg">
        <img src="img/2.jpg">
        <img src="img/3.png">
        <img src="img/4.jpg">
        <img src="img/5.jpg">
        <img src="img/6.png">
        <img src="img/7.png">
        <img src="img/8.jpg">
        <img src="img/9.png">
        <img src="img/1.jpg">
      </div>  
    </div>
  </div>
  <br /><br /><br />
  <!-- 照片墙 -->
  <div style="height: 100px; color: blanchedalmond; font-size: 50px; text-align: center;margin-top: 100px;">My life
    <hr />
  </div>

  <div class="container">
    <div style="width: 1110px; height: 1150px; ">
      <div class="row">
        <div class="col-sm-4 col-lg-4  col-md-4 col-xs-12">
          <a></a><div id="a1"><img src="img2/1.jpg" style="width: 344px; height: 270px;"><a href="product.jsp">
              <div class="a21">
                <h3>photography</h3>
              </div>
            </a></div>
          <br />
          <div id="a2"><img src="img2/4.jpg" style="width: 344px; height: 320px;"><a href="#">
              <div class="a22">
                <h3>cosmetics</h3>
              </div>
            </a></div>
          <br />
          <div id="a1"><img src="img2/5.jpg" style="width: 344px; height: 270px;"><a href="#">
              <div class="a21">
                <h3>My van</h3>
              </div>
            </a></div>
        </div>
        <div class="col-sm-4 col-lg-4  col-md-4 col-xs-12">
          <div id="a2"><img src="img2/2.jpg" style="width: 344px; height: 320px;"><a href="#">
              <div class="a22">
                <h3>gift </h3>
              </div>
            </a></div>
          <br />
          <div id="a2"><img src="img2/6.jpg" style="width: 344px; height: 320px;"><a href="#">
              <div class="a22">
                <h3>shoe </h3>
              </div>
            </a></div>
          <br />
          <div id="a2"><img src="img2/7.jpg" style="width: 344px; height: 320px;"><a href="#">
              <div class="a22">
                <h3>Electronic music </h3>
              </div>
            </a></div>
        </div>
        <div class="col-sm-4 col-lg-4  col-md-4 col-xs-12">
          <div id="a3"><img src="img2/3.jpg" style="width: 344px; height: 400px;"><a href="#">
              <div class="a23">
                <h3>Type of woman</h3>
              </div>
            </a></div>
          <br />
          <div id="a2"><img src="img2/8.jpg" style="width: 344px; height: 320px;"><a href="#">
              <div class="a22">
                <h3>rock</h3>
              </div>
            </a></div>
          <br />
          <div id="a2"><img src="img2/9.jpg" style="width: 344px; height: 320px;"><a href="#">
              <div class="a22">
                <h3>music</h3>
              </div>
            </a></div>
        </div>
      </div>
    </div>
  </div>
  <br /><br /><br /><br />

  <div class="container">
    <div style="width: 100%; height: 230px; border-top: 1px solid beige; border-bottom:1px solid beige;">
      <div class="row" style="margin-top: 10px;">
        <!-- 1 -->
        <div class="col-sm-3" style="border-right:1px solid beige;">
          <ul>
            <li>
              <p style=" color: seashell; font-weight: bold; font-size: 18px;">CONTACT</p>
            </li>
            <li>
              <p><u>联系我们:</u></p>
            </li>
            <li>长沙民政职业技术学院</li>
            <li>1111111111111@qq.com</li>
            <li>44008800</li>
          </ul>
        </div>
        <!-- 2 -->
        <div class="col-sm-3" style="border-right:1px solid beige;">
          <ul>
            <li>
              <p style="color: seashell; font-weight: bold; font-size: 18px;">SOCIAL LINKS</p>
            </li>
            <li>
              <p><u>关注我们：</u></p>
            </li>
            <li>微信：bandit_YJ</li>
            <li>微博：放飞自我</li>
            <li>qq：287346113</li>
          </ul>
        </div>
        <!-- 3 -->
        <div class="col-sm-3" style="border-right:1px solid beige;">
          <ul>
            <li>
              <p style="color: seashell; font-weight: bold; font-size: 18px;">LINKS</p>
            </li>
            <li><u>链接：</u></li>
            <li>长沙民政</li>
            <li>bandit_YJ</li>
            <li>加入我们:</li>
            <li>QQ群：111213123</li>
          </ul>
        </div>
        <!-- 4 -->
        <div class="col-sm-3">
          <ul>
            <li>
              <p style="color: seashell; font-weight: bold; font-size: 18px;">ABOUT</p>
            </li>
            <li>
              <p><u>关于我们：</u></p>
            </li>
            <li>来自于长沙民政职业技术学院的学生,梦想成为 一名工程师。</li>
            <button type="button" class="btn btn-primary">点击了解</button>
          </ul>
        </div>
      </div>
      <!--  -->
      <div class="row">
        <div style="width: 100%; height: 100px;">
          <div class="col-sm-12">
            <h6 style="color: beige; text-align: center; margin-top: 20px;">长沙民政职业技术学院</h6>
            <h6 style="color: beige; text-align: center;">版权所有!解释权归作者所有</h6>
          </div>
        </div>
      </div>

    </div>
  </div>
























  <!-- 内容显示 -->
  <!-- <div style="position: relative;top: 25px;background-color: #C44741; height: 200px;">
        <div class="tab-content" style="position: relative;top: 45%;left: 40%;color: white;">
            <div class="tab-pane active container" id="menu1">这个是Home界面</div>
            <div class="tab-pane fade container" id="menu2">这个是Streams界面</div>
            <div class="tab-pane fade container" id="menu3">这个是About界面</div>
            <div class="tab-pane fade container" id="menu4">这个是Learn界面</div>
            <div class="tab-pane fade container" id="menu5">这个是Contact界面</div>
        </div>
      </div> -->
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
  </script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
  </script>
</body>

</html>
