package com.web;

import javax.servlet.http.HttpServletRequest;

import com.model.OrderDTO;
import com.model.OrderPageDTO;
import com.service.MemberService;
import com.service.MyOrderServiceNew;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;



@Controller
public class OrderController {
		
	@Autowired
	private MyOrderServiceNew myOrderServiceNew;
	
	@Autowired
	private MemberService memberService;
	
	// 주문 페이지 이동
	@GetMapping("/shoporder/{id}")
	public String orderPageGET(@PathVariable("id") String id, OrderPageDTO opd,
			Model model) {
	
		model.addAttribute("orderList", myOrderServiceNew.getGoodsInfo(opd.getOrders()));
		model.addAttribute("memberInfo", memberService.getMemberInfo(id));
		
		return "shop/order";
	}
	
	// 주문요청
	@PostMapping("/shoporder")
	public String orderPagePost(OrderDTO od, HttpServletRequest request) {
		
		System.out.println(od);
		
		myOrderServiceNew.order(od);
		
		return "redirect:/perfume/home";
	}
				
}



