package com.mapper;

import java.sql.Date;
import java.util.List;

import com.model.BoardVO;
import com.model.EventVO;
import com.model.PerfumeVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


@Mapper
public interface AdminMapper {

	List<BoardVO> getNoticeList() throws Exception;
	List<BoardVO> getFAQList() throws Exception;
	List<BoardVO> getWinnerList() throws Exception;
	List<EventVO> getEventList() throws Exception;
	List<PerfumeVO> getProductList() throws Exception;
	
	void boardInsert(@Param("title") String title, @Param("content") String content,
					 @Param("category") String category) throws Exception;
	
	void boardUpdate(@Param("id") int id, @Param("title") String title, @Param("content") String content);
	void boardDelete(@Param("id") int id) throws Exception;
	
	String getBenefit() throws Exception;
	void beneSubmit(@Param("fileName") String fileName) throws Exception;
	
	void eventUpdateMax(@Param("id") int id, @Param("title") String title, 
			@Param("thumbnail") String thumbnail, @Param("image") String image, 
			@Param("startdate") Date startdate, @Param("enddate") Date enddate) throws Exception;

	void eventUpdateThn(@Param("id") int id, @Param("title") String title, 
			@Param("thumbnail") String thumbnail, @Param("startdate") Date startdate, 
			@Param("enddate") Date enddate) throws Exception;

	void eventUpdateImg(@Param("id") int id, @Param("title") String title, 
			@Param("image") String image, @Param("startdate") Date startdate, 
			@Param("enddate") Date enddate) throws Exception;

	void eventUpdateMin(@Param("id") int id, @Param("title") String title, 
			@Param("startdate") Date startdate, @Param("enddate") Date enddate) throws Exception;
	
	void eventInsert(@Param("title") String title, @Param("thumbnail") String thumbnail, 
			@Param("image") String image,@Param("startdate") Date startdate, 
			@Param("enddate") Date enddate) throws Exception;
	
	void eventDelete(@Param("id") int id) throws Exception;
	
	
	void productInsert(@Param("name") String name, @Param("brand") String brand, 
			@Param("source1") String source1, @Param("source2") String source2, 
			@Param("source3") String source3, @Param("price") int price, 
			@Param("price2") int price2, @Param("price3") int price3, 
			@Param("image") String image);
	
	void productDelete(@Param("id") int id);
	
	void productUpdateMin(@Param("productId") int productId, @Param("name") String name, 
			@Param("brand") String brand, @Param("source1") String source1, 
			@Param("source2") String source2, @Param("source3") String source3,
			@Param("price") int price, @Param("price2") int price2, 
			@Param("price3") int price3);
	
	void productUpdateMax(@Param("productId") int productId, @Param("name") String name, 
			@Param("brand") String brand, @Param("source1") String source1, 
			@Param("source2") String source2, @Param("source3") String source3,
			@Param("price") int price, @Param("price2") int price2, 
			@Param("price3") int price3, @Param("image") String image);
	
	
}
