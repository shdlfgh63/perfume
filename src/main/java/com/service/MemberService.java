package com.service;

import com.model.MemberVO;


public interface MemberService {

	//회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	// 아이디 중복 검사
	public int idCheck(String id) throws Exception;
	
	/* 로그인 */
    public MemberVO memberLogin(MemberVO member) throws Exception;
    
    // 아이디 찾기
    public String find_id(String email) throws Exception;
    
    // (추가) 주문자 정보
    public MemberVO getMemberInfo(String id);

	
}





