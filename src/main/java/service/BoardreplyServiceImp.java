package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardreplyDAO;
import dto.BoardreplyDTO;

public class BoardreplyServiceImp implements BoardreplyService {

	private BoardreplyDAO reply1mapper;


public void setReply1mapper(BoardreplyDAO reply1mapper) {
	this.reply1mapper = reply1mapper;
}
@Override
public List<BoardreplyDTO> readReply(int bno) throws Exception {
System.out.println(bno);
	return reply1mapper.readReply(bno);
}
@Override
public void writeReply(BoardreplyDTO vo) throws Exception {
	reply1mapper.writeReply(vo);
	
}
@Override
public void updateReply(BoardreplyDTO vo) throws Exception {
	// TODO Auto-generated method stub
	reply1mapper.updateReply(vo);
}
@Override
public void deleteReply(BoardreplyDTO vo) throws Exception {
	// TODO Auto-generated method stub
reply1mapper.deleteReply(vo);	
}
@Override
public BoardreplyDTO selectReply(int rno) throws Exception {
	// TODO Auto-generated method stub
	return reply1mapper.selectReply(rno);
}



}


