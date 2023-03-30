package com.yangjing.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * 数据库连接管理类
 * @author Administrator
 *
 */
public class DBUtil {
	//定义接收配置文件中value值的属性
	private static String driver;
	private static String url;
	private static String username;
	private static String password;
		
	//获取配置文件加载  使用static块加载配置文件
	static {
		//定义一个Properties对象
		Properties pro=new Properties();
		//通过配置文件对象中提供的load方法加载文件
		try {
			pro.load(DBUtil.class.getClassLoader().getResourceAsStream("jdbc.properties"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//通过配置文件的key获取value操作
		driver=pro.getProperty("driver");
		url = pro.getProperty("url");
		username = pro.getProperty("username");
		password = pro.getProperty("password");
	}
	
	public static void main(String[] args) {
		DBUtil.getCon();
	}
	
	//获取数据库连接对象
	public static Connection getCon() {
		//声明一个连接对象
		Connection con=null;
		try {
			//加载驱动
			Class.forName(driver);
			//通过驱动管理类获取连接对象
			con = DriverManager.getConnection(url, username, password);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	//关闭数据库连接对象
	
	
	
	
	
}
