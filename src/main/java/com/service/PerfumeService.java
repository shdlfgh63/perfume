package com.service;

import java.util.List;

import com.model.PerfumeVO;
import com.model.ReviewVO;




public interface PerfumeService {
	List<PerfumeVO> selectPerfumeList() throws Exception;
	List<PerfumeVO> selectGoodsList() throws Exception;	
	List<PerfumeVO> selectCategoryList(String param) throws Exception;
	List<PerfumeVO> selectName(String param) throws Exception;	
	public void addProduct(PerfumeVO vo) throws Exception;
	
	// 제품번호, 이름 조회
	public PerfumeVO getProductIdName(int product_id);
	
	// 제품명에 따른 리뷰 조회
	List<ReviewVO> selectReviewList(String param) throws Exception;
			
}
