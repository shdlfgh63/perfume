package com.model;

import lombok.Data;
import org.springframework.context.annotation.Bean;

import java.sql.Date;

public class MemberVO {

	private String id;         // 아이디
	private String password;   // 패스워드
	private String user_name;       // 이름
	private String email;      // 이메일
	private String mobile;     // 전화번호
	private String zipcode;    // 우편번호
	private String address1;   // 주소
	private String address2;   // 상세주소
	private int    adminCk;    // 관리자확인( 0: 일반회원 1: 관리자)
	private Date   regDate;    // 등록일 import java.sql.Date
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public int getAdminCk() {
		return adminCk;
	}
	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", user_name=" + user_name + ", email=" + email
				+ ", mobile=" + mobile + ", zipcode=" + zipcode + ", address1=" + address1 + ", address2=" + address2
				+ ", adminCk=" + adminCk + ", regDate=" + regDate + "]";
	}
	
	
}
