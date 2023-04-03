package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ReplyDAO;
import dto.ReplyDTO;
@Service
public class ReplyServiceImp implements ReplyService{

   
@Autowired
ReplyDAO replymapper;

public void setReplymapper(ReplyDAO replymapper) {
   this.replymapper = replymapper;
}

@Override
public List<ReplyDTO> readReply(String guid) throws Exception {
   // TODO Auto-generated method stub
   return replymapper.readReply(guid);
}

@Override
public void writeReply(ReplyDTO vo) throws Exception {
	// TODO Auto-generated method stub
	 replymapper.writeReply(vo);
	
}

@Override
public void deleteReply(int rno) throws Exception {
	// TODO Auto-generated method stub
	
	replymapper.deleteReply(rno);
}






}