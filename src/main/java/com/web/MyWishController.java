package com.web;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberVO;
import com.model.MyWishVO;
import com.service.MyWishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class MyWishController {
	@Autowired
	private MyWishService myWishService;
	
	@GetMapping("/mywish/{id}")
	public String myWishGET(@PathVariable("id") String id, Model model,HttpServletRequest request
		  	,HttpServletResponse response) throws Exception {
		
		List<MyWishVO> wishes = myWishService.selectWishList(id);
		
		model.addAttribute("wishes", wishes);
		
		return "root.mypage.wishlist";
		
	}	
	
	@PostMapping("/mywish/deletewish")
	public String deleteWish(MyWishVO mwv) throws Exception {
		
		myWishService.deleteWish(mwv.getWishId());
		
		return "redirect:/mywish/" + mwv.getId();
		
	}
	
	@PostMapping("/mywish/add")
	@ResponseBody
	public String addWishPOST(MyWishVO wish, HttpServletRequest request) throws Exception {
			// 로그인 체크
			HttpSession session = request.getSession();
			MemberVO mvo = (MemberVO)session.getAttribute("member");
			if(mvo == null) {
					return "5";
			}
			
			// 관심상품 등록
			int result = myWishService.addWish(wish);
			
			return result + "";
	}
	
	
}
