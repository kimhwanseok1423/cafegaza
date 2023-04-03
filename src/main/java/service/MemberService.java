package service;

import dto.MemberDTO;

public interface MemberService {
	// 회원가입 프로세스
	public void memberJoin(MemberDTO dto) throws Exception;

	public MemberDTO memberLogin(MemberDTO dto) throws Exception;

	// 아이디 중복 검사
	public int idCheck(String memberId) throws Exception;
    //회원정보 수정
	public int memberCheck(MemberDTO dto) throws Exception;
	 //회원탈퇴
    public void memberDelete(MemberDTO dto) throws Exception;
}
