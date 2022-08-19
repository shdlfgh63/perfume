package com.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberVO;
import com.service.MyEditService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class MyEditController {
	
	private static final Logger log = LoggerFactory.getLogger(MyReviewController.class);
				
	@Autowired
	MyEditService myeditservice;
	
	// 나의정보 수정페이지 접속(아이디는 수정불가, 비밀번호, 이름, 이메일 수정)
	@GetMapping("/myedit/{id}")
	public String myEditGET(@PathVariable("id") String id, Model model,HttpServletRequest request
		  	,HttpServletResponse response) throws Exception {
		
		log.info("나의정보 수정 페이지에 진입했습니다");
		
		// 로그인한 회원의 상세정보 조회
		model.addAttribute("info", myeditservice.memberInfo(id));
		
		return "mypage/myedit";
	}

	// 회원 정보 수정 처리
	@PostMapping("/myedit/editinfo")
	public String myEdit(@ModelAttribute MemberVO member) throws Exception {
		
		myeditservice.memberEdit(member);
		
		return "redirect:/myedit/" + member.getId();
	}
	


}	
