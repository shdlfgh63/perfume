package com.mapper;

import java.util.List;

import com.model.BoardVO;
import com.model.EventVO;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface EventMapper {

	public List<EventVO> getEndList() throws Exception;
	
	public List<EventVO> getIngList() throws Exception;

	public List<BoardVO> getWinnerList() throws Exception;
	
	public EventVO getEvent(String page) throws Exception;
 
}
 