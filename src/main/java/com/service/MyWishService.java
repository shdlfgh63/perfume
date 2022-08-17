package com.service;

import java.util.List;


import com.model.MyWishVO;


public interface MyWishService {
	List<MyWishVO> selectWishList(String id) throws Exception;
	
	public void deleteWish(int wishid) throws Exception;
	
	public int addWish(MyWishVO wish) throws Exception;
}
