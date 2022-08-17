package com.web;

import java.util.List;

import com.model.BoardVO;
import com.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/customer/")
public class CustomerController {
		
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("notice")
	public String notice(Model model) throws Exception {
		
		List<BoardVO> noticeList = customerService.getNoticeList();
		List<BoardVO> faqList = customerService.getFAQList();
		String benefit = customerService.getBenefit();
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqList", faqList);
		model.addAttribute("benefit", benefit);
		
		return "root.customer.notice";
	}	
}