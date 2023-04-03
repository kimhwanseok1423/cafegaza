package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tiles.request.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dto.BoardDTO;
import dto.BoardreplyDTO;
import dto.MemberDTO;
import dto.PageDTO;
import dto.PageMaker;
import dto.SearchPageDTO;
import service.BoardService;
import service.BoardreplyService;

// http://localhost:8090/myapp/list/.do?currentPage=1

// http://localhost:8090/myapp/list.do

@Controller
public class BoardController {
	private static final Logger Logger = LoggerFactory.getLogger(BoardController.class);
	
	public BoardService boardservice;
	public BoardreplyService reply1service;

	public void setReply1service(BoardreplyService reply1service) {
		this.reply1service = reply1service;
	}

	public void setBoardservice(BoardService boardservice) {
		this.boardservice = boardservice;
	}

	// 게시판 화면
	@RequestMapping(value = "/writeView.do", method = RequestMethod.GET)
	public void listView(HttpServletRequest request) throws Exception {
		Logger.info("게시판진입");
		
		
	}

	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public String write(HttpServletRequest request,BoardDTO dto2 ) throws Exception {
		Logger.info("write");
		
	
		
		boardservice.write(dto2);
		return "redirect:list.do";
	}

	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list(Model model, @ModelAttribute("spge") SearchPageDTO spge) throws Exception {
		Logger.info("리스트 진입");
		model.addAttribute("list", boardservice.list(spge));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPge(spge);
		pageMaker.setTotalCount(boardservice.listCount(spge));
		model.addAttribute("pageMaker", pageMaker);
		return "list";
	}

	// 게시판 상세조회
	@RequestMapping(value = "/readView.do", method = RequestMethod.GET)
	public String read(BoardDTO dto2, @ModelAttribute("spge") SearchPageDTO spge, Model model) throws Exception {
		Logger.info("read");

		model.addAttribute("read", boardservice.read(dto2.getBno()));
		model.addAttribute("spge", spge);
		List<BoardreplyDTO> replyList = reply1service.readReply(dto2.getBno());

		model.addAttribute("replyList", replyList);
		return "readView";
	}

	// 게시판 업데이트

	@RequestMapping(value = "/updateView.do", method = RequestMethod.GET)
	public String updateView(BoardDTO dto2, Model model) throws Exception {
		Logger.info("updateView");
		model.addAttribute("update", boardservice.read(dto2.getBno()));
		return "updateView";
	}

	// 게시판 수정
	@RequestMapping(value = "/update.do", method = RequestMethod.POST)
	public String update(BoardDTO dto2) throws Exception {
		Logger.info("update");
		boardservice.update(dto2);
		return "redirect:list.do";
	}

	// 게시판 삭제
	@RequestMapping(value = "/delete.do", method = RequestMethod.POST)
	public String delete(BoardDTO dto2,HttpSession session) throws Exception {
		Logger.info("delete");
        String writer= (String)session.getAttribute("user");
        System.out.println(writer);
		boardservice.delete(dto2.getBno());
		session.setAttribute("writer", writer);

		return "redirect:list.do";
	}

	// 댓글 작성
	@RequestMapping(value="/replyWrite.do", method = RequestMethod.POST)
		public String replyWrite(BoardreplyDTO vo , SearchPageDTO spge, RedirectAttributes rttr) throws Exception {
			Logger.info("reply Write");
			
			reply1service.writeReply(vo);
			
			rttr.addAttribute("bno", vo.getBno());
			rttr.addAttribute("page", spge.getPage());
			rttr.addAttribute("perPageNum", spge.getPerPageNum());
			rttr.addAttribute("searchType", spge.getSearchType());
			rttr.addAttribute("keyword", spge.getKeyword());
			
			return "redirect:readView.do";
		}
// 댓글 수정 겟
	@RequestMapping(value="/replyUpdateView.do",method=RequestMethod.GET)
		public String replyUpdateView(BoardreplyDTO vo,SearchPageDTO spge,Model model) throws Exception{
		Logger.info("reply update");
		model.addAttribute("replyUpdate",reply1service.selectReply(vo.getRno()));
		model.addAttribute("spge",spge);
		return "replyUpdateView";
	}
	// 댓글 수정 포스트
	@RequestMapping(value="/replyUpdate.do", method=RequestMethod.POST)
	public String replyUpdate(BoardreplyDTO vo,SearchPageDTO spge,RedirectAttributes rttr) throws Exception{
		Logger.info("reply update");
		reply1service.updateReply(vo);
		
		System.out.println("rno:" + vo.getRno());
		rttr.addAttribute("bno",vo.getBno());
		rttr.addAttribute("page",spge.getPage());
		rttr.addAttribute("perPageNum",spge.getPerPageNum());
		rttr.addAttribute("searchType",spge.getSearchType());
		rttr.addAttribute("keyword",spge.getKeyword());
		
		return "redirect:readView.do";
	}
	
	@RequestMapping(value="/replyDeleteView.do",method=RequestMethod.GET)
	public String replyDeleteView(BoardreplyDTO vo,SearchPageDTO spge,Model model) throws Exception{
	Logger.info("reply delete");
	model.addAttribute("replyDelete",reply1service.selectReply(vo.getRno()));
	model.addAttribute("spge",spge);
	return "replyDeleteView";
}
// 댓글 수정 포스트
@RequestMapping(value="/replyDelete.do", method=RequestMethod.POST)
public String replyDelte(BoardreplyDTO vo,SearchPageDTO spge,RedirectAttributes rttr) throws Exception{
	Logger.info("reply delete");
	reply1service.deleteReply(vo);
	
	rttr.addAttribute("bno",vo.getBno());
	rttr.addAttribute("page",spge.getPage());
	rttr.addAttribute("perPageNum",spge.getPerPageNum());
	rttr.addAttribute("searchType",spge.getSearchType());
	rttr.addAttribute("keyword",spge.getKeyword());
	
	return "redirect:readView.do";
}
}
