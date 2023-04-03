package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.CategoryDTO;


public class CategoryDAOImp implements CategoryDAO {
	private SqlSessionTemplate sqlSession;
	public CategoryDAOImp() {
		
	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<CategoryDTO> selectGetCategory(String data) {
		
		return sqlSession.selectList("cafecategory.cat",data);
	}

	

	


	
	
	
}
