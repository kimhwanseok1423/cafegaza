package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;

import dto.BoardreplyDTO;

public class BoardreplyDAOImp implements BoardreplyDAO {
private SqlSessionTemplate sqlSession;


public void setSqlSession(SqlSessionTemplate sqlSession) {
	this.sqlSession = sqlSession;
}
//댓글
	@Override
	public List<BoardreplyDTO> readReply(int bno) throws Exception {
		
		return sqlSession.selectList("boardreplyMapper.readReply", bno) ;
	}
	@Override
	public void writeReply(BoardreplyDTO vo) throws Exception {
		sqlSession.insert("boardreplyMapper.writeReply", vo);
		
	}
	@Override
	public void updateReply(BoardreplyDTO vo) throws Exception {
		sqlSession.update("boardreplyMapper.updateReply", vo);
		
	}
	@Override
	public void deleteReply(BoardreplyDTO vo) throws Exception {
		sqlSession.delete("boardreplyMapper.deleteReply",vo);
		
	}
	@Override
	public BoardreplyDTO selectReply(int rno) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("boardreplyMapper.selectReply",rno);
	}
	

}
