<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <style>
        /* boby内容首页 */
        body{
            /* 外编辑 */
            margin: 0px;
            /* 内边距 */
            padding: 0px;
            /* 字体 */
            font-family:sans-serif;
            /* 背景图片 */
            background: url(img/首页.jpg);
            /* 用于将图片扩大或者缩放来适应整个容器 */
            background-size: cover;
        }

        /* 登陆表单定位、大小 */
        .landing{
          width: 500px;
          height: 380px;
          margin: -150px 55%;
        }
 
        /* 圆形头像框 */
        .headportrait{
          margin-left: 180px;
          width: 100px;
          height: 100px;
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
        }

        /* 底部版权文字设置和定位 */
        .footera{
          color: beige;
          /* 字体 */
          font-family: sans-serif;
          font-size: 15px;
          margin-top: 270px;
          margin-left: 650px;
        }
        
    </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </head>
  <body>

      <!-- style="background-color:rgba(255, 255, 255, 0);背景透明度 -->
        <div class="jumbotron" style="background-color:rgba(255, 255, 255, 0);">
          <h1 class="display-3"><span style="color: beige; margin-left: 150px;">Furniture to buy</span> </h1>
          <p class="lead"><span style="color: beige; margin-left:150px;">家具购买</span></p>
          <p class="lead"><span style="color: beige; margin-left:150px;">My home dream</span></p>
        </div>
      
	
      <div class="landing">
        <div class="headportrait">
        </div>
        <form action="denglu">
          <div class="form-group">
            <label for="formGroupExampleInput" style="color: black;">Name</label>
            
            <%
            	//通过请求对象获取绑定的数据书否存在 Response绑定的值
            	if(request.getAttribute("uname")==null){
            %>
            <input name="name" type="text" class="form-control" id="formGroupExampleInput" placeholder="The fairy's name">
          	
          <% }else{ %>
          	<!-- 如果请求对象有绑定的值就显示账号  value="${uname}-->
           <input name="name" type="text" class="form-control" id="formGroupExampleInput" value="${uname}">
          <% } %>
          </div>
          <div class="form-group">
            <label for="formGroupExampleInput2" style="color: black;">Password</label>
            <input name="password" type="password" class="form-control" id="formGroupExampleInput2" placeholder="The Fairy's birthday">
          </div>
          <button type="submit" class="btn btn-light" style="margin-left: 420px;">landing </button>
          <button type="button" class="btn btn-light" style="margin-left: 300px; margin-top: -58px;"> <a href="zhuce.jsp" style="text-decoration: onen; color: black;">register</a> </button>
        </form>
      </div> 
      
      <div class="footera">
        版权所有、解释权归作者所有!
      </div>

  </body>
</html>