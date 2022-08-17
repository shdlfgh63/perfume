package com.service;

import java.util.List;

import com.model.ReviewVO;


public interface ReviewService {

	// 상품리뷰 등록
	public int enrollReview(ReviewVO rvo);
	
	// 리뷰 페이징
	// public ReviewPageVO reviewList(Criteria cri);
	
}
