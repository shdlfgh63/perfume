package com.service.impl;

import java.util.List;

import com.mapper.CustomerMapper;
import com.model.BoardVO;
import com.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerMapper customerDao;
	
	@Override
	public List<BoardVO> getNoticeList() throws Exception {
		
		List<BoardVO> noticeList = customerDao.getNoticeList();		
		return noticeList;		
	}
	
	@Override
	public List<BoardVO> getFAQList() throws Exception {
		
		List<BoardVO> faqList = customerDao.getFAQList();
		return faqList;		
	}

	@Override
	public String getBenefit() throws Exception {

		String benefit = customerDao.getBenefit();
		return benefit;
	}
	
}
