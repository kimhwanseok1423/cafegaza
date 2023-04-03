package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.TopDTO;

public class TopDAOImp implements TopDAO {
	private SqlSessionTemplate sqlSession;
	public TopDAOImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<TopDTO> selectGetFile(String data) {
		System.out.println(data);
		return sqlSession.selectList("cafe.cafetop1",data);
	}

	@Override
	public List<TopDTO> selectGetFile1(String data1) {
		System.out.println(data1);
		return sqlSession.selectList("cafe.cafetop2",data1);
	
	}


}
