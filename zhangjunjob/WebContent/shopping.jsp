<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.zhangjun.bean.*,com.zhangjun.dao.*,com.zhangjun.dao.impl.*"%>
<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
      <div class="container">
           <!-- 导航栏 -->
        <nav class="navbar navbar-light  justify-content-between navbar-light" style="background-color: #e3f2fd;">
        <a class="navbar-brand">商品信息</a>
        <form class="form-inline">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><a href="zhujiemian.jsp">首页</a></button>
        </form>
        </nav>
 
        <br>

        <!-- 巨幕 -->
              <div class="jumbotron" style="width: 1110px; height: 170px; background-color: #f1f1f1 ">
                  <h1 class="display-4">我的购物车</h1>
                  <p>买买买！</p>
              </div>
        <br>

        
        <table border="1" style="width: 1110px;">
            <tr>
                <th class="th9"><input name="" type="checkbox" value="" /> 全选</th>
                <th class="th7">图片</th>
                <th class="th2">货号</th>
                <th class="th1">商品名称</th>
                <th class="th3">价格</th>
                <th class="th4">数量</th>
                <th class="th5">小计</th>
                <th class="th6">操作</th>
            </tr>
            <form action="">
            
            <%
            	ShoppingDao sd=new ShoppingDaoImpl();
            	List<Shopping> list=sd.list(null, 1);
            	int sum=0;
            	for(Shopping sp:list){
            	sum+=sp.getPcount()*sp.getPid().getPprice();
            %>
            <tr>
                <td><input name="" type="checkbox" value="" /></td>
                <td><div class="cartnew-img"> <a href="#"><img src="img2/<%=sp.getPid().getPimg() %>" style="width: 100px; height: 100px;"></a> </div></td>
                <td> <%=sp.getPid().getPid() %></td>
                <td><div class="cartnew-img">
                    <p><a class="a_e" href="#" ><b><%=sp.getPid().getPdescrbe() %></b></a><br>
                </div></td>
                <td><%=sp.getPid().getPprice() %> </td>
                <td><p class="amount_wrapper">
                    <input class="amount_cut" type="button" value="+">
                    <input value="<%=sp.getPcount() %>" type="text" style="width: 80px;">
                    <input class="amount_add" type="button" value="-">
                </p></td>
                <td><strong>￥<%=sp.getPcount()*sp.getPid().getPprice() %> </strong></td>
           	
           	  <td><a href="delshopping?pid=<%=sp.getPid().getPid()%>">删除</a></td>
           		
           
            </tr>
            <%
            	}
            %>
            
        </form>
        </table>
        <br>
        <br>
         <div style="background: rgb(194, 194, 194); margin-left: 680px;">
          <p><span style="margin-right:40px;"><b class="font_red"> 3 </b>件商品</span> 商品总价（不含运费）：<strong>￥:<%=sum %></strong> 元</p>
      </div>
        <button type="button" class="btn btn-primary btn-lg btn-block">立即结算</button>
      
    
    <br>
    <br>
    <br>
    
        <div class="container">
            <div style="width: 100%; height: 230px; border-top: 1px solid beige; border-bottom:1px solid beige;">
              <div class="row" style="margin-top: 10px;">
                <!-- 1 -->
                <div class="col-sm-3" style="border-right:1px solid beige;">
                  <ul>
                    <li>
                      <p style=" color: rgb(0, 0, 0); font-weight: bold; font-size: 18px;">CONTACT</p>
                    </li>
                    <li>
                      <p><u>联系我们:</u></p>
                    </li>
                    <li>长沙民政职业技术学院</li>
                    <li>111111111111111@qq.com</li>
                    <li>44008800</li>
                  </ul>
                </div>
                <!-- 2 -->
                <div class="col-sm-3" style="border-right:1px solid beige;">
                  <ul>
                    <li>
                      <p style="color: rgb(0, 0, 0); font-weight: bold; font-size: 18px;">SOCIAL LINKS</p>
                    </li>
                    <li>
                      <p><u>关注我们：</u></p>
                    </li>
                    <li>微信：bandit_YJ</li>
                    <li>微博：放飞自我</li>
                    <li>qq：222222222</li>
                  </ul>
                </div>
                <!-- 3 -->
                <div class="col-sm-3" style="border-right:1px solid beige;">
                  <ul>
                    <li>
                      <p style="color: rgb(0, 0, 0); font-weight: bold; font-size: 18px;">LINKS</p>
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
                      <p style="color: rgb(0, 0, 0); font-weight: bold; font-size: 18px;">ABOUT</p>
                    </li>
                    <li>
                      <p><u>关于我们：</u></p>
                    </li>
                    <li>来自于长沙民政职业技术学院的学生，梦想成为 一名工程师。</li>
                    <button type="button" class="btn btn-primary">点击了解</button>
                  </ul>
                </div>
              </div>
              <!--  -->
              <div class="row">
                <div style="width: 100%; height: 100px;">
                  <div class="col-sm-12">
                    <h6 style="color: rgb(0, 0, 0); text-align: center; margin-top: 20px;">长沙民政职业技术学院</h6>
                    <h6 style="color: rgb(0, 0, 0); text-align: center;">版权所有!解释权归作者所有</h6>
                  </div>
                </div>
              </div>
        
    
    
    </div>


      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>