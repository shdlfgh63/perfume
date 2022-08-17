package com.model;

public class OrderItemDTO {
	
	/*
	 * OrderPageItemDTO와 유사하나, DB로부터 저장된 정보(가격)와
	 * 주문 작업에 필요로 한 정보(배송비와 최종 비용 등)를 더 담을 수 있게 
	 * 새로운 DTO 클래스를 작성
	 */
	 
	
	// 주문 번호 
	private String order_id;			
	
	// 상품 번호
	private int product_id;
	
	// 주문 수량
	private int product_count;
	
	// my_orderitem 기본키
	private int orderitem_id;
	
	// 한개당 가격
	private int price;

	/* db에 존재하지 않는 데이터 */
	private int totalPrice;

		
	public String getOrder_id() {
		return order_id;
	}


	public void setOrder_id(String order_id) {
		this.order_id = order_id;
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



	public int getOrderitem_id() {
		return orderitem_id;
	}


	public void setOrderitem_id(int orderitem_id) {
		this.orderitem_id = orderitem_id;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getTotalPrice() {
		return totalPrice;
	}


	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	
	
	
	@Override
	public String toString() {
		return "OrderItemDTO [order_id=" + order_id + ", product_id=" + product_id + ", product_count=" + product_count
				+ ", orderitem_id=" + orderitem_id + ", price=" + price + ", totalPrice=" + totalPrice + "]";
	}


	public void initTotal() {
		this.totalPrice = this.price*this.product_count;
		
	}
	
	
	
}
