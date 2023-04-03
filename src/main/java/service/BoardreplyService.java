package service;

import java.util.List;

import dto.BoardreplyDTO;

public interface BoardreplyService {

	public List<BoardreplyDTO> readReply(int bno) throws Exception;

	public void writeReply(BoardreplyDTO vo) throws Exception;

	public void updateReply(BoardreplyDTO vo) throws Exception;

	public void deleteReply(BoardreplyDTO vo) throws Exception;

	public BoardreplyDTO selectReply(int rno) throws Exception;
}
