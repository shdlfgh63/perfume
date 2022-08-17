package com.service.impl;

import java.util.List;


import com.mapper.MyWishMapper;
import com.model.MyWishVO;
import com.service.MyWishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class MyWishServiceImpl implements MyWishService {
	
	@Autowired
	private MyWishMapper myWishDAO;
	
	
	@Override
	@Transactional
	public List<MyWishVO> selectWishList(String id) throws Exception {
		
		return myWishDAO.selectWishList(id);
	}	
	
	@Override
	public void deleteWish(int wishid) throws Exception{
	
		myWishDAO.deleteWish(wishid);	
	}
	
	@Override
	public int addWish(MyWishVO wish) throws Exception {
		
		// 관심상품 데이터 체크
		MyWishVO checkWish = myWishDAO.checkWish(wish);
		
		if(checkWish != null) {
			return 2;
		}
		
		// 관심상품 등록 및 에러시 0 반환
		try {
			return myWishDAO.addWish(wish);
		} catch (Exception e) {
			return 0;
		}
		
	}
	
	
}
