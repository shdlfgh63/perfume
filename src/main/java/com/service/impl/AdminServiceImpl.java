package com.service.impl;

import java.sql.Date;
import java.util.List;

import com.mapper.AdminMapper;
import com.model.BoardVO;
import com.model.EventVO;
import com.model.PerfumeVO;
import com.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper adminDao;

	@Override
	public List<BoardVO> getNoticeList() throws Exception {

		List<BoardVO> noticeList = adminDao.getNoticeList();
		return noticeList;
	}

	@Override
	public List<BoardVO> getFAQList() throws Exception {
		
		List<BoardVO> FAQList = adminDao.getFAQList();
		return FAQList;
	}

	@Override
	public List<EventVO> getEventList() throws Exception {
		
		List<EventVO> eventList = adminDao.getEventList();
		return eventList;
	}
	
	@Override
	public List<BoardVO> getWinnerList() throws Exception {

		List<BoardVO> winnerList = adminDao.getWinnerList();
		return winnerList;
	}

	@Override
	public List<PerfumeVO> getProductList() throws Exception {

		List<PerfumeVO> productList = adminDao.getProductList();
		return productList;
	}
	
	//-------------------------------------------------------------------------------------------
	// Board Service
	//-------------------------------------------------------------------------------------------
	@Override
	public void boardInsert(BoardVO board) throws Exception {
		
		String title = board.getTitle();
		String content = board.getContent();
		String category = "notice";
		
		if(board.getCategory().equals("NOTICE")) {
			category = "notice";	
		} else if(board.getCategory().equals("FAQ")) {
			category = "faq";
		} else if(board.getCategory().equals("WINNER")) {
			category = "winner";
		}
		
		adminDao.boardInsert(title, content, category);			
	}

	@Override
	public void boardUpdate(BoardVO board) throws Exception {

		int id = board.getId();
		String title = board.getTitle();
		String content = board.getContent();
		
		adminDao.boardUpdate(id, title, content);
	}

	@Override
	public void boardDelete(BoardVO board) throws Exception {
		
		int id = board.getId();
		
		adminDao.boardDelete(id);	
	}

	//-------------------------------------------------------------------------------------------
	// Benefit Service
	//-------------------------------------------------------------------------------------------
	@Override
	public String getBenefit() throws Exception {

		String benefit = adminDao.getBenefit();
		return benefit;
	}

	@Override
	public void beneSubmit(String fileName) throws Exception {
		
		String path = "/img/customer/" + fileName;
		
		adminDao.beneSubmit(path);
	}

	//-------------------------------------------------------------------------------------------
	// Event Service
	//-------------------------------------------------------------------------------------------	
	@Override
	public void eventUpdate(EventVO event) throws Exception {
		
		int id = event.getId();
		String title = event.getTitle();
		Date enddate = event.getEnddate();
		Date startdate = event.getStartdate();
		String thumbnail = null;
		String image = null;
				
		
		//����� ���ϸ� ������ ���
		if(!event.getThumbnail().equals("") && event.getImage().equals("")) {
			thumbnail = "/img/event/thumbnail/" + event.getThumbnail();			
			adminDao.eventUpdateThn(id, title, thumbnail, startdate, enddate);
			
		//�̹��� ���ϸ� ������ ���
		} else if(event.getThumbnail().equals("") && !event.getImage().equals("")) {
			image = "/img/event/image/" + event.getImage();	
			adminDao.eventUpdateImg(id, title, image, startdate, enddate);
		
		//������ �� ������ ���
		} else if(event.getThumbnail().equals("") && event.getImage().equals("")) {
			adminDao.eventUpdateMin(id, title, startdate, enddate);
			
		//������ ���� ������ ���	
		} else {		
			thumbnail = "/img/event/thumbnail/" + event.getThumbnail();			
			image = "/img/event/image/" + event.getImage();	
			adminDao.eventUpdateMax(id, title, thumbnail, image, startdate, enddate);
		}	
	}

	@Override
	public void eventInsert(EventVO event) throws Exception {
		
		String title = event.getTitle();
		String thumbnail = "/img/event/thumbnail/" + event.getThumbnail();
		String image = "/img/event/image/" + event.getImage();
		Date startdate = event.getStartdate();
		Date enddate = event.getEnddate();
		
		adminDao.eventInsert(title, thumbnail, image, startdate, enddate);
		
	}

	@Override
	public void eventDelete(EventVO event) throws Exception {

		int id = event.getId();		
		adminDao.eventDelete(id);
		
	}

	
	//-------------------------------------------------------------------------------------------
	// Product Service
	//-------------------------------------------------------------------------------------------
	@Override
	public void productUpdate(PerfumeVO perfume) throws Exception {
		
		int productId = perfume.getProduct_id();
		String name = perfume.getName();
		String brand = perfume.getBrand();
		String source1 = perfume.getSource1();
		String source2 = perfume.getSource2();
		String source3 = perfume.getSource3();
		int price = perfume.getPrice();
		int price2 = perfume.getPrice2();
		int price3 = perfume.getPrice3();
		String image = null;
				
		
		//������ �� ������ ���
		if(perfume.getImage().equals("")) {
			adminDao.productUpdateMin(productId, name, brand, source1, source2, source3, price, price2, price3);
			
		//������ ���� ������ ���	
		} else {				
			image = "/img/product/" + perfume.getImage();	
			adminDao.productUpdateMax(productId, name, brand, source1, source2, source3, price, price2, price3, image);
		}		
	}

	@Override
	public void productInsert(PerfumeVO perfume) throws Exception {
		
		String name = perfume.getName();
		String brand = perfume.getBrand();
		String source1 = perfume.getSource1();
		String source2 = perfume.getSource2();
		String source3 = perfume.getSource3();
		int price = perfume.getPrice();
		int price2 = perfume.getPrice2();
		int price3 = perfume.getPrice3();
		String image = "/img/product/" + perfume.getImage();
		
		adminDao.productInsert(name, brand, source1, source2, source3, price, price2, price3, image);
	}

	@Override
	public void productDelete(PerfumeVO perfume) throws Exception {

		int id = perfume.getProduct_id();
		adminDao.productDelete(id);	
	}
}
