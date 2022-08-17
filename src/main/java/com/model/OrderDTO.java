package com.model;

import java.util.List;

public class OrderDTO {

	/*
	 * OrderPageDTO와 유사하나, DB로부터 저장된 정보(가격)와
	 * 주문 작업에 필요로 한 정보(배송비와 최종 비용 등)를 더 담을 수 있게 
	 * 새로운 DTO 클래스를 작성
	 */
	
	// 주문 번호
	private String order_id;
	
	// 배송 받는사람
	private String addressee;
	
	// 주문 회원 아이디
	private String member_id;
	
	// 우편번호
	private String memberaddr1;
	
	// 회원 주소
	private String memberaddr2;
	
	// 주문 상품목록
	private List<OrderItemDTO> orders;
	
	// 배송비
	private int deli_cost;
	
	/* db에 존재하지 않는 데이터 */
	
	// 판매가
	private int orderPrice;
	
	// 최종 주문가격
	private int orderFinalPrice;

	public String getOrder_id() {
		return order_id;
	}

	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}

	public String getAddressee() {
		return addressee;
	}

	public void setAddressee(String addressee) {
		this.addressee = addressee;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMemberaddr1() {
		return memberaddr1;
	}

	public void setMemberaddr1(String memberaddr1) {
		this.memberaddr1 = memberaddr1;
	}

	public String getMemberaddr2() {
		return memberaddr2;
	}

	public void setMemberaddr2(String memberaddr2) {
		this.memberaddr2 = memberaddr2;
	}

	public List<OrderItemDTO> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderItemDTO> orders) {
		this.orders = orders;
	}

	public int getDeli_cost() {
		return deli_cost;
	}

	public void setDeli_cost(int deli_cost) {
		this.deli_cost = deli_cost;
	}

	public int getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}

	public int getOrderFinalPrice() {
		return orderFinalPrice;
	}

	public void setOrderFinalPrice(int orderFinalPrice) {
		this.orderFinalPrice = orderFinalPrice;
	}

	@Override
	public String toString() {
		return "OrderDTO [order_id=" + order_id + ", addressee=" + addressee + ", member_id=" + member_id
				+ ", memberaddr1=" + memberaddr1 + ", memberaddr2=" + memberaddr2 + ", orders=" + orders
				+ ", deli_cost=" + deli_cost + ", orderPrice=" + orderPrice + ", orderFinalPrice=" + orderFinalPrice
				+ "]";
	}
	
	// 주문 작업에 필요한 데이터를 세팅하는 메서드 추가
	public void getOrderPriceInfo() {
		// 총 상품비용
		for(OrderItemDTO order : orders) {
			orderPrice += order.getTotalPrice();
			
		}
	
		// 배송비	: 100000원 이상 주문시 무료배송 / 이외 3000원
		if(orderPrice >= 100000) {
			
			deli_cost = 0;
		} else {
			deli_cost = 3000;
		}
		
		// 최종 주문비용(상품비용 + 배송비)
		 orderFinalPrice = orderPrice + deli_cost;
	}
	
	
}














