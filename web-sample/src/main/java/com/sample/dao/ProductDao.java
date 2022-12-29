package com.sample.dao;

import java.util.List;

import com.sample.util.SqlMapper;
import com.sample.vo.Product;

public class ProductDao {
	
	public Product getProductByNo(int productNo) {
		return (Product)SqlMapper.selectOne("getProductByNo", productNo);
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> getAllproducts(){
		return (List<Product>)SqlMapper.selectList("getAllProducts");
	}
	
	public void insertProduct(Product product) {
		SqlMapper.insert("insertProduct", product);
	}

}
