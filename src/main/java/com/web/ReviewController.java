package com.web;

import com.model.ReviewVO;
import com.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("/review")
public class ReviewController {

		@Autowired
		private ReviewService reviewService;
		
		// 리뷰 등록
		@PostMapping("/enroll")
		public String enrollReviewPOST(ReviewVO rvo) {
			reviewService.enrollReview(rvo);
			return "/mypage/reviewenroll";
			
		}
		
		// 리뷰 페이징
		/*
		@GetMapping(value="/list", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
		public ReviewPageVO reviewListPOST(Criteria cri) {
			
			return reviewService.reviewList(cri);
		}
		*/
}
