package dao;

import java.util.List;

import dto.ReplyDTO;

public interface ReplyDAO {
 
public List<ReplyDTO> readReply(String guid)throws Exception;
public void writeReply(ReplyDTO vo)throws Exception;

public void deleteReply(int rno)throws Exception;
}