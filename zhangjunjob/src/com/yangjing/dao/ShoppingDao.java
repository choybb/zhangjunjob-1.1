package com.yangjing.dao;

import java.sql.SQLException;
import java.util.List;

import com.yangjing.bean.Shopping;

public interface ShoppingDao {

	//添加购物车方法
	public int save(Shopping shopping) throws SQLException;
	
	//删除购物车指定商品		通过用户和商品id去删除指定的商品
	public int delete(Integer pid,Integer uid) throws SQLException;
	
	//查询购物车	查询购物车 是查指定的购物车需要传入一个uid
	public List<Shopping> list(Integer pid,Integer uid) throws SQLException;
}
