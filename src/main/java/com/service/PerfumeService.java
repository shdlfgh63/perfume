package com.service;

import java.util.List;

import com.model.PerfumeVO;
import com.model.ReviewVO;




public interface PerfumeService {
	//향수전체 조회
	List<PerfumeVO> selectPerfumeList() throws Exception;
	//굿즈목록
	List<PerfumeVO> selectGoodsList() throws Exception;
	//종류별 향수목록
	List<PerfumeVO> selectCategoryList(String param) throws Exception;
	//이름별 조회
	List<PerfumeVO> selectName(String param) throws Exception;	
	public void addProduct(PerfumeVO vo) throws Exception;
	/*
	// 제품번호, 이름 조회
	public PerfumeVO getProductIdName(int product_id);
	
	// 제품명에 따른 리뷰 조회
	List<ReviewVO> selectReviewList(String param) throws Exception;
			*/
}
