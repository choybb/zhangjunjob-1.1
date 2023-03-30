package com.yangjing.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yangjing.bean.Users;
import com.yangjing.dao.UsersDao;
import com.yangjing.dao.impl.UsersDaoImpl;

@WebServlet("/denglu")
public class UsersWinServlet extends HttpServlet{

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
		
		//获取jsp界面Request传入的值
		String s1=req.getParameter("name");
		String s2=req.getParameter("password");
		
		//创建Users对象给属性赋值
		Users u=new Users();
		u.setUname(s1);
		u.setUpassword(s2);
		
		//创建用户信息模型层对象
		UsersDao ud=new UsersDaoImpl();
		
		//实现登陆
		try {
			//这里返回的时候一个users对象、所有判断是否为空
			if(ud.winUsers(u)!=null) {
				System.out.println("登陆成功！");
				//绑定指定数据传入
				req.setAttribute("uname1", u.getUname());
				//虚拟化跳转
				req.getRequestDispatcher("zhujiemian.jsp").forward(req, resp);
			}else {
				//响应重定向
				resp.sendRedirect("denglu.jsp");
				System.out.println("登陆失败！");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
		
	}
	
}