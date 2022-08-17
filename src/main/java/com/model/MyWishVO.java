package com.model;

public class MyWishVO {

	private int WishId;
	private String Name;
	private int Price;
	private String Image;
	private String Id;
	
	public MyWishVO() {
		
	}
					
	public MyWishVO(int wishid, String name, int price, String image, String id) {
		super();
		WishId = wishid;
		Name 	= name;
		Price	= price;
		Image	= image;
		Id		= id;
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public int getWishId() {
		return WishId;
	}

	public void setWishId(int wishid) {
		WishId = wishid;
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

	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}

	@Override
	public String toString() {
		return "MyWishVO [WishId=" + WishId + ", Name=" + Name + ", Price=" + Price + ", Image=" + Image + ", Id=" + Id
				+ "]";
	}

					
}

