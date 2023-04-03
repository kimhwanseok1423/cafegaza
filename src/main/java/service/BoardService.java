package service;

import java.util.List;

import dto.BoardDTO;
import dto.PageDTO;
import dto.SearchPageDTO;

public interface BoardService {

	public void write(BoardDTO dto2) throws Exception;

	// 게시물 목록 조회
	public List<BoardDTO> list(SearchPageDTO spge) throws Exception;

	// 게시물 목록 조회
	public BoardDTO read(int bno) throws Exception;

	// 게시물 수정
	public void update(BoardDTO dto2) throws Exception;

	// 게시물 삭제
	public void delete(int bno) throws Exception;
	
	/*
	 * //게시물 목록 조회 public List<BoardDTO> list(PageDTO pge) throws Exception;
	 */
	
	//게시물 총 갯수
	public int listCount(SearchPageDTO spge) throws Exception;
}
