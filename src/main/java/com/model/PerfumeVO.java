package com.model;

import org.springframework.web.multipart.MultipartFile;

public class PerfumeVO {
	
	private int Product_id;
	private String Name;
	private String Brand;
	private int Price;
	private String Source1;
	private String Source2;
	private String Source3;
	private String Image;
	private int Price2;
	private int Price3;
	private MultipartFile ImgFile;
	
	public PerfumeVO(){
		
	}

	public PerfumeVO(int product_id, String name, String brand, int price, String source1, String source2,
			String source3, String image, MultipartFile imgFile) {
		super();
		Product_id = product_id;
		Name = name;
		Brand = brand;
		Price = price;
		Source1 = source1;
		Source2 = source2;
		Source3 = source3;
		Image = image;
		ImgFile = imgFile;
	}
	
	public PerfumeVO(int product_id, String name, String brand, int price,int price2,int price3, String source1, String source2,
			String source3, MultipartFile imgFile) {
		super();
		Product_id = product_id;
		Name = name;
		Brand = brand;
		Price = price;
		Price2 = price2;
		Price3 = price3;
		Source1 = source1;
		Source2 = source2;
		Source3 = source3;
		ImgFile = imgFile;
		
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

	public int getProduct_id() {
		return Product_id;
	}

	public void setProduct_id(int product_id) {
		Product_id = product_id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getBrand() {
		return Brand;
	}

	public void setBrand(String brand) {
		Brand = brand;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}

	public String getSource1() {
		return Source1;
	}

	public void setSource1(String source1) {
		Source1 = source1;
	}

	public String getSource2() {
		return Source2;
	}

	public void setSource2(String source2) {
		Source2 = source2;
	}

	public String getSource3() {
		return Source3;
	}

	public void setSource3(String source3) {
		Source3 = source3;
	}

	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}


	public MultipartFile getImgFile() {
		return ImgFile;
	}

	public void setImgFile(MultipartFile imgFile) {
		ImgFile = imgFile;
	}

	
	@Override
	public String toString() {
		return "PerfumeVO [Product_id=" + Product_id + ", Name=" + Name + ", Brand=" + Brand + ", Price=" + Price
				+ ", Source1=" + Source1 + ", Source2=" + Source2 + ", Source3=" + Source3 + ", Image=" + Image
				 + ", ImgFile=" + ImgFile + "]";
	}

	
	
}

