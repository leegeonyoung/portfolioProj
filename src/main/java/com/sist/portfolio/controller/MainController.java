package com.sist.portfolio.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sist.portfolio.util.SendEmailInfo;

@Controller
public class MainController {

	Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value = "/main/index.do")
	public String MainIndex() {
		
		return "proj/Main";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/WeatherInfo.do")
	public String WeatherInfo(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception{
		

		
		SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd", Locale.KOREA);		//현재 날짜
		SimpleDateFormat time = new SimpleDateFormat("HH00", Locale.KOREA);			//현재 시간
		Date currentDate = new Date();
		Date currentTime = new Date();
		String todayDate = date.format(currentDate);
		String todayTime = time.format(currentTime);
		
		log.debug("=== lee / todayDate : " + todayDate);
		log.debug("=== lee / todayTime : " + todayTime);
		
		StringBuilder urlBuilder = new StringBuilder("http://newsky2.kma.go.kr/service/SecndSrtpdFrcstInfoService2/ForecastSpaceData"); /*URL*/
		
		urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=" + "YA4LIIb2am6K%2BfaSbcYj5rg1rLOfd6U2Uk9VlW%2FYelgCgabxKTf%2FCGwxSDu6RhKvokusLS2mcdcr%2BuW%2FO7%2B3Qg%3D%3D"); /*서비스 인증*/
		urlBuilder.append("&" + URLEncoder.encode("base_date","UTF-8") + "=" + URLEncoder.encode(todayDate, "UTF-8")); /*현재날짜*/
		urlBuilder.append("&" + URLEncoder.encode("base_time","UTF-8") + "=" + URLEncoder.encode(todayTime, "UTF-8")); /*현재시각*/
		urlBuilder.append("&" + URLEncoder.encode("nx","UTF-8") + "=" + URLEncoder.encode("60", "UTF-8")); /*예보지점의 X 좌표값*/
		urlBuilder.append("&" + URLEncoder.encode("ny","UTF-8") + "=" + URLEncoder.encode("127", "UTF-8")); /*예보지점의 Y 좌표값*/
		//urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
		//urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
		urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*xml(기본값), json*/
		
		URL url = new URL(urlBuilder.toString());
		
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		
	    BufferedReader rd;
	    if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	        rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	    } else {
	        rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	    }
	    
	    StringBuilder sb = new StringBuilder();
	    String line;
	    
	    while ((line = rd.readLine()) != null) {
	        sb.append(line);
	    }
	    
	    rd.close();
	    conn.disconnect();
	    
	    return sb.toString();
	    
	}
	
	
	@RequestMapping(value = "/main/SendEmail.do")
	@ResponseBody
	public Boolean SendEmail(HttpServletRequest request) throws Exception{
		Boolean result = false;
		
		Date today = new Date();
		
		SimpleDateFormat sdf3;
		sdf3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		log.debug("=== lee / sdf1 : " + sdf3.format(today));
		
		String e_mail 		= request.getParameter("email");
		String name 		= request.getParameter("name");
		String subject 		= request.getParameter("subject");
		String contents		= request.getParameter("contents");
		
		Map<String, String> emailMap = new HashMap<String, String>();
		emailMap.put("e_mail"	, e_mail);
		emailMap.put("name"		, name);
		emailMap.put("subject"	, subject);
		emailMap.put("contents"	, contents);
		
		SendEmailInfo sendEmailInfo = new SendEmailInfo();
		String sendResult = sendEmailInfo.emailSend(emailMap);
		
		log.debug("=== lee / email : " + e_mail);
		
		if(sendResult.equals("success")) {
			result = true;
		}
		
		
		return result;
	}
	
}

