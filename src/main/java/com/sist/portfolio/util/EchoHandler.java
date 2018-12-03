package com.sist.portfolio.util;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class EchoHandler extends TextWebSocketHandler{

	Logger log = Logger.getLogger(this.getClass());
	
	//웹 소켓 세션을 저장할 배열 생성
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	
	public void WebsocketHandler() {      	
    	log.debug("=== lee / websocket Start");
    } 
	
	/**
	 * 클라이언트와 연결 된 후 실행되는 메소드
	 */
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception{
		log.debug("=== lee / 진입");
		sessionList.add(session);
		log.debug(session.getId() + "로 연결됨");
	}
	
	/**
	 * 클라이언트가 웹 소켓 서버로 데이터를 전송했을 경우 실행되는 메소드
	 */
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception{
		log.debug(session.getId() + "로 부터 " + message.getPayload() + "를 받음");
		
		//연결된 모든 클라이언트에게 메세지 전송 : List 사용
		//getPrincipal()을 이용하여 세션에 물려있는 유저 정보를 불러온다. 세션의 정보는 User를 이용한 것과 동일하다.
		for(WebSocketSession sess : sessionList){
			sess.sendMessage(new TextMessage(session.getId() + "|" + message.getPayload()));
		}
		
	}
	
	/**
	 * 클라이언트가 연결을 끊었을 때 실행되는 메소드
	 */
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception{
		//List 삭제
		sessionList.remove(session);
		log.debug(session.getId() + "연결 끊김");
	}
}
