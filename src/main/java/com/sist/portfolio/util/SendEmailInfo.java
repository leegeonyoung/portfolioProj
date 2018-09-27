package com.sist.portfolio.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.commons.mail.HtmlEmail;
import org.apache.log4j.Logger;

public class SendEmailInfo {
	
	Logger log = Logger.getLogger(this.getClass());

	final String user 		= "leegunyoung1159@gmail.com";
	final String userName	= "이건영";
	final String password 	= "rjsdud0109!";
	
	public String emailSend(Map<String, String> emailMap){
		String result;

		try {
			HtmlEmail email = new HtmlEmail();
			
			//메일 기본인증 세팅
			email.setCharset("EUC-KR");          										//한글 인코딩 
			email.setHostName("smtp.gmail.com");      									//SMTP
			email.setAuthentication(user, password);									//인증(아이디, 패스워드)
			email.setSmtpPort(465);           											//포트
			email.setSSL(true);            												//SSL
			
			//파라미터로 넘어온 보내는사람 세팅
			email.setFrom(emailMap.get("e_mail"), emailMap.get("name"));				//실제 계정의 사용자 정보가 전송
			
			//받는사람 셋팅
			email.addTo(user, userName); 												//받는이메일, 이름
			email.setSubject(emailMap.get("subject"));         							//제목
			email.setHtmlMsg(emailMap.get("contents")); 								//내용(템플릿적용)
			email.setTextMsg("Your email client does not support HTML messages");     	//html 미지원일경우 메세지
			
			Date today = new Date();
			
			SimpleDateFormat sdf3;
			sdf3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
			
			log.debug("=== lee / sdf2 : " + sdf3.format(today));
			email.send();                  												//메일 전송
			
			today = new Date();
			log.debug("=== lee / sdf3 : " + sdf3.format(today));
			
			
			  
			result = "success";

		} catch (Exception e) {
			result = "fail";
			e.printStackTrace();
		}
		
		log.debug("=== lee / result : " + result);
		return result;
	}
}
