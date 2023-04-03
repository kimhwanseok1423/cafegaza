package dao;

import org.mybatis.spring.SqlSessionTemplate;

import dto.MemberDTO;

public class MemberDaoImp  implements MemberDAO{
	private SqlSessionTemplate sqlSession;

	@Override
	public void memberJoin(MemberDTO dto) {
		sqlSession.insert("memberJoin",dto);
		
	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public MemberDTO memberLogin(MemberDTO dto) {
		return sqlSession.selectOne("memberLogin", dto);
	}

	@Override
	public int idCheck(String memberId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("idCheck",memberId);
	}

	@Override
	public int memberCheck(MemberDTO dto) {
	return sqlSession.update("memberCheck", dto);
		
	}

	@Override
	public void memberDelete(MemberDTO dto) throws Exception {
		this.sqlSession.delete("memberDelete",dto);
		
	}

	


	
		
			
	}


