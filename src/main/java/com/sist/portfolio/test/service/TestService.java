package com.sist.portfolio.test.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.sist.portfolio.test.entity.CpsListVO;


public interface TestService {

	
	/**
	 * API LIST 조회
	 * @param request
	 * @return
	 * @throws Exception
	 */
	public List<CpsListVO> apiList(HttpServletRequest request) throws Exception;
}
