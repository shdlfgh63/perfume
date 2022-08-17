package com.mapper;

import java.util.List;

import com.model.MyCartVO;
import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface MyCartMapper {

	// 카트추가
	public int addMyCart(MyCartVO mycart) throws Exception;
	
	// 카트삭제
	public int deleteCart(int cart_id);
	
	// 수량수정
	public int modifyCart(MyCartVO mycart);
	
	// 카트 목록(조회)
	public List<MyCartVO> getCart(String id);
	
	// 카트 확인
	public MyCartVO checkCart(MyCartVO mycart);
	
	// 카트 제거(주문처리)
	public int deleteOrderCart(MyCartVO mvo);
	
}
