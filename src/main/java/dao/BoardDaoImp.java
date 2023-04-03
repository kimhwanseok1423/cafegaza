package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.BoardDTO;
import dto.PageDTO;
import dto.SearchPageDTO;

public class BoardDaoImp implements BoardDAO{
	private SqlSessionTemplate sqlSession;

	public BoardDaoImp() {

	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

//게시글 작성
	@Override
	public void write(BoardDTO dto2) {
		sqlSession.insert("boardMapper.insert", dto2);
	}
//게시물 목록 조회
	@Override
	public List<BoardDTO> list(SearchPageDTO spge) throws Exception {
		
		return sqlSession.selectList("boardMapper.listPage",spge);
	}
// 게시물 조회
	@Override
	public BoardDTO read(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("boardMapper.read", bno);
	}
	// 게시물 수정
	@Override
	public void update(BoardDTO dto) throws Exception {
		
		sqlSession.update("boardMapper.update", dto);
	}

	// 게시물 삭제
	@Override
	public void delete(int bno) throws Exception {
		
		sqlSession.delete("boardMapper.delete", bno);
	}

	/*
	 * @Override public List<BoardDTO> list(PageDTO pge) throws Exception {
	 * 
	 * return sqlSession.selectList("boardMapper.listPage", pge); }
	 */
//게시물 총 갯수
	@Override
	public int listCount(SearchPageDTO spge) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("boardMapper.listCount",spge);
	}
	
} // end class
