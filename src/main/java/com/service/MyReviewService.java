package com.service;

import java.util.List;

import com.model.MyReviewVO;
import com.model.ReviewVO;


public interface MyReviewService {
	
	List<ReviewVO> selectReviewList(String id) throws Exception;
	
	public void enrollReview(MyReviewVO myreview);
	
	// 리뷰 삭제
	public void deleteReview(int reviewId) throws Exception;
	
	// public MyReviewVO getProductIdName(int productId);
	
	
}
