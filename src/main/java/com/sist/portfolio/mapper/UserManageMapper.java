package com.sist.portfolio.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sist.portfolio.entity.UserManagerVO;

@Mapper
public interface UserManageMapper {

	/**
	 * 회원 리스트 가져오기
	 * @return
	 * @throws Exception
	 */
	public List<UserManagerVO> selectUserList(UserManagerVO userManagerVO) throws Exception;
	
	/**
	 * 회원 조회
	 * @param userManagerVO
	 * @return
	 * @throws Exception
	 */
	public UserManagerVO selectUser(UserManagerVO userManagerVO) throws Exception;
	
	/**
	 * 회원 등록
	 * @param userManagerVO
	 * @return
	 * @throws Exception
	 */
	public Integer insertUser(UserManagerVO userManagerVO) throws Exception;
	
	/**
	 * 회원 수정
	 * @param userManagerVO
	 * @throws Exception
	 */
	public void updateUser(UserManagerVO userManagerVO) throws Exception;
	
	
	/**
	 * 회원 삭제
	 * @param userManagerVO
	 * @throws Exception
	 */
	public void deleteUser(UserManagerVO userManagerVO) throws Exception;
}
