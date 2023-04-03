package service;

import java.util.List;

import dto.ReplyDTO;

public interface ReplyService {
  
   public List<ReplyDTO> readReply(String guid) throws Exception;
   
   public void writeReply(ReplyDTO vo) throws Exception;
   
   public void deleteReply(int rno) throws Exception;
}