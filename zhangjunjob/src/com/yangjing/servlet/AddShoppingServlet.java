package com.yangjing.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yangjing.bean.Shopping;
import com.yangjing.dao.ShoppingDao;
import com.yangjing.dao.impl.ShoppingDaoImpl;
import com.yangjing.bean.Product;
import com.yangjing.bean.Users;

@WebServlet("/addshopping")
public class AddShoppingServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//设置请求编码格式
		req.setCharacterEncoding("utf-8");
		//设置响应格式
		resp.setContentType("text/html;charset=utf-8");
		
		
//		//获取传入的用户名
//		HttpSession hs = req.getSession();
//		String s=(String)hs.getAttribute("uname");
		
		Users u=new Users();
		u.setUid(1);
		
		//获取商品id
		Product p=new Product();
		p.setPid(Integer.parseInt(req.getParameter("pid1")));
				
		
		//定义商品对象将传入的给入商品对象
		Shopping sp=new Shopping();
		sp.setPid(p);
		sp.setUid(u);
		
		
		//创建商品 模型层对象
		ShoppingDao sd=new ShoppingDaoImpl();
		
		try {
			List<Shopping> list=sd.list(p.getPid(), 1);
			sp.setPcount(1);
			sd.save(sp);
//			if(list.size()>0) {
				System.out.println("插入成功!");
				resp.sendRedirect("shopping.jsp");
//				
//			}else {
//				System.out.println("插入失败");
//				resp.sendRedirect("product.jsp");
//			}
		
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
