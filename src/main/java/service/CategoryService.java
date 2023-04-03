package service;

import java.util.List;

import dto.CategoryDTO;

public interface CategoryService {
public List<CategoryDTO> selectGetCategory(String data)throws Exception;
}
