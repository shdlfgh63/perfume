package com.model;

public class MyReviewVO {

	private int ReviewId;
	private String Id;
	private int ProductId;
	private String Name;
	private String MyReviewContent;
	
	public MyReviewVO() {
		
	}
	
	public MyReviewVO(int reviewId, String id, int productId, String name, String myReviewContent) {
		super();
		ReviewId  = reviewId;
		Id		  = id;
		ProductId = productId;
		Name	  = name;
		MyReviewContent = myReviewContent;
	}

	public int getReviewId() {
		return ReviewId;
	}

	public void setReviewId(int reviewId) {
		ReviewId = reviewId;
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public int getProductId() {
		return ProductId;
	}

	public void setProductId(int productId) {
		ProductId = productId;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getMyReviewContent() {
		return MyReviewContent;
	}

	public void setMyReviewContent(String myReviewContent) {
		MyReviewContent = myReviewContent;
	}

	@Override
	public String toString() {
		return "MyReviewVO [ReviewId=" + ReviewId + ", Id=" + Id + ", ProductId=" + ProductId + ", Name=" + Name
				+ ", MyReviewContent=" + MyReviewContent + "]";
	}
	
	
}
