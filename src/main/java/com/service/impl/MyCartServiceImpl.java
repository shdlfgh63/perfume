package com.service.impl;

import java.util.List;

import com.mapper.MyCartMapper;
import com.model.MyCartVO;
import com.service.MyCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class MyCartServiceImpl implements MyCartService {
	
	@Autowired
	private MyCartMapper mycartdao;

	@Override
	public int addCart(MyCartVO mycart) {
		
		// 장바구니 데이터 체크
		MyCartVO checkCart = mycartdao.checkCart(mycart);
		
		if(checkCart != null) {
			
			return 2;
		}
	
		try {
			
			return mycartdao.addMyCart(mycart);
		} catch (Exception e) {
			return 0;
		}
		
	}
	
	@Override
	public List<MyCartVO> getCartList(String id) {
		
		List<MyCartVO> mycart = mycartdao.getCart(id);
		
		for(MyCartVO vo : mycart) {
			vo.initTotal();
		}
		
		return mycart;
	}
	
	@Override
	public int deleteCart(int cart_id) {
		
		return mycartdao.deleteCart(cart_id);
	}
	

	
}
