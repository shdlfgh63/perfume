package com.service.impl;

import com.mapper.MemberMapper;
import com.model.MemberVO;
import com.service.MyEditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Member;


@Service
public class MyEditServiceImpl implements MyEditService {

	@Autowired
	private MemberMapper membermapper;
	
	 // 회원정보 수정(마이페이지)
	@Override
    public void memberEdit(MemberVO member) throws Exception {
    	
		membermapper.memberEdit(member);
    }
	
	// 회원 상세정보 조회
	@Override
	public MemberVO memberInfo(String id) {
		
		return membermapper.memberInfo(id);
	}
}
