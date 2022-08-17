package com.service;

import com.model.MemberVO;

public interface MyEditService {

    // 회원정보 수정(마이페이지)
    public void memberEdit(MemberVO member) throws Exception;

    // 회원 상세정보 조회
    public MemberVO memberInfo(String id);

}
