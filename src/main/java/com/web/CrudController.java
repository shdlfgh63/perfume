package com.web;

import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate;
import com.model.MemberVO;
import com.model.MyCartVO;
import com.model.PerfumeVO;
import com.service.CrudService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.jar.Attributes;

@Controller
@RequestMapping("/crud")
public class CrudController {
    @Autowired
    private ServletContext ctx;
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
    public String reqGoods(PerfumeVO perfumeVO, RedirectAttributes red,HttpServletRequest req,@RequestParam("imgFile") MultipartFile file) throws Exception {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        String webPath = "resources/img/customer";
        String realPath = ctx.getRealPath(webPath);

        File savePath = new File(realPath);
        if (!savePath.exists()) {
            savePath.mkdirs();
        }

        realPath += File.separator +file.getOriginalFilename()+sdf.format(timestamp);
        File saveFile = new File(realPath);
        file.transferTo(saveFile);
        perfumeVO.setImage(realPath);
        crudService.regGoods(perfumeVO);
       return "/crud/crud";
    }

}
