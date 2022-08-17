package com.service;

import java.util.List;

import com.model.BoardVO;
import com.model.EventVO;
import com.model.PerfumeVO;


public interface AdminService {
	
	public List<BoardVO> getNoticeList() throws Exception;
	public List<BoardVO> getFAQList() throws Exception;
	public List<EventVO> getEventList() throws Exception;
	public List<BoardVO> getWinnerList() throws Exception;
	public List<PerfumeVO> getProductList() throws Exception;
	
	public void boardInsert(BoardVO board) throws Exception;
	public void boardUpdate(BoardVO board) throws Exception;
	public void boardDelete(BoardVO board) throws Exception;
	
	public String getBenefit() throws Exception;
	public void beneSubmit(String fileName) throws Exception;
	
	public void eventUpdate(EventVO event) throws Exception;
	public void eventInsert(EventVO event) throws Exception;
	public void eventDelete(EventVO event) throws Exception;
	
	public void productUpdate(PerfumeVO perfume) throws Exception;
	public void productInsert(PerfumeVO perfume) throws Exception;
	public void productDelete(PerfumeVO perfume) throws Exception;
	
}
