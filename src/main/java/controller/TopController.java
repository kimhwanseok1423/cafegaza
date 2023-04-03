package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.MemberDAO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dto.MemberDTO;
import dto.TopDTO;
import service.MemberService;
import service.MemberServiceImp;
import dto.MemberDTO;
import service.MemberService;

//http://localhost:8090/myapp/top.do
@Controller
public class TopController {
	private static final Logger Logger = LoggerFactory.getLogger(TopController.class);

	/* @Autowired */
	public service.TopService TopService;

	public void setTopService(service.TopService topService) {
		this.TopService = topService;
	}

	@RequestMapping(value = "/top.do", method = RequestMethod.GET)
	public String listout(HttpServletRequest request) throws Exception {
		Logger.info("�씤湲곗닚�쐞 異쒕젰");
        
		//HttpSession session = request.getSession();

		//session.invalidate();

		return "top";

	}

	// ajax�뿉 蹂대궡�빞�븷 �궡�슜

	@ResponseBody 
	@RequestMapping(value = "/top.do", method = RequestMethod.POST)
	public List<TopDTO> process(String data) throws Exception {
	    System.out.println(data);
		System.out.println(TopService.selectGetFile(data));	
	
		return TopService.selectGetFile(data);

		// return TopService.selectGetFile(data);

	}// process
	

}
