package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.BoardreplyDTO;

public interface BoardreplyDAO {
//댓글조회
public List<BoardreplyDTO> readReply(int bno) throws Exception;
// 댓글 작성
public void writeReply(BoardreplyDTO vo) throws Exception;


// 댓글 수정
public void  updateReply(BoardreplyDTO vo) throws Exception;

//댓글 제거
public void deleteReply(BoardreplyDTO vo) throws Exception;

//선택된 댓글 조회
public  BoardreplyDTO selectReply(int rno) throws Exception;
}
