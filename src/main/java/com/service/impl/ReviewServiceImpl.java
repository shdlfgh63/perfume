package com.service.impl;

import java.util.List;


import com.mapper.ReviewMapper;
import com.model.ReviewVO;
import com.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewMapper reviewDAO;
	
	@Override
	public int enrollReview(ReviewVO rvo) {
		
		int result = reviewDAO.enrollReview(rvo);
		
		return result;
		
	}
	
	// 리뷰목록 페이징
	/*
	@Override
	public ReviewPageVO reviewList(Criteria cri) {
		ReviewPageVO vo = new ReviewPageVO(); 	
			
		vo.setList(reviewDAO.getReviewList(cri));
		vo.setPageInfo(new PageVO(cri, reviewDAO.getReviewTotal(cri.getProductId())));
		
		return vo;
		
	}
	*/
}
