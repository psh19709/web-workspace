package com.sample.dao;

import java.util.List;

import com.sample.dto.CartItemDto;
import com.sample.util.SqlMapper;
import com.sample.vo.CartItem;

public class CartItemDao {
	
	public void deleteCartItemByNo(int itemNo) {
		SqlMapper.delete("carts.deleteCartItemByNo", itemNo);
	}
	
	public void deleteCartItemsByUserId(String userId) {
		SqlMapper.delete("carts.deleteCartItemsByUserId", userId);
	}
	
	public void insertCartItem(CartItem cartItem) {
		SqlMapper.insert("carts.insertCartItem", cartItem);
	}
	
	@SuppressWarnings("unchecked")
	public List<CartItemDto> getCartItemsByUserId(String userId){
		return (List<CartItemDto>) SqlMapper.selectList("carts.getCartItemsByUserId", userId);
	}
	

}
