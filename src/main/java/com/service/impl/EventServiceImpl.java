package com.service.impl;

import java.util.List;

import com.mapper.EventMapper;
import com.model.BoardVO;
import com.model.EventVO;
import com.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventMapper eventDAO;
	
	@Override
	public List<EventVO> getEndList() throws Exception {

		List<EventVO> endList = eventDAO.getEndList();
		return endList;
	}

	@Override
	public List<EventVO> getIngList() throws Exception {

		List<EventVO> ingList = eventDAO.getIngList();		
		return ingList;
	}

	@Override
	public List<BoardVO> getWinnerList() throws Exception {
		
		List<BoardVO> winnerList = eventDAO.getWinnerList();
		return winnerList;
	}

	@Override
	public EventVO getEvent(String page) throws Exception {
		
		EventVO event = eventDAO.getEvent(page);
		return event;
	}

	
}
