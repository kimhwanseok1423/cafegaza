package controller;

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
import service.MemberService;
import service.MemberServiceImp;
import dto.MemberDTO;
import service.MemberService;

@Controller
public class MemberController {

	private static final Logger Logger = LoggerFactory.getLogger(MemberController.class);
	/* @Autowired */
	public MemberService memberservice;

	public void setMemberservice(MemberService memberservice) {
		this.memberservice = memberservice;
	}

	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public void loginGET() {
		Logger.info("회원가입 페이지 진입");

	}

	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String joinPOST(MemberDTO dto) throws Exception {

		Logger.info("join 진입");

		// 회원가입 프로세스 실행
		memberservice.memberJoin(dto);

		Logger.info("join Service 성공");

		return "redirect:/map.do";

		// 완료했을떄 redirect:"map.do"
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public void JoinGET() {
		Logger.info("로그인 페이지 진입");

	}

	// 아이디 중복 검사
	@RequestMapping(value = "/memberIdChk.do", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(String memberId) throws Exception {

		Logger.info("memberIdChk() 진입");
		int result = memberservice.idCheck(memberId);

		Logger.info("결과값 = " + result);

		if (result != 0) {

			return "fail"; // 중복 아이디가 존재

		} else {

			return "success"; // 중복 아이디 x

		}
	} // memberIdChkPOST() 종료

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, MemberDTO dto, RedirectAttributes rttr) throws Exception {

		// System.out.println("login 메서드 진입");
		// System.out.println("전달된 데이터:"+dto);
		HttpSession session = request.getSession(); // session 변수선언하고 request getsession으로 초기화
		// 회원가입 프로세스 실행

		MemberDTO log = memberservice.memberLogin(dto);
		if (log == null) { // 일치하지 않는 아이디, 비밀번호 입력 경우

			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:login.do";

		}

		session.setAttribute("dtoo", log); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
		session.setAttribute("user",log.getMemberName());
		session.setAttribute("pw", log.getMemberPw());

		return "redirect:/map.do";

	} // 메인페이지 로그아웃

	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logoutMainGET(HttpServletRequest request) throws Exception {

		Logger.info("logoutMainGET메서드 진입");

		HttpSession session = request.getSession();

		session.invalidate();

		return "redirect:/map.do";

	}

	@RequestMapping(value = "memberDeleteView.do", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception {
		return "memberDeleteView";
	}

	@RequestMapping(value = "memberDelete.do", method = RequestMethod.POST)
	public String memberDelete(MemberDTO dto, HttpServletRequest request, RedirectAttributes rttr,HttpSession session) throws Exception {

		HttpSession session2 = request.getSession(); // session 변수선언하고 request getsession으로 초기화
		String pw = (String)session2.getAttribute("pw");
		System.out.println(pw);
		session2.setAttribute("pw", pw);
		// 회원가입 프로세스 실행
		String voPass = dto.getMemberPw();
		System.out.println(voPass);
		MemberDTO log = memberservice.memberLogin(dto);
		System.out.println(log.getMemberPw());
		if (!(pw.equals(voPass))) { // 일치하지 않는 아이디, 비밀번호 입력 경우
			rttr.addFlashAttribute("msg", false);
			return "redirect:memberDeleteView.do";
		}

		memberservice.memberDelete(dto);
		session.invalidate();

		return "redirect:map.do";


	
		
	}
}