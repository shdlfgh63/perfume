package com.web;

import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate;
import com.model.MemberVO;
import com.model.MyCartVO;
import com.model.PerfumeVO;
import com.service.CrudService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.jar.Attributes;

@Controller
@RequestMapping("/crud")
public class CrudController {

    @Autowired
    private CrudService crudService;

    @GetMapping ("/regGoods")
    public String regGoods(HttpServletRequest req,Model model) {
        // 관리자 로그인 체크
        HttpSession session = req.getSession();
        if(session.getAttribute("id") == null && (Integer)session.getAttribute("adminCk") == 0)
        { return "/perfume/home";}
        return "/crud/crud";
    }
    @PostMapping("/reqGoodsAdd")
    public String reqGoods(PerfumeVO perfumeVO, RedirectAttributes red) throws Exception {

        crudService.regGoods(perfumeVO);

        red.addFlashAttribute("name", perfumeVO.getName());
        red.addFlashAttribute("brand", perfumeVO.getBrand());
        red.addFlashAttribute("price", perfumeVO.getPrice());
        red.addFlashAttribute("price2", perfumeVO.getPrice2());
        red.addFlashAttribute("price3", perfumeVO.getPrice3());
        red.addFlashAttribute("source1", perfumeVO.getSource1());
        red.addFlashAttribute("source2", perfumeVO.getSource2());
        red.addFlashAttribute("source3", perfumeVO.getSource3());
        red.addFlashAttribute("image", perfumeVO.getImage());


       return "/crud/crud";
    }

}
