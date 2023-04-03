package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dto.BoardDTO;
import dto.DetailDTO;
import dto.ReplyDTO;

@Controller
public class DetailController {
   private static final Logger Logger = LoggerFactory.getLogger(CategoryController.class);
   
   public service.DetailService DetailService;
   public service.ReplyService ReplyService;
   public void setDetailService(service.DetailService detailService) {
      DetailService = detailService;
   }
   public void setReplyService(service.ReplyService replyService) {
      ReplyService = replyService;
   }
   
//   @RequestMapping(value = "/detail.do", method = RequestMethod.GET)
//   public String listout2(HttpServletRequest request) throws Exception {
//      Logger.info("상세페이지 출력");
//        
//      HttpSession session = request.getSession();
//
//      session.invalidate();
//
//      return "mypage";
//   }
   

   @RequestMapping(value="/detail.do", method = RequestMethod.GET)
   public ModelAndView selectOne(String guId,ReplyDTO vo, ModelAndView mav) throws Exception {   
    //  System.out.println(guId);
   DetailDTO  dto=   DetailService.selectGetdetail(guId);
   System.out.println(dto.getCafeAddress());
   //System.out.println(rttr.addAttribute("guId",ddto.getGuId()));
//   rttr.addAttribute("guId",ddto.getGuId());
//   rttr.addAttribute("cafeAddress",ddto.getCafeAddress());
//   rttr.addAttribute("cafeName",ddto.getCafeName());
//   rttr.addAttribute("cafePhoto",ddto.getCafePhoto());
//   rttr.addAttribute("cafestar",ddto.getCafestar());
//   rttr.addAttribute("cafetime",ddto.getCafetime());
//   rttr.addAttribute("cafephone",ddto.getCafephone());
//   rttr.addAttribute("cafegory",ddto.getCategory()); 
   mav.addObject("dto1", dto);
   mav.setViewName("mypage");
 
   List<ReplyDTO> replyList=ReplyService.readReply(dto.getGuId());
  
   mav.addObject("replyList", replyList);
   
  
   return mav;
   }
   @RequestMapping(value="/cafe_replyWrite.do",method=RequestMethod.POST)
   public String replyWrite(String guId,ReplyDTO vo, ModelAndView mav) throws Exception{
	   List<ReplyDTO> replyList=ReplyService.readReply(vo.getGuId());
	   
	   mav.addObject("replyList", replyList);
    ReplyService.writeReply(vo);
    System.out.println(vo.getGuId());
    
    return "redirect:detail.do?guId=" +vo.getGuId();
    		
      
   }
   
	// 게시판 삭제
	@RequestMapping(value = "/cafe_replydelete.do", method = RequestMethod.POST)
	public String delete(String guId,ReplyDTO vo,ModelAndView mav) throws Exception{
		
		System.out.println("hihi"+vo.getRno());
		System.out.println("iuiu"+vo.getGuId());
	    ReplyService.deleteReply(vo.getRno());
	 
	    
	    return "redirect:detail.do?guId=" +vo.getGuId();
	}

}