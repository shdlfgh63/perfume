package com.service;

import java.util.List;
import java.util.Map;

import com.model.CartVO;
import com.model.PerfumeVO;


public interface CartService {
	
	/* 장바구니 추가 */
	public void newAddCart(CartVO cart);
	
	/* 장바구니 정보 리스트 */
	public List<CartVO> getCart(String id);

	public void deleteCart(int cart_id);

	public void cartModify(Map<String, Object> map);

	public List<PerfumeVO> loadPrice(Map<String, Object> map);
	

}
