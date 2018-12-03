package com.sist.portfolio.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sist.portfolio.entity.UserManagerVO;
import com.sist.portfolio.mapper.UserManageMapper;

@Service
public class UserManageServiceImpl implements UserManageService {

	private Logger log = LoggerFactory.getLogger(UserManageServiceImpl.class);
	
	@Inject
	private UserManageMapper userManageMapper;
	
	/**
	 * 회원 리스트 가져오기
	 * @return
	 * @throws Exception
	 */
	public List<UserManagerVO> selectUserList(UserManagerVO userManageVO) throws Exception{
		log.debug("=== lee / 02");
		return userManageMapper.selectUserList(userManageVO);
	}
	
	/**
	 * 회원 조회
	 * @param userManagerVO
	 * @return
	 * @throws Exception
	 */
	public UserManagerVO selectUser(UserManagerVO userManagerVO) throws Exception{
		return userManageMapper.selectUser(userManagerVO);
	}
	
	/**
	 * 회원 등록
	 * @param userManagerVO
	 * @return
	 * @throws Exception
	 */
	public Integer insertUser(UserManagerVO userManagerVO) throws Exception{
		return userManageMapper.insertUser(userManagerVO);
	}
	
	/**
	 * 회원 수정
	 * @param userManagerVO
	 * @throws Exception
	 */
	public void updateUser(UserManagerVO userManagerVO) throws Exception{
		userManageMapper.updateUser(userManagerVO);
	}
	
	/**
	 * 회원 삭제
	 * @param userManagerVO
	 * @throws Exception
	 */
	public void deleteUser(UserManagerVO userManagerVO) throws Exception{
		userManageMapper.deleteUser(userManagerVO);
	}
	
}
