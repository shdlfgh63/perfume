package com.mapper;

import com.model.MemberVO;


public interface MemberMapper {
	
	//회원가입
	public void memberJoin(MemberVO member);
	
	// 아이디 중복 검사
	public int idCheck(String id);
	
	//로그인 
    public MemberVO memberLogin(MemberVO member);
	
    //아이디 찾기
    public String find_id(String email);
    
    // 회원정보 수정(마이페이지)
    public void memberEdit(MemberVO member) throws Exception;
    
    // 회원 상세정보 조회(마이페이지)
    public MemberVO memberInfo(String id);
    
    //----------------------------------------------------------------
    // (추가) 주문회원 주소 정보
    //----------------------------------------------------------------
    public MemberVO getMemberInfo(String id);



}
