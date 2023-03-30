package com.yangjing.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.yangjing.bean.Users;
import com.yangjing.dao.UsersDao;
import com.yangjing.util.DBUtil;

public class UsersDaoImpl implements UsersDao {

	//数据连接
	Connection con=DBUtil.getCon();
	
	
	//用户注册
	@Override
	public int addusers(Users users) throws SQLException {
		String sql="insert into users(u_name,u_password) values(?,?)";
		//预编译方式插入数据
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, users.getUname());
		ps.setString(2, users.getUpassword());
		//返回是否注册成功
		return ps.executeUpdate();
	}

	@Override
	public Users winUsers(Users users) throws SQLException {
		//创建用户对象
		Users u=null;
		String sql="select u_name,u_password from users where u_name=? and u_password=?";
		//预编译方式插入数据
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, users.getUname());
		ps.setString(2, users.getUpassword());
		//将查询结果传入结果集中 判断结果集是否有内容进行对象存值
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			u=new Users();
			u.setUname(rs.getString("u_name"));
			u.setUpassword(rs.getString("u_password"));
		}
		return u;
	}

}
