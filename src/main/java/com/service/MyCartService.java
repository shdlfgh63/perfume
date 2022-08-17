package com.service;

import java.util.List;

import com.model.MyCartVO;


public interface MyCartService {
					
		// 장바구니 추가			
		public int addCart(MyCartVO mycart);
		
		// 장바구니 리스트
		public List<MyCartVO> getCartList(String id);
		
		// 장바구니 삭제
		public int deleteCart(int cart_id);
		
		
}
