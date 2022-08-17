package com.model;

public class CartVO {
	
	//cart table
		private int Cart_id;
		private String Id;
		private int Product_id;
		private int Product_count;
		
		
		//product table
		private String Image;
		private String Name;	
		private int Price;
		private int Price2;
		private int Price3;
		private String state;
		
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		public int getPrice2() {
			return Price2;
		}
		public void setPrice2(int price2) {
			Price2 = price2;
		}
		public int getPrice3() {
			return Price3;
		}
		public void setPrice3(int price3) {
			Price3 = price3;
		}
		private int TotalPrice;
		
		public int getCart_id() {
			return Cart_id;
		}
		public void setCart_id(int cart_id) {
			Cart_id = cart_id;
		}
		public String getId() {
			return Id;
		}
		public void setId(String id) {
			Id = id;
		}
		public int getProduct_id() {
			return Product_id;
		}
		public void setProduct_id(int product_id) {
			Product_id = product_id;
		}
		public int getProduct_count() {
			return Product_count;
		}
		public void setProduct_count(int product_count) {
			Product_count = product_count;
		}
		public String getImage() {
			return Image;
		}
		public void setImage(String image) {
			Image = image;
		}
		public String getName() {
			return Name;
		}
		public void setName(String name) {
			Name = name;
		}
		public int getPrice() {
			return Price;
		}
		public void setPrice(int price) {
			Price = price;
		}
		public int getTotalPrice() {
			return TotalPrice;
		}
		public void setTotalPrice(int totalPrice) {
			TotalPrice = totalPrice;
		}
		public void initSaleTotal() {
			
	    this.TotalPrice = this.Price*this.Product_count;
	 			
     	}
 		public CartVO() {
 			
 		}
		
		public CartVO(int cart_id, String id, int product_id, int product_count, String image, String name, int price,
				int totalPrice) {
			super();
			Cart_id = cart_id;
			Id = id;
			Product_id = product_id;
			Product_count = product_count;
			Image = image;
			Name = name;
			Price = price;
			TotalPrice = totalPrice;
		}
		@Override
		public String toString() {
			return "CartVO [Cart_id=" + Cart_id + ", Id=" + Id + ", Product_id=" + Product_id + ", Product_count="
					+ Product_count + ", Image=" + Image + ", Name=" + Name + ", Price=" + Price + ", TotalPrice="
					+ TotalPrice + "]";
		}
		
	
		
	
		
	
}
