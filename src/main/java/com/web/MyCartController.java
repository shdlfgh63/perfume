package com.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberVO;
import com.model.MyCartVO;
import com.service.MyCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class MyCartController {

	@Autowired
	private MyCartService mycartservice;
	
	@PostMapping("/mycart/add")
	@ResponseBody
	public String addMyCartPOST(MyCartVO mycart, HttpServletRequest req) {
		// 로그인 체크
		HttpSession session = req.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		
		if(mvo == null) {
			return "5";
		}
		
		// 카트 등록하기
		
		int result = mycartservice.addCart(mycart);
		
		return result + ""; // String 타입으로 반환하기 위해 "" 공백 더하기 연산
	
	}
	
	@RequestMapping("/mycart/{id}")
	public String myCartGET(Model model,HttpServletRequest request
		  	,HttpServletResponse response,HttpSession session) throws Exception {
		List<MyCartVO> list = mycartservice.getCartList((String) session.getAttribute("id"));
		model.addAttribute("myCartInfo", list);
		
		return "shop/cart";
	}
			
	// 카트 목록삭제
	@PostMapping("/mycart/delete")
	public String deleteMyCartPOST(MyCartVO mycart) {
		
		mycartservice.deleteCart(mycart.getCart_id());
		
		return "redirect:/mycart/" + mycart.getMember_id();
		
	}
	
	
	
}
