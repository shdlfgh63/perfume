package com.service;

import java.util.List;


import com.model.MyOrderVO;


public interface MyOrderService {
	List<MyOrderVO> selectOrderList(String id) throws Exception;
	
	public void deleteOrder(int orderId) throws Exception;
	 
	 
}
