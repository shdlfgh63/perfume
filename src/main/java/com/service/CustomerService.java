package com.service;

import com.model.BoardVO;

import java.util.List;



public interface CustomerService {
	List<BoardVO> getNoticeList()throws Exception;
	List<BoardVO> getFAQList()throws Exception;
	String getBenefit() throws Exception;	
}
