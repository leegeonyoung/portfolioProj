package com.sist.portfolio.test.entity;

import lombok.Data;

@Data
public class CpsListVO extends DefaultSearchVO{

	private String sn;				//순번
	private String ccmaName;		//문화재유형
	private String crltSsnoNm;		//지정호수
	private String ccbaMnm1;		//문화재명1
	private String ccbaMnm2;		//문화재명2
	private String ccbaCtcdNm;		//시도명
	private String ccsiName;		//구명
	private String ccbaAdmin;		//관리자
	private String ccbaKdcd;		//종목코드
	private String ccbaCtcd;		//시도코드
	private String ccbaAsno;		//지정번호
	private String ccbaCncl;		//사용여부
	private String ccbaCpno;		//문화재연계번호
}
