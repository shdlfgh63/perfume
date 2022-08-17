package com.mapper;

import java.util.List;


import com.model.MyWishVO;

public interface MyWishMapper {
	
	// 관심상품 목록 뷰에 표시
	List<MyWishVO> selectWishList(String id) throws Exception;
	
	// 관심목록 삭제
	public void deleteWish(int wishid) throws Exception;
	
	// 관심상품 목록에 추가
	public int addWish(MyWishVO wish) throws Exception;
	
	// 관심상품 목록 확인
	public MyWishVO checkWish(MyWishVO wish);
	
}
