package com.yangjing.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.yangjing.bean.Product;
import com.yangjing.bean.Shopping;
import com.yangjing.dao.ShoppingDao;
import com.yangjing.util.DBUtil;

public class ShoppingDaoImpl implements ShoppingDao {

	Connection con=DBUtil.getCon();
	
	//添加购物车
	@Override
	public int save(Shopping shopping) throws SQLException {
		String sql="insert into shopping(p_id,stp_count,u_id) values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		//注意这里面存储的是对象  通过对象在点属性
		ps.setInt(1, shopping.getPid().getPid());
		ps.setInt(2, shopping.getPcount());
		ps.setInt(3, shopping.getUid().getUid());
		return ps.executeUpdate();
	}

	//删除指定商品信息
	@Override
	public int delete(Integer pid, Integer uid) throws SQLException {
		//删除数据操作
		String sql="delete from shopping where p_id=? and u_id=?";		
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, pid);
		ps.setInt(2, uid);
		return ps.executeUpdate();
	}


	//查询所有的商品信息
	@Override
	public List<Shopping> list(Integer pid, Integer uid) throws SQLException {
		List<Shopping> list=new ArrayList();
		String sql="select pro.p_id,pro.p_img,pro.p_name,pro.p_descrbe,pro.p_price,pro.p_count,sp.stp_count from users us,product pro ,shopping sp where sp.p_id=pro.p_id and sp.u_id=us.u_id and sp.u_id="+uid;
		if(pid!=null) {
			sql+=" and sp.p_id="+pid; 
		}
		Statement stm=con.createStatement();
		ResultSet rs=stm.executeQuery(sql);
		while(rs.next()) {
			Shopping sp=new Shopping();
			sp.setPcount(rs.getInt("stp_count"));
			
			Product pro=new Product();
			pro.setPid(rs.getInt("p_id"));
			pro.setPname(rs.getString("p_name"));
			pro.setPimg(rs.getString("p_img"));
			pro.setPprice(rs.getDouble("p_price"));
			pro.setPdescrbe(rs.getString("p_descrbe"));
			pro.setPcount(rs.getInt("p_count"));
			
			//这里一定要将商品对象存入到购物车中
			sp.setPid(pro);
			list.add(sp);
		}
		return list;
	}


	




}
