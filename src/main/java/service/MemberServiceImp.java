package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import dao.MemberDAO;
import dto.MemberDTO;

@Service
public class MemberServiceImp implements MemberService{

	@Autowired
	MemberDAO membermapper;
	
	
	public void setMembermapper(MemberDAO membermapper) {
		this.membermapper = membermapper;
	}

	@Override
	public void memberJoin(MemberDTO dto) throws Exception {
		
		membermapper.memberJoin(dto);
		
	}

	@Override
	public MemberDTO memberLogin(MemberDTO dto) throws Exception {
	
	
	return membermapper.memberLogin(dto);
}

	@Override
	public int idCheck(String memberId) throws Exception {
		// TODO Auto-generated method stub
		return membermapper.idCheck(memberId);
	}

	@Override
	public int memberCheck(MemberDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return membermapper.memberCheck(dto);
	}

	@Override
	public void memberDelete(MemberDTO dto) throws Exception {
		membermapper.memberDelete(dto);
		
	}

	
	
}