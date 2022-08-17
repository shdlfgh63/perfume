package com.model;

import java.util.Date;

public class MyOrderVO {

	private int OrderId;
	private Date OrderDate;
	private String Name;
	private int ProductCount;
	private int TotalPrice;
	private String Id;
	
	public MyOrderVO() {
		
	}
	
	public MyOrderVO(int orderId, Date orderDate, String name, int productCount, int totalPrice
			, String id) {
		super();
		OrderId 	 	= orderId;
		OrderDate   	= orderDate;	
		Name		 	= name;	 
		ProductCount	= productCount; 	
		TotalPrice 		= totalPrice; 
		Id				= id;
	}

	public int getOrderId() {
		return OrderId;
	}

	public void setOrderId(int orderId) {
		OrderId = orderId;
	}

	public Date getOrderDate() {
		return OrderDate;
	}

	public void setOrderDate(Date orderDate) {
		OrderDate = orderDate;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public int getProductCount() {
		return ProductCount;
	}

	public void setProductCount(int productCount) {
		ProductCount = productCount;
	}

	public int getTotalPrice() {
		return TotalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		TotalPrice = totalPrice;
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	@Override
	public String toString() {
		return "MyOrderVO [OrderId=" + OrderId + ", OrderDate=" + OrderDate + ", Name=" + Name + ", ProductCount="
				+ ProductCount + ", TotalPrice=" + TotalPrice + ", Id=" + Id + "]";
	}


	
}

