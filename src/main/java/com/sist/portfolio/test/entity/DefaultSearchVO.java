package com.sist.portfolio.test.entity;

import java.io.Serializable;

import lombok.Data;

@Data
public class DefaultSearchVO implements Serializable {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* 행 번호 */
	private Integer rn;
	
	/* 키워드 */
	private String searchKeyword;
	
	/* 페이지 인덱스 */
	private String pageIndex;
	
	/* 첫번째 페이지번호 */
	private String pageFirstIndex;
	
	/* 마지막 페이지 번호 */
	private String pageLastIndex;
	
	/* 페이지 사이즈 */
	private String pageSize;
	
	/* 토탈카운트 */
	private String totCnt;

	
	
}
