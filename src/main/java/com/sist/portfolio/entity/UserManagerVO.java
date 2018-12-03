package com.sist.portfolio.entity;

import lombok.Data;

@Data
public class UserManagerVO extends DefaultSearchVO{

	private static final long serialVersionUID = 1L;
	
	
	private String userSeq;			//유저번호
	private String userId;			//유저아이디
	private String userPwd;			//유저비밀번호
	private String userName;		//유저명
	private String userAge;			//유저나이
	private String userSex;			//유저성별
	private String userEmail;		//유저이메일
	private String userTel;			//유저전화번호

}
