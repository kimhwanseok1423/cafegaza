package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import dao.CategoryDAO;
import dto.CategoryDTO;

public class CategoryServiceImp implements CategoryService{
	
	@Autowired//쓸때마다 new로해서 객체생성안하고 1개로 계속 돌려쓰려고
	CategoryDAO categorymapper;
	
public void setCategorymapper(CategoryDAO categorymapper) {
	this.categorymapper = categorymapper;
}

@Override
public List<CategoryDTO> selectGetCategory(String data) throws Exception {

	return categorymapper.selectGetCategory(data);
}


}
