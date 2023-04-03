package dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import dto.MemberDTO;

public interface MemberDAO {
	// 회원가입 메소드
	public void memberJoin(MemberDTO dto);

	// 로그인 메소드
	public MemberDTO memberLogin(MemberDTO dto);

	// 아이디 중복 검사
	public int idCheck(String memberId);
	//회원 정보 수정 메소드
    public int memberCheck(MemberDTO dto);
    //회원탈퇴
    public void memberDelete(MemberDTO dto) throws Exception;
}

    
