package com.sample.dto;

import java.util.Date;

public class CartItemDto {
	
	private int itemNo;						//sample_board_book_cart_items의 item_no
	private int bookNo;						//sample_board_book_cart_items의 book_no
	private String userId;					//sample_board_book_cart_items의 user_id
	private String title;					//sample_board_books의 book_title
	private String image;					//sample_board_books의 book_image
	private int amount;						//sample_board_book_cart_items의 item_amount
	private int price;						//sample_board_books의 book_price
	private int discountPrice;				//sample_board_books의 book_discount_price
	private Date createdDate;				//sample_board_book_cart_items의 created_date
	private Date updatedDate;				//sample_board_book_cart_items의 updated_date
	
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public int getBookNo() {
		return bookNo;
	}
	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscountPrice() {
		return discountPrice;
	}
	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Date getUpdatedDate() {
		return updatedDate;
	}
	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}

}
