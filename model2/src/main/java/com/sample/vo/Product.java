package com.sample.vo;

public class Product {
	
	private int no;
	private String name;
	private String maker;
	private int price;
	private int discountPrice;
	private int stock;
	
	public Product() {}
	
	public Product(int no, String name, String maker, int price, int discountPrice, int stock) {
		this.no = no;
		this.name = name;
		this.maker = maker;
		this.price = price;
		this.discountPrice = discountPrice;
		this.stock = stock;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
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

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

}
