package com.service.impl;

import java.util.List;

import com.mapper.MyReviewMapper;
import com.model.MyReviewVO;
import com.model.ReviewVO;
import com.service.MyReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("myReviewService")
public class MyReviewServiceImpl implements MyReviewService {
	
	@Autowired
	private MyReviewMapper myReviewDAO;
	
	@Override
	public List<ReviewVO> selectReviewList(String id) throws Exception {
		
		return myReviewDAO.selectReviewList(id);
	}

	
	@Override
	public void enrollReview(MyReviewVO myreview) {
		
		myReviewDAO.enrollReview(myreview);
		
	}

	// 리뷰 삭제	
	@Override
	public void deleteReview(int reviewId) throws Exception {
		
		myReviewDAO.deleteReview(reviewId);
	}
	
	/*
	@Override
	public MyReviewVO getProductIdName(int productId) {
		
		return myReviewDAO.getProductIdName(productId);
	}
	*/
}
