package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;

import dto.ReplyDTO;

public class ReplyDAOImp implements ReplyDAO {
   private SqlSessionTemplate sqlSession;

   public void setSqlSession(SqlSessionTemplate sqlSession) {
      this.sqlSession = sqlSession;
   }

   @Override
   public List<ReplyDTO> readReply(String guid) throws Exception {
      // TODO Auto-generated method stub
      return sqlSession.selectList("ReplyMapper.readReply1",guid);
   }

   @Override
   public void writeReply(ReplyDTO vo) throws Exception {
      sqlSession.insert("ReplyMapper.writeReply",vo);
      
   }

@Override
public void deleteReply(int rno) throws Exception {
	// TODO Auto-generated method stub
	sqlSession.delete("ReplyMapper.deleteReply",rno);
}

   

}