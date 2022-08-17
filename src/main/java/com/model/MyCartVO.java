package com.model;

public class MyCartVO {

	private int cart_id;
	private String member_id;
	private int product_id;
	private int product_count;
		
	// PRODUCT에서 join 할 DB 컬럼
	private String name;
	private int price;
	private String image;
	
	// 총 주문가격 ( 판매가격 * 수량)
	private int totalPrice;

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	// totalPrice 변수값을 초기화하는 메서드 - initTotal
	public void initTotal() {
		
		this.totalPrice = (int) (this.price * this.product_count);
	}
	
	@Override
	public String toString() {
		return "MyCartVO [cart_id=" + cart_id + ", member_id=" + member_id + ", product_id=" + product_id
				+ ", product_count=" + product_count + ", name=" + name + ", price=" + price + ", image=" + image
				+ ", totalPrice=" + totalPrice + "]";
	}
	

	
}
