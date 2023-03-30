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
    /* boby内容首页 */
    body {
      /* 外编辑 */
      margin: 0px;
      /* 内边距 */
      padding: 0px;
      /* 字体 */
      font-family: sans-serif;
      /* 背景图片 */
      background: url(img/首页.jpg);
      /* 用于将图片扩大或者缩放来适应整个容器 */
      background-size: cover;
    }

    .a1 {
      width: 700px;
      height: 500px;
      /* border: 1px solid red; */
      margin: 100px 450px;
      background-color: rgba(197, 197, 197, 0.4);
    }

    .a2 {
      width: 600px;
      height: 500px;
      /* border: 1px solid red; */
      margin-left: 50px;
    }

    .form-group {
      width: 350px;
      margin-left: 150px;
    }

    .a3 {
      text-align: center;
      font-size: 20px;
      color: orangered;
    }

    .a4 {
      width: 230px;
      height: 50px;
      /* border: 1px solid red; */
      margin-left: 1390px;
      margin-top: 10px;
    }

    a:hover {
      color: red;
    }

    .yonghu {
      float: left;
      position: absolute;
      margin-top: -38px;
      margin-left: 360px;
      width: 120px;
      height: 38px;
    }

    .mima {
      float: left;
      position: absolute;
      margin-top: -38px;
      margin-left: 360px;
      width: 120px;
      height: 38px;
    }

    .querenmima {
      float: left;
      position: absolute;
      margin-top: -38px;
      margin-left: 360px;
      width: 120px;
      height: 38px;
    }

    .shoujihaoma {
      float: left;
      position: absolute;
      margin-top: -38px;
      margin-left: 360px;
      width: 120px;
      height: 38px;
    }

  </style>

</head>

<body>

  <div class="a4">
    <p style="color: beige;"><a href="zhujiemian.jsp">登陆主界面</a>  ||  <a href="denglu.jsp">登陆首页</a></p>
  </div>>
   
<!--servlet绑定id-->
<form action="zhuce">

  <div class="a1">
    <div class="a2">
      <p class="a3">欢迎您来到会员注册界面！！</p>
      <hr />
      <div class="form-group">
        <label for="">账号：</label>
        
        <!--servlet绑定获取账号-->
        <input name="email" type="text" id="a1" class="form-control" onblur="run1()" placeholder="请输入一个6位数的账号"
          aria-describedby="helpId">
        <div  class="mima"><span id="a11">&nbsp;</span></div>
      </div>
      <div class="form-group">
      <!--servlet绑定获取密码-->
        <label for="">密码：</label>
        <input name="password" type="password" id="a2" class="form-control" onblur="run2()" placeholder="请输入一个6位数的密码" aria-describedby="helpId">
        <div  class="mima"><span id="a22"></span></div>
      </div>
      <div class="form-group">
        <label for="">确认密码：</label>
        <input type="text" id="a3" type="password" class="form-control" aria-describedby="helpId" onblur="run3()" placeholder="请再次输入密码">
        <div  class="querenmima"><span id="a33"></span></div>
      </div>
      <div class="form-group">
        <label for="">手机号码</label>
        <input type="text" id="a4" class="form-control" aria-describedby="helpId" onblur="run4()" placeholder="请输入手机号码">
        <div  class="shoujihaoma"><span id="a44"> </span></div>
      </div>
      <div style="margin-left: 150px;"><input type="checkbox" id="a5">我已阅读注册协议</div>
      <button type="submit" class="btn btn-primary" style="margin-left: 250px; margin-top: 20px;" onclick="run6()">立即注册</button>
    </div>
  </div>

</form>

  <script>
    // 用户名验证
    function run1() {
      var A1 = document.getElementById("a1");
      var A11 = document.getElementById("a11");
      if (A1.value == "" || A1.value == undefined || A1.value == null) {
        A11.innerHTML = "账号不能为空！"
      } else if (A1.value.indexOf(" ") >= 0) {
        A11.innerHTML = "输入中有空格"
      } else if (isNaN(A1.value)) {
        A11.innerHTML = "请输入纯数字"
      } else if (A1.value.charAt(0) == 0) {
        A11.innerHTML = "首位不能为0"
      } else if (A1.value.length == 6) {
        A11.innerHTML = "<img src='img2/ok.gif'/>"
      } else if (A1.value.length != 6) {
        A11.innerHTML = "用户名无效！"
      }
    }

    // 密码验证
    function run2() {
      var A2 = document.getElementById("a2");
      var A22 = document.getElementById("a22");
      if (A2.value == "" || A2.value == undefined || A2.value == null) {
        A22.innerHTML = "密码不能为空！"
      } else if (A2.value.indexOf(" ") >= 0) {
        A22.innerHTML = "输入中有空格"
      } else if (isNaN(A2.value)) {
        A22.innerHTML = "请输入纯数字"
      } else if (A2.value.charAt(0) == 0) {
        A22.innerHTML = "首位不能为0"
      } else if (A2.value.length == 6) {
        A22.innerHTML = "<img src='img2/ok.gif'/>"
      } else if (A2.value.length != 6) {
        A22.innerHTML = "密码无效！"
      }
    }

    // 确认密码
    function run3() {
      var A2 = document.getElementById("a2");
      var A3 = document.getElementById("a3");
      var A33 = document.getElementById("a33");
      if (A2.value == A3.value) {
        A33.innerHTML = "<img src='img2/ok.gif'>"
      } else {
        A33.innerHTML = "请重新输入"
      }
    }

    // 电话号码
    function run4(){
      var A4=document.getElementById("a4");
      var A44=document.getElementById("a44");
      if(A4.value=="" || A4.value == undefined || A4.value==null){
        A44.innerHTML="请输入内容";
      }else if(A4.value.length==11){
        A44.innerHTML="<img src='img2/ok.gif'/>";
      }else if (A4.value.indexOf(" ") >= 0) {
        A44.innerHTML = "输入中有空格"
      }else if (isNaN(A4.value)) {
        A44.innerHTML = "请输入纯数字"
      }else if (A4.value.length != 11) {
        A44.innerHTML = "用户名无效！"
      }else if (A4.value.charAt(0) == 0) {
        A44.innerHTML = "首位不能为0"
      }
    }

    // 按钮
    function run6(){
      var A1 = document.getElementById("a1");
      var A2 = document.getElementById("a2");
      var A3 = document.getElementById("a3");
      var A4 = document.getElementById("a4");
      var A5 = document.getElementById("a5");
      if(A1.value.length == 6 && A2.value.length == 6 && A3.value==A2.value && A4.value.length == 11 && A5.checked){
        alert("注册成功！");
      }else{
        alert("请将信息填写完整！");
      }
    }


  </script>

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