package com.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.model.MemberVO;
import com.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;




@Controller
@RequestMapping(value="/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberservice;

    //회원가입 페이지 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void loginGET() {

		logger.info("회원가입 페이지 진입");

	}

	//회원가입
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception{

		logger.info("join 진입");

		// 회원가입 서비스 실행
		memberservice.memberJoin(member);

		logger.info("join Service 성공");

		return "redirect:/perfume/home";

	}

	//로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void joinGET() {

		logger.info("로그인 페이지 진입");

	}



	// 아이디 중복 검사
		@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
		@ResponseBody
		public String idChkPOST(String id) throws Exception{

			int result = memberservice.idCheck(id);

			logger.info("결과값 = " + result);

			if(result != 0) {

				return "fail";	// 중복 아이디가 존재

			} else {

				return "success";	// 중복 아이디 x

			}

		} // memberIdChkPOST() 종료


	    @RequestMapping(value="/login", method=RequestMethod.POST)
	    public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{

	        //System.out.println("login 메서드 진입");
	        //System.out.println("전달된 데이터 : " + member);
	    	HttpSession session = request.getSession();
	    	MemberVO mvo = memberservice.memberLogin(member);

	    	if(mvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우

	            int result = 0;
	            rttr.addFlashAttribute("result", result);
	            return "redirect:/member/login";

	        }
				session.setAttribute("adminCk",mvo.getAdminCk());
	        	session.setAttribute("member", mvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
				session.setAttribute("id", mvo.getId());
	        	return "redirect:/perfume/home";

	    }



	    @RequestMapping(value="/logout.do", method=RequestMethod.GET)
	    public String logoutMainGET(HttpServletRequest request) throws Exception{

	    	logger.info("logoutMainGET메서드 진입");

	         HttpSession session = request.getSession();

	         session.invalidate();

	         return "redirect:/perfume/home";
	    }

	    // 아이디 찾기 폼
		@RequestMapping(value = "/find_id_form.do")
		public void find_id_form() throws Exception{

			logger.info("아이디찾기 페이지 진입");

		}

		// 아이디 찾기
		@RequestMapping(value = "/find_id.do", method = RequestMethod.POST)
		public String find_id(HttpServletResponse response, @RequestParam("email") String email, Model md) throws Exception{
			md.addAttribute("id", memberservice.find_id(email));
			return "/member/find_id";
		}

		// 비밀번호 찾기 폼
		@RequestMapping(value = "/find_pw_form.do")
		public String find_pw_form() throws Exception{

			logger.info("비밀번호 찾기 페이지 진입");

			return "/member/find_pw_form";
		}



}
