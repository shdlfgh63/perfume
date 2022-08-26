package com.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.mapper.MemberMapper;
import com.mapper.MyCartMapper;
import com.mapper.MyOrderMapper;
import com.mapper.PerfumeMapper;
import com.model.*;
import com.service.MyOrderServiceNew;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class MyOrderServiceNewImpl implements MyOrderServiceNew {

	@Autowired
	private MyOrderMapper myOrderMapper;
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private MyCartMapper myCartDAO;
	
	@Autowired
	private PerfumeMapper perfumeDAO;
	
	
	@Override
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders) {
	
		List<OrderPageItemDTO> result = new ArrayList<OrderPageItemDTO>();
		
		for(OrderPageItemDTO ord : orders) {
			
			OrderPageItemDTO perfumeInfo = myOrderMapper.getPerfumeInfo(ord.getProduct_id());
			
			perfumeInfo.setProduct_count(ord.getProduct_count());
			
			perfumeInfo.initTotal();
			
			result.add(perfumeInfo);
		
		}
		
		return result;
		
	}
	
	// @Transactional 추가하여 여러 쿼리를 처리하는 매서드에 대해 하나의 단위로 처리가 되게 한다
	@Override
	@Transactional
	public void order(OrderDTO ord) {
	
	/* 주문에 사용할 데이터 가져오기 */	
		// 회원정보
		MemberVO member = memberMapper.getMemberInfo(ord.getMember_id());
		
		// 주문정보
		List<OrderItemDTO> ords = new ArrayList<>();
		for(OrderItemDTO oit : ord.getOrders()) {
			OrderItemDTO orderItem = myOrderMapper.getOrderInfo(oit.getProduct_id());
			
			// 수량 셋팅
			orderItem.setProduct_count(oit.getProduct_count());
			// 기본정보 셋팅
			orderItem.initTotal();
			// list 객체추가
			ords.add(orderItem);
		}
		/* OrderDTO 셋팅 */
		ord.setOrders(ords);
		ord.getOrderPriceInfo();
		
	/* DB, 주문상품 */	
	
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("_yyyyMMddmm");
		String order_id = member.getId() + format.format(date); 
		ord.setOrder_id(order_id);
		
		/* DB에 넣기 */
		myOrderMapper.enrollOrder(ord);
		for(OrderItemDTO oit : ord.getOrders()) {	// my_order 등록
				oit.setOrder_id(order_id);			// my_orderitem 등록
				myOrderMapper.enrollOrderItem(oit);	
		}
		
	/* 장바구니에서 제거 */	
		for(OrderItemDTO oit : ord.getOrders()) {
			MyCartVO vo = new MyCartVO();
			vo.setMember_id(ord.getMember_id());
			vo.setProduct_id(oit.getProduct_id());
			
			myCartDAO.deleteOrderCart(vo);
			
		}
		
		
	}

	@Override
	public void addOrder(MyOrderVO vo) {
		myOrderMapper.addOrder(vo);
	}


}
