package com.web;

import java.io.File;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.model.BoardVO;
import com.model.EventVO;
import com.model.PerfumeVO;
import com.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;



@Controller
@RequestMapping("/admin/")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@Autowired
	private ServletContext ctx;

	
	//-------------------------------------------------------------------------------------------
	// Board Controller
	//-------------------------------------------------------------------------------------------	
	
	@GetMapping("board")
	public String boardList(Model model) throws Exception {		
		
		List<BoardVO> noticeList = adminService.getNoticeList();
		List<BoardVO> faqList = adminService.getFAQList();
		String benefit = adminService.getBenefit();
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqList", faqList);
		model.addAttribute("benefit", benefit);

		return "admin/board";
	}

	@PostMapping("board")
	public String boardInsert(@ModelAttribute BoardVO board) throws Exception {

		adminService.boardInsert(board);

		String cate = "board?type=NOTICE";
		if (board.getCategory().equals("NOTICE")) {
			cate = "board?type=NOTICE";
		} else if (board.getCategory().equals("FAQ")) {
			cate = "board?type=FAQ";
		} else if (board.getCategory().equals("WINNER")) {
			cate = "event?type=WINNER";
		}

		return "redirect:" + cate;
	}

	@PostMapping("boardUpdate")
	public String boardUpdate(@ModelAttribute BoardVO board) throws Exception {

		adminService.boardUpdate(board);

		String cate = "board?type=NOTICE";
		if (board.getCategory().equals("NOTICE")) {
			cate = "board?type=NOTICE";
		} else if (board.getCategory().equals("FAQ")) {
			cate = "board?type=FAQ";
		} else if (board.getCategory().equals("WINNER")) {
			cate = "event?type=WINNER";
		}

		return "redirect:" + cate;
	}

	@RequestMapping("boardDelete")
	public String boardDelete(@ModelAttribute BoardVO board) throws Exception {

		adminService.boardDelete(board);

		String cate = "board?type=NOTICE";
		if (board.getCategory().equals("NOTICE")) {
			cate = "board?type=NOTICE";
		} else if (board.getCategory().equals("FAQ")) {
			cate = "board?type=FAQ";
		} else if (board.getCategory().equals("WINNER")) {
			cate = "event?type=WINNER";
		}

		return "redirect:" + cate;
	}

	
	//-------------------------------------------------------------------------------------------
	// Benefit Controller
	//-------------------------------------------------------------------------------------------	
	@PostMapping("beneSubmit")
	public String beneSubmit(MultipartFile image) throws Exception {

		String fileName = image.getOriginalFilename();
		String webPath = "resources/img/customer";
		String realPath = ctx.getRealPath(webPath);

		File savePath = new File(realPath);
		if (!savePath.exists()) {
			savePath.mkdirs();
		}

		realPath += File.separator + fileName;
		File saveFile = new File(realPath);
		image.transferTo(saveFile);

		adminService.beneSubmit(fileName);

		return "redirect:board?type=BENEFIT";
	}

	
	//-------------------------------------------------------------------------------------------
	// Event Controller
	//-------------------------------------------------------------------------------------------	
	@GetMapping("event")
	public String eventList(Model model) throws Exception {

		List<BoardVO> winnerList = adminService.getWinnerList();
		List<EventVO> eventList = adminService.getEventList();

		model.addAttribute("winnerList", winnerList);
		model.addAttribute("eventList", eventList);

		return "admin/event";
	}
	
	@PostMapping("event")
	public String eventInsert(@ModelAttribute EventVO event) throws Exception {
		
    	MultipartFile thumbnail = event.getThnFile();
    	MultipartFile image = event.getImgFile();

    	Timestamp timestamp = new Timestamp(System.currentTimeMillis());       
    	SimpleDateFormat sdf = new SimpleDateFormat ("yyMMddhhmmss");
    	
	    String thnName = sdf.format(timestamp) + "_" + thumbnail.getOriginalFilename(); 
	    String imgName = sdf.format(timestamp) + "_" + image.getOriginalFilename();
	    
	    event.setThumbnail(thnName);
	    event.setImage(imgName);
	    
	    String thnPath = ctx.getRealPath("resources/img/event/thumbnail"); 
	    String imgPath = ctx.getRealPath("resources/img/event/image");
	  
	    File saveThnPath = new File(thnPath); 
	    File saveImgPath = new File(imgPath);
	  
	    if(!saveThnPath.exists()) { saveThnPath.mkdirs(); } 
	    if(!saveImgPath.exists()) { saveImgPath.mkdirs(); }
	  
	    thnPath += File.separator + thnName; 
	  	imgPath += File.separator + imgName;
	  
	  	File saveThnFile = new File(thnPath); 
	  	File saveImgFile = new File(imgPath);
	  
	  	thumbnail.transferTo(saveThnFile); 
	  	image.transferTo(saveImgFile);
	  
	  	adminService.eventInsert(event);	
		
		return "redirect:event?type=EVENT";	
	}

	
    @PostMapping("eventUpdate") 
    public String eventUpdate(@ModelAttribute EventVO event) throws Exception {

    	Timestamp timestamp = new Timestamp(System.currentTimeMillis());       
    	SimpleDateFormat sdf = new SimpleDateFormat ("yyMMddhhmmss");
    	
		MultipartFile thnFile = event.getThnFile();		
		if(!thnFile.isEmpty()) {			
			//���� �̹��� ������ ����
			String befThnPath = File.separator + "resources" + event.getThumbnail();
			String realBefThnPath = ctx.getRealPath(befThnPath);
			File delThnPath = new File(realBefThnPath);
			delThnPath.delete();

			//�ű� �̹��� ������ ���
			String thnName = sdf.format(timestamp) + "_" + thnFile.getOriginalFilename(); 			
			String thnPath = ctx.getRealPath("resources/img/event/thumbnail");     		
			
			File saveThnPath = new File(thnPath); 
			if(!saveThnPath.exists()) { saveThnPath.mkdirs(); } 
			
			thnPath += File.separator + thnName; 
			File saveThnFile = new File(thnPath); 

			event.setThumbnail(thnName);
			thnFile.transferTo(saveThnFile); 		
		} else {
			event.setThumbnail("");
		}
				
		MultipartFile imgFile = event.getImgFile();
		if(!imgFile.isEmpty()) {			
			//���� �̹��� ������ ����
			String befImgPath = File.separator + "resources" + event.getImage();		
			String realBefImgPath = ctx.getRealPath(befImgPath);
			File delImgPath = new File(realBefImgPath);
			delImgPath.delete();

			//�ű� �̹��� ������ ���
			String imgName = sdf.format(timestamp) + "_" + imgFile.getOriginalFilename();			
			String imgPath = ctx.getRealPath("resources/img/event/image");
			
			File saveImgPath = new File(imgPath);
			if(!saveImgPath.exists()) { saveImgPath.mkdirs(); }
			
			imgPath += File.separator + imgName;
			File saveImgFile = new File(imgPath);

			event.setImage(imgName);			
			imgFile.transferTo(saveImgFile);			
		} else {
			event.setImage("");
		}
	
	  	adminService.eventUpdate(event);
	  
	  	return "redirect:event?type=EVENT"; 
    }

	@GetMapping("eventDelete")
	public String eventDelete(@ModelAttribute EventVO event) throws Exception {
		
		String thnPath = File.separator + "resources" + event.getThumbnail();
		String imgPath = File.separator + "resources" + event.getImage();
		
		String realThnPath = ctx.getRealPath(thnPath);
		String realImgPath = ctx.getRealPath(imgPath);
				
		File delThnPath = new File(realThnPath);
		File delImgPath = new File(realImgPath);
		
		delThnPath.delete();
		delImgPath.delete();

		adminService.eventDelete(event);

		return "redirect:event?type=EVENT";
		
	}      	

	//-------------------------------------------------------------------------------------------
	// Product Controller
	//-------------------------------------------------------------------------------------------		
	@GetMapping("product")
	public String productList(Model model) throws Exception {

		List<PerfumeVO> productList = adminService.getProductList();
		
		model.addAttribute("productList", productList);
		
		return "admin/product";
	}
	
	@PostMapping("product")
	public String productInsert(@ModelAttribute PerfumeVO perfume) throws Exception {
		
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());       
		SimpleDateFormat sdf = new SimpleDateFormat ("yyMMddhhmmss");
		
    	MultipartFile image = perfume.getImgFile();
	    String imgName = sdf.format(timestamp) + "_" + image.getOriginalFilename();
	    	    
	    String imgPath = ctx.getRealPath("resources/img/product");
	    File saveImgPath = new File(imgPath);
	    if(!saveImgPath.exists()) { saveImgPath.mkdirs(); }
	  
	  	imgPath += File.separator + imgName;	  
	  	File saveImgFile = new File(imgPath);
  	
	  	perfume.setImage(imgName);
	  	image.transferTo(saveImgFile);
	  
	  	adminService.productInsert(perfume);	
		
		return "redirect:product";		
	}
	
	@GetMapping("productDelete")
	public String productDelete(@ModelAttribute PerfumeVO perfume) throws Exception {
		
		String imgPath = File.separator + "resources" + perfume.getImage();	
		String realImgPath = ctx.getRealPath(imgPath);
		File delImgPath = new File(realImgPath);
				
		delImgPath.delete();
		adminService.productDelete(perfume);

		return "redirect:product";	
	}
	
	
    @PostMapping("productUpdate") 
    public String productUpdate(@ModelAttribute PerfumeVO perfume) throws Exception {

    	Timestamp timestamp = new Timestamp(System.currentTimeMillis());       
    	SimpleDateFormat sdf = new SimpleDateFormat ("yyMMddhhmmss");
    		
		MultipartFile imgFile = perfume.getImgFile();
		if(!imgFile.isEmpty()) {			
			String befImgPath = File.separator + "resources" + perfume.getImage();		
			String realBefImgPath = ctx.getRealPath(befImgPath);
			File delImgPath = new File(realBefImgPath);
			delImgPath.delete();

			String imgName = sdf.format(timestamp) + "_" + imgFile.getOriginalFilename();			
			String imgPath = ctx.getRealPath("resources/img/product");
			
			File saveImgPath = new File(imgPath);
			if(!saveImgPath.exists()) { saveImgPath.mkdirs(); }
			
			imgPath += File.separator + imgName;
			File saveImgFile = new File(imgPath);

			perfume.setImage(imgName);			
			imgFile.transferTo(saveImgFile);			
		} else {
			perfume.setImage("");
		}
	
	  	adminService.productUpdate(perfume);
	  
	  	return "redirect:product"; 
    }
	
	

}






