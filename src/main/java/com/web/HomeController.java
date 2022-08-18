package com.web;

import java.util.List;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.PerfumeVO;
import com.service.PerfumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("/perfume/")
@Controller
public class HomeController {

	@Autowired
	private PerfumeService perfumeservice;


	@RequestMapping("home")
	public String home(Model model,HttpServletRequest req,HttpServletResponse res) throws Exception {
				
		List<PerfumeVO> list = perfumeservice.selectPerfumeList();
		model.addAttribute("list", list);
		
			return "home";
		}
	
	/*@RequestMapping("about")
	public String about(Model model,HttpServletRequest req,HttpServletResponse res) throws Exception {
		
		List<PerfumeVO> list = perfumeservice.selectPerfumeList();
		model.addAttribute("list", list);
		
			return "about";
		}
	*/
		
	
	}

		


