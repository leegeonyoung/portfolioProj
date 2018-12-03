package com.sist.portfolio.test.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.sist.portfolio.entity.UserManagerVO;
import com.sist.portfolio.service.UserManageService;
import com.sist.portfolio.test.entity.CpsListVO;
import com.sist.portfolio.test.service.TestService;

@Controller
@RequestMapping(value = "/test")
public class testController {

	private Logger log = LoggerFactory.getLogger(testController.class);
	
	@Autowired
	private UserManageService userManageService;
	
	@Autowired
	private TestService testService;
	
	/**
	 * 다중 checkbox 테스트
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/test01.do")
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
	@RequestMapping(value = "/test02.do")
	public String test02()throws Exception{
		return "test/Chat";
	}
	
	/**
	 * ajax MappingConverter 테스트
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/test03.do")
	public String test03(HttpServletRequest request, Model model)throws Exception{
//		Map<String,?> mapStr = RequestContextUtils.getInputFlashMap(request);
//		String resultStr = "";
//		if(mapStr != null) {
//			resultStr = (String) mapStr.get("resultStr");
//		}
//		log.debug("=== lee / request.resultStr : {}",resultStr);
//		List<UserManagerVO> result = new ArrayList<UserManagerVO>();
//		UserManagerVO userManageVO = new UserManagerVO();
//		result = userManageService.selectUserList(userManageVO);
//		
//		model.addAttribute("userList", result);
//		model.addAttribute("resultStr", resultStr);
		
		return "test/test03";
	}
	
	/**
	 * test03>회원 조회
	 * @param userManagerVO
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/selectUser.do")
	public @ResponseBody UserManagerVO selectUser(@ModelAttribute("userManagerVO") UserManagerVO userManagerVO) throws Exception{
		UserManagerVO resultVO = new UserManagerVO();
		resultVO = userManageService.selectUser(userManagerVO);
		
		return resultVO;
	}
	
	/**
	 * test03>비동기 검색
	 * @param userManagerVO
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/ajaxUserList.do")
	public @ResponseBody Map<String, Object> ajaxUserList(@ModelAttribute("userManagerVO") UserManagerVO userManagerVO) throws Exception{
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<UserManagerVO> resultList = new ArrayList<UserManagerVO>();
		
		log.debug("=== lee / searchKeyword : {}", userManagerVO.getSearchKeyword());
		
		resultList = userManageService.selectUserList(userManagerVO);
		
		resultMap.put("userList", resultList);
		resultMap.put("searchKeyword", userManagerVO.getSearchKeyword());
		
		return resultMap;
	}
	
	/**
	 * test03>회원가입
	 * @param userManagerVO
	 * @param ra
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/insertUser.do")
	public String insertUser(@ModelAttribute("userManagerVO") UserManagerVO userManagerVO, RedirectAttributes ra)throws Exception{
		Integer result = 0;
		String resultStr = "";
		
		result = userManageService.insertUser(userManagerVO);
		log.debug("=== lee / result : {}", result);
		
		if(result > 0) {
			resultStr = "success";
		}else {
			resultStr = "false";
		}
		
		ra.addFlashAttribute("resultStr", resultStr);
		
		return "redirect:/test/test03.do";
	}
	
	/**
	 * 회원 수정
	 * @param userManagerVO
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/updateUser.do")
	public String updateUser(@ModelAttribute("userManagerVO") UserManagerVO userManagerVO) throws Exception{
		userManageService.updateUser(userManagerVO);
		return "redirect:/test/test03.do";
	}
	
	/**
	 * 회원 삭제
	 * @param userManagerVO
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/deleteUser.do")
	public String deleteUser(@ModelAttribute("userManagerVO") UserManagerVO userManagerVO) throws Exception{
		
		log.debug("=== lee / userManagerVO.getUserSeq() : {}", userManagerVO.getUserSeq());
		
		userManageService.deleteUser(userManagerVO);
	
		return "redirect:/test/test03.do";
	}
	
	/**
	 * test04 : 파일테스트
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/test04.do")
	public String test04_fileTest() throws Exception{
		
		return "test/test04";
	}
	
	@RequestMapping(value = "/test04_apiList.do")
	public @ResponseBody Map<String, Object> apiList(HttpServletRequest request) throws Exception{
		Map<String, Object> result = new HashMap<String, Object>();
		List<CpsListVO> resultList = new ArrayList<CpsListVO>();
		resultList = testService.apiList(request);
		
		result.put("resultList", resultList);
		
		return result;
	}
}
