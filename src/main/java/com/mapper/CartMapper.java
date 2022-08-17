package com.mapper;

import java.util.List;
import java.util.Map;

import com.model.CartVO;
import com.model.PerfumeVO;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartMapper {
	
	public void newAddCart(CartVO cart);
	
	/* 카트 목록 */
	public List<CartVO> getCart(String id);
	
	public int deleteCart(int cart_id);

	public void cartModify(Map<String, Object> map);

	public List<PerfumeVO> loadPrice(Map<String, Object> map);
}
