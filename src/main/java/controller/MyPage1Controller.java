package controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dto.MemberDTO;
import service.MemberService;
//http://localhost:8090/myapp/mypage1.do
@Controller
public class MyPage1Controller {
	private static final Logger Logger=LoggerFactory.getLogger(MyPage1Controller.class);
	public MemberService memberservice;
	public void setMemberservice(MemberService memberservice) {
		this.memberservice = memberservice;
	}
	@RequestMapping(value="/mypage1.do",method=RequestMethod.GET)
	public void mypageGET() {
		Logger.info("�쉶�썝�닔�젙 �럹�씠吏� 吏꾩엯");
		
	}
	
	@RequestMapping(value="/mypage1.do", method=RequestMethod.POST)
	public String mypagePOST(MemberDTO dto) throws Exception{
		Logger.info("留덉씠�럹�씠吏� 吏꾩엯");
       //�봽濡쒖꽭�뒪 �떎�뻾
		System.out.println(memberservice.memberCheck(dto));
		memberservice.memberCheck(dto);
	
		return "redirect:map.do";
	}
}