package com.yangjing.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yangjing.bean.Users;
import com.yangjing.dao.UsersDao;
import com.yangjing.dao.impl.UsersDaoImpl;

@WebServlet("/zhuce")
public class UsersAddServlet extends HttpServlet{

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
		String s1=req.getParameter("email");
		String s2=req.getParameter("password");
		
		//创建Users对象给属性赋值
		Users u=new Users();
		u.setUname(s1);
		u.setUpassword(s2);
		
		HttpSession session=req.getSession();
		session.setAttribute("uname", s1);
		//创建用户信息模型层对象
		UsersDao ud=new UsersDaoImpl();
		
		
		
		
		//执行注册操作
		try {
			if(ud.addusers(u)>0) {
				System.out.println("用户插入成功！");
				//绑定指定的值传入  会话传值
				req.setAttribute("uname", u.getUname());
				//虚拟化输出
				req.getRequestDispatcher("denglu.jsp").forward(req, resp);
			}else {
				System.out.println("信息插入失败！");
				//重定向原界面
				resp.sendRedirect("zhuce.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
}
