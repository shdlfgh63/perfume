package com.mapper;

import java.util.List;

import com.model.BoardVO;
import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface CustomerMapper {

	List<BoardVO> getNoticeList() throws Exception;
	List<BoardVO> getFAQList() throws Exception;
	String getBenefit() throws Exception;

}
 