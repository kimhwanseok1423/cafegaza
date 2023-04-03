package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.CategoryDTO;
import dto.DetailDTO;

public class DetailDAOImp implements DetailDAO{
	private SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public DetailDTO selectOne(String guId) {
		System.out.printf("cafedetail.cat2",guId);
		
		return sqlSession.selectOne("cafedetail.cat2",guId);
	}


}
//return sqlSession.selectList("cafedetail.cat2",data);
