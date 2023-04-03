package dao;

import java.util.List;

import dto.CategoryDTO;

public interface CategoryDAO {
	public List<CategoryDTO> selectGetCategory(String data);
}
