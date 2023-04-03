package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dto.CategoryDTO;

@Controller
public class CategoryController {
	
	private static final Logger Logger = LoggerFactory.getLogger(CategoryController.class);

	public service.CategoryService CategoryService;

	public void setCategoryService(service.CategoryService categoryService) {
		CategoryService = categoryService;
	}
	
	@RequestMapping(value = "/map.do", method = RequestMethod.GET)
	public String listout(HttpServletRequest request) throws Exception {
		Logger.info("�씤湲곗닚�쐞 異쒕젰");
        
		//HttpSession session = request.getSession();

		//session.invalidate();

		return "map";
	}
	
	@ResponseBody
	@RequestMapping(value="/map.do", method = RequestMethod.POST)
	public List<CategoryDTO> process1(String data) throws Exception {		
	System.out.println(data);	
	return CategoryService.selectGetCategory(data);	
	
	}
	
}
