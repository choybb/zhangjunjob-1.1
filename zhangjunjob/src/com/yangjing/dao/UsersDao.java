package com.yangjing.dao;

import java.sql.SQLException;

import com.yangjing.bean.Users;

public interface UsersDao {

	//用户注册
	public int addusers(Users users) throws SQLException;
	
	//用户登陆
	public Users winUsers(Users users) throws SQLException;
	
}
