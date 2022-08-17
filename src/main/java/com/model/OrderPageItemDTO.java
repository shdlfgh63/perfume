package com.model;

public class OrderPageItemDTO {

	/* 뷰로부터 전달받는 값*/	
	private int product_id;
	
	private int product_count;
	
	/* DB로부터 호출할 값 */
	private String name;
	
	private int price;
	
	private String image;
	
	/* 만들어 낼 값 */
	private int totalPrice;

	
	
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



	public void initTotal() {
		this.totalPrice = this.price*this.product_count;
	}



	@Override
	public String toString() {
		return "OrderPageItemDTO [product_id=" + product_id + ", product_count=" + product_count + ", name=" + name
				+ ", price=" + price + ", image=" + image + ", totalPrice=" + totalPrice + "]";
	}


	
}
