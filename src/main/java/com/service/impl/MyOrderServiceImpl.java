package com.service.impl;

import java.util.List;


import com.mapper.MyOrderMapper;
import com.model.MyOrderVO;
import com.service.MyOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("myOrderService")
public class MyOrderServiceImpl implements MyOrderService {

	@Autowired
	private MyOrderMapper myOrderDAO;
	
	
	@Override
	@Transactional
	public List<MyOrderVO> selectOrderList(String id) throws Exception {
		
		return myOrderDAO.selectOrderList(id);
	}
	
	
	@Override
	public void deleteOrder(int orderId) throws Exception {
		
		myOrderDAO.deleteOrder(orderId);
		
	}
	
	
}
