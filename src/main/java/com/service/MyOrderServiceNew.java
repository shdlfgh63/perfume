package com.service;

import java.util.List;

import com.model.MyOrderVO;
import com.model.OrderDTO;
import com.model.OrderPageItemDTO;


public interface MyOrderServiceNew {

			
	// 주문 정보
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders);
			
	// 주문 처리
	public void order(OrderDTO ord);

	public  void addOrder(MyOrderVO vo);
}
