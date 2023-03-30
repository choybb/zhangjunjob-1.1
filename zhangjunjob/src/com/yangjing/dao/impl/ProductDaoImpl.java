package com.yangjing.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.yangjing.bean.Product;
import com.yangjing.dao.ProductDao;
import com.yangjing.util.DBUtil;

public class ProductDaoImpl implements ProductDao {

	Connection con=DBUtil.getCon();
	
	@Override
	public List<Product> list() throws SQLException {
		//定义一个集合
		List<Product> list=new ArrayList();
		String sql="select * from product";
		Statement st= con.createStatement();
		ResultSet rs=st.executeQuery(sql);
		while(rs.next()) {
			Product pro=new Product();
			pro.setPid(rs.getInt("p_id"));
			//名称
			pro.setPname(rs.getString("p_name"));
			//价格
			pro.setPprice(rs.getDouble("p_price"));
			//介绍
			pro.setPdescrbe(rs.getString("p_descrbe"));
			//数量
			pro.setPcount(rs.getInt("p_count"));
			//图片
			pro.setPimg(rs.getString("p_img"));
			
			list.add(pro);
		}
		return list;
	}

}
