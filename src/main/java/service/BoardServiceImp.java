package service;

import java.io.File;
import java.util.List;

import dao.BoardDAO;
import dto.BoardDTO;
import dto.PageDTO;
import dto.SearchPageDTO;

public class BoardServiceImp implements BoardService {
	private BoardDAO boardmapper;

	public BoardServiceImp() {

	}

public void setBoardmapper(BoardDAO boardmapper) {
	this.boardmapper = boardmapper;
}

@Override
public void write(BoardDTO dto2) throws Exception {
	boardmapper.write(dto2);
	
}

@Override
public List<BoardDTO> list(SearchPageDTO spge) throws Exception {
	// TODO Auto-generated method stub
	return boardmapper.list(spge);
}

@Override
public BoardDTO read(int bno) throws Exception {
	// TODO Auto-generated method stub
	return boardmapper.read(bno);
}

@Override
public void update(BoardDTO dto2) throws Exception {
	 boardmapper.update(dto2);
	
}

@Override
public void delete(int bno) throws Exception {
	boardmapper.delete(bno);
	
}

/*
 * @Override public List<BoardDTO> list(PageDTO pge) throws Exception { // TODO
 * Auto-generated method stub return boardmapper.list(pge); }
 */
@Override
public int listCount(SearchPageDTO spge) throws Exception {
	
	return boardmapper.listCount(spge);
}

	


	
}
