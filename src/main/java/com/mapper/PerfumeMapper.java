package com.mapper;

import java.util.List;

import com.model.PerfumeVO;
import com.model.ReviewVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PerfumeMapper {
	List<PerfumeVO> selectPerfumeList() throws Exception;
	List<PerfumeVO> selectGoodsList() throws Exception;
	List<PerfumeVO> selectCategoryList(String param) throws Exception;
	List<PerfumeVO> selectName(String param) throws Exception;
	public void addProduct(PerfumeVO vo) throws Exception;
	/*
	// 제품번호, 이름 조회
	public PerfumeVO getProductIdName(int product_id);
	
	// 제품명에 따른 리뷰 조회
	public List<ReviewVO> selectReviewList(String param) throws Exception;
	*/
}
