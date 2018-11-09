package com.sist.portfolio.test.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {

	private Logger log = LoggerFactory.getLogger(testController.class);
	
	/**
	 * 다중 checkbox 테스트
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "test/test01.do")
	public String test01(HttpServletRequest request, Model model)throws Exception{
		String checkNo = (String) request.getParameter("checkNo");
		model.addAttribute("checkNo", checkNo);
		return "test/test01";
	}
	
	/**
	 * Websocket 채팅 테스트
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "test/test02.do")
	public String test02()throws Exception{
		return "test/Chat";
	}
	
}
