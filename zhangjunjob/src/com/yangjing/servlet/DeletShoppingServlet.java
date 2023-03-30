package com.yangjing.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yangjing.dao.ShoppingDao;
import com.yangjing.dao.impl.ShoppingDaoImpl;

@WebServlet("/delshopping")
public class DeletShoppingServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//设置请求编码格式
//		req.setCharacterEncoding("utf-8");
		//设置响应格式
		resp.setContentType("text/html;charset=utf-8");
				
				
		//获取商品id
		Integer pid2=Integer.parseInt(req.getParameter("pid"));
		
		//创建业务层对象
		ShoppingDao sd=new ShoppingDaoImpl();
		try {
			//直接传入值
			sd.delete(pid2,1);
			System.out.println("6666");
			resp.sendRedirect("shopping.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		
	}
}
