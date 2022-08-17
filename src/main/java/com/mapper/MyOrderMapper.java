package com.mapper;

import java.util.List;


import com.model.MyOrderVO;
import com.model.OrderDTO;
import com.model.OrderItemDTO;
import com.model.OrderPageItemDTO;


public interface MyOrderMapper {
	
	 // 주문내역 목록 (로그인 후 이용가능)
	 List<MyOrderVO> selectOrderList(String id) throws Exception;
	
	 // 주문내역 삭제
	 public void deleteOrder(int orderId) throws Exception;
	// 주문 상품 정보 - 주문 페이지
	public OrderPageItemDTO getPerfumeInfo(int product_id);

	// 주문 상품 정보 - 주문 처리
	public OrderItemDTO getOrderInfo(int product_id);

	// 주문 테이블 등록
	public int enrollOrder(OrderDTO ord);

	// 주문 item 테이블 등록
	public int enrollOrderItem(OrderItemDTO orid);

}
