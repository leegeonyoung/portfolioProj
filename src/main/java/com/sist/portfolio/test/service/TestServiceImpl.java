package com.sist.portfolio.test.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sist.portfolio.test.entity.CpsListVO;

@Service
public class TestServiceImpl implements TestService {

	private Logger log = LoggerFactory.getLogger(TestServiceImpl.class);
	
	/**
	 * API LIST 조회
	 * @param request
	 * @return
	 * @throws Exception
	 */
	
	public List<CpsListVO> apiList(HttpServletRequest request) throws Exception
	{
		List<CpsListVO> cpsListVO = new ArrayList<CpsListVO>();
		
		log.debug("=== lee / request : {}", request.getParameter("ccbaCtcd"));
		
		
		//URL 생성
		String strUrl = MakeUrl(request);
		//API 송/수신
		Document doc = InOutputApi(strUrl);
		//API 파싱
		cpsListVO = ParserAPI(doc);
		/*
		for(CpsListVO vo : cpsListVO) {
			log.debug("=== lee / vo.ccbaMnm1 : {}", vo.getCcbaMnm1());
			log.debug("=== lee / vo.totCnt : {}", vo.getTotCnt());
		}
		*/
		log.debug("=== lee / cpsListVO.size : {}", cpsListVO.size());
		
		return cpsListVO;
	}
	
	
	
	/**
	 * URL 생성
	 * @return
	 * @throws Exception
	 */
	public String MakeUrl(HttpServletRequest request) throws Exception{
		String strUrl = "";
		try {
			strUrl = "http://www.cha.go.kr/cha/SearchKindOpenapiList.do?ccbaCtcd=" + request.getParameter("ccbaCtcd");
			log.debug("=== lee / strUrl : {}", strUrl);
		}catch(Exception e) {
			e.getStackTrace();
		}
		return strUrl;
	}
	
	/**
	 * API 송수신
	 * @param strUrl
	 * @return
	 * @throws Exception
	 */
	public Document InOutputApi(String strUrl) throws Exception{
		
		URL url = new URL(strUrl);
		
		URLConnection con = url.openConnection();
		
		con.setRequestProperty("CONTENT-TYPE", "text/html");
		
		BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream(), "utf-8"));
		
		StringBuffer sb = new StringBuffer();
		
		String buffer = "";
		
		while((buffer = br.readLine()) != null) {
			sb.append(buffer + "\n");
		}
		
		log.debug("=== lee / sb.toString : {}", sb.toString());
		
		Document doc = Jsoup.parse(sb.toString());
		
		return doc;
		
	}
	
	/**
	 * API>VO 파싱
	 * @return
	 * @throws Exception
	 */
	public List<CpsListVO> ParserAPI(Document doc) throws Exception{
		List<CpsListVO> resultVO = new ArrayList<CpsListVO>();

		Elements els = doc.select("item");
//		Elements els = doc.getElementsByTag("item");
		Elements totCnt = doc.select("totalCnt");
		
		for(Element e : els) {
			log.debug("=== lee02 / ccbaMnm1 : {}",e.getElementsByTag("ccbaMnm1").text());
			
			CpsListVO cpsListVO = new CpsListVO();
			
			cpsListVO.setSn(e.getElementsByTag("sn").text());
			cpsListVO.setCcmaName(e.getElementsByTag("ccmaName").text());
			cpsListVO.setCrltSsnoNm(e.getElementsByTag("crltsnoNm").text());
			cpsListVO.setCcbaMnm1(e.getElementsByTag("ccbaMnm1").text());
			cpsListVO.setCcbaMnm2(e.getElementsByTag("ccbaMnm2").text());
			cpsListVO.setCcbaCtcdNm(e.getElementsByTag("ccbaCtcdNm").text());
			cpsListVO.setCcsiName(e.getElementsByTag("ccsiName").text());
			cpsListVO.setCcbaAdmin(e.getElementsByTag("ccbaAdmin").text());
			cpsListVO.setCcbaKdcd(e.getElementsByTag("ccbaKdcd").text());
			cpsListVO.setCcbaCtcd(e.getElementsByTag("ccbaCtcd").text());
			cpsListVO.setCcbaAsno(e.getElementsByTag("ccbaAsno").text());
			cpsListVO.setCcbaCncl(e.getElementsByTag("ccbaCncl").text());
			cpsListVO.setCcbaCpno(e.getElementsByTag("ccbaCpno").text());
			cpsListVO.setTotCnt(totCnt.get(0).getElementsByTag("totCnt").text());
			
			resultVO.add(cpsListVO);
		}
		
		return resultVO;
		
	}
}
