package com.sist.portfolio.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.sist.portfolio.entity.UserManagerVO;

public interface UserManageService {

	/**
	 * 회원 리스트 가져오기
	 * @return
	 * @throws Exception
	 */
	public List<UserManagerVO> selectUserList(UserManagerVO userManageVO) throws Exception;
	
	/**
	 * 회원 조회
	 * @param userManagerVO
	 * @return
	 * @throws Exception
	 */
	public UserManagerVO selectUser(UserManagerVO userManagerVO) throws Exception;
	
	/**
	 * 회원 수정
	 * @param userManagerVO
	 * @throws Exception
	 */
	public void updateUser(UserManagerVO userManagerVO) throws Exception;
	
	/**
	 * 회원 등록
	 * @param userManagerVO
	 * @return
	 * @throws Exception
	 */
	public Integer insertUser(UserManagerVO userManagerVO) throws Exception;
	
	/**
	 * 회원 삭제
	 * @param userManagerVO
	 * @throws Exception
	 */
	public void deleteUser(UserManagerVO userManagerVO) throws Exception;
	
}
