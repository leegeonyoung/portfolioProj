<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>포트폴리오</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/fontawesome-free/all.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/resources/css/resume.min.css"
	rel="stylesheet">

<!-- weather css -->
<link
	href="${pageContext.request.contextPath}/resources/css/weather/weather-icons.min.css"
	rel="stylesheet">
<style type="text/css">
.list-inline.dev-icons li {
	cursor: pointer;
}

#spinner {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 150px;
	height: 150px;
	background: ;
	margin: -50px 0 0 -50px;
}
</style>

</head>

<body id="page-top">

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top"
		id="sideNav">
		<a class="navbar-brand js-scroll-trigger" href="#page-top"> <span
			class="d-block d-lg-none">Clarence Taylor</span> <span
			class="d-none d-lg-block"> <img
				class="img-fluid img-profile rounded-circle mx-auto mb-2"
				src="${pageContext.request.contextPath}/resources/images/portfolio.jpg"
				alt="">
		</span>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Education</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Experience</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Skills</a></li>
				<%--
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#interests">Interests</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#awards">Awards</a></li>
				--%>
			</ul>
		</div>
	</nav>

	<div class="container-fluid p-0">

		<section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
			<div class="my-auto">
				<h1 class="mb-0">이건영</h1>
				<h2 class="mb-0">GeonYoung Lee</h2>
				<h3 class="mb-0">
					<span class="text-primary">Web Developer</span>
				</h3>
				<div class="subheading mb-5" style="margin-bottom: 0rem !important">
					꾸준한 자기개발로 개발의 질을 높이고 함께 어울러 개발하는 개발자
				</div>
				<div class="subheading mb-5" style="margin-bottom: 0rem !important">
					<img src="${pageContext.request.contextPath}/resources/images/phone.jpg" style="width:13px; height:18px; margin-right:3px; margin-bottom:3px;"/>
					<a href="javascript:addPlusFriend();" >010-8533-8625</a>
				</div>
				<div class="subheading mb-5" style="margin-bottom: 2rem !important">
					<img src="${pageContext.request.contextPath}/resources/images/mail.jpg" style="width:13px; height:15px; margin-right:3px; margin-bottom:3px;"/>
					<a href="#" data-toggle="modal" data-target="#myModal">leegunyoung1159@gmail.com</a>
				</div>
				<hr class="m-0" style="margin-bottom:2rem !important;">
				
				<p class="lead mb-5" style="margin-bottom: 1rem !important">
					안녕하세요. <br>
					코딩의 질을 높이기위해 스스로 생각하며 개발하고, 끊임없는 자기개발로 발전을 통해 개발의 질을 높이는 개발자 이건영입니다. <br>
					사용자의 편리함을 위해 항상 제가 먼저 노력하고 결과로 보여주는 개발자가 되겠습니다.
				</p>
				<p class="lead mb-5">
					주로 개발하는 언어는 자바를 사용하며, 스프링/전자정부프레임워크를 통해 개발을 했습니다. <br>
					또한, back-end개발만이 아닌 front-end개발을 통해 자바스크립트부분의 jquery를 많이 사용하여 화면의 동적인 기능을 높였습니다.<br>
					제가 참여한 프로젝트들 중 개발을 담당했던 부분을 아래에서 자세히 소개해드리겠습니다!
				</p>

				<div class="social-icons" style="margin-bottom:/*3rem !important;*/">
					<a href="https://github.com/leegeonyoung/portfolioProj" target="_blank">
						<i class="fab fa-github"></i>
					</a> 
					<a href="https://www.instagram.com/2_gun0/?hl=ko" target="_blank">
						<i class="fab fa-linkedin-in"></i>
					</a>
					<a href="https://www.facebook.com/profile.php?id=100002203464751" target="_blank">
						<i class="fab fa-facebook-f"></i>
					</a>
				</div>
				
				<!-- 
				<h3 class="mb-5" style="margin-bottom: 0rem !important">학력</h3>
				<hr class="m-0" style="margin-bottom:2rem !important;">
				
				<div class="subheading mb-3" style="color:#212529; margin-bottom:3rem !important;">
					- 2008.03 ~ 2011.02 진천고등학교(인문계) 졸업 <br>
					- 2011.02 ~ 2017.02 세명대학교(정보통신학부) 졸업 <br>
					- 2016.07 ~ 2016.12 쌍용교육센터(Framework를 활용한 빅데이터 개발자 양성과정) 수료
				</div>
				
				<h3 class="mb-5" style="margin-bottom: 0rem !important">경력</h3>
				<hr class="m-0" style="margin-bottom:2rem !important;">
				<div class="subheading mb-3" style="color:#212529; margin-bottom:0rem !important;">
					포스트미디어<br>
					<p class="lead mb-5" style="margin-bottom: 1rem !important; font-size:0.9rem; color:#868e96;">
						<img src="${pageContext.request.contextPath}/resources/images/calender.jpg"/> 
						<span>2017.02 ~ </span>
					</p>
				</div>
				<p class="lead mb-5" style="margin-bottom: 3rem !important">
					SI사업부팀에서 공공기관 SI 및 SM을 주요 업무로 하였으며,<br>
					전자정부프레임워크를 기반으로 서울한옥통합시스템과  회사 자체홈페이지 등을 유지보수 및 개발하였습니다.<br>
					아래 프로젝트 관련 상세업무를 작성하였습니다. 
				</p>
				-->
			</div>
		</section>
		
		<hr class="m-0">
		
		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
			<div class="my-auto">
				<h2 class="mb-5" style="margin-bottom:0rem !important;">EDUCATION</h2>
				<hr class="m-0" style="margin-bottom:2rem !important;">

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">진천고등학교</h3>
						<div class="subheading mb-3">인문계 졸업</div>
<!-- 						<div>Computer Science - Web Development Track</div> -->
<!-- 						<p>GPA: 3.23</p> -->
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">March 2008 - February 2011</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row" style="margin-bottom:3rem;">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">세명대학교</h3>
						<div class="subheading mb-3">정보통신학부 졸업</div>
<!-- 						<p>GPA: 3.56</p> -->
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">March 2011 - February 2017</span>
					</div>
				</div>
				
				<h2 class="mb-5" style="margin-bottom:0rem !important;">Work Experience</h2>
				<hr class="m-0" style="margin-bottom:2rem !important;">
				
				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">쌍용교육센터</h3>
						<div class="subheading mb-3">Framework를 활용한 빅데이터 개발자 양성과정 수료</div>
<!-- 						<div>Computer Science - Web Development Track</div> -->
<!-- 						<p>GPA: 3.23</p> -->
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">July 2016 - December 2017</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">(주)포스트미디어</h3>
						<p class="lead mb-5" style="margin-bottom: 3rem !important; font-size:1rem;">
						SI사업부팀에서 공공기관 SI 및 SM을 주요 업무로 하였으며,<br>
						전자정부프레임워크를 기반으로 서울한옥통합시스템과  회사 자체홈페이지 등을 유지보수 및 개발하였습니다.<br>
						아래 프로젝트 관련 상세업무를 작성하였습니다.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">March 2017 - Present</span>
					</div>
				</div>

			</div>
		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
			<div class="my-auto">
				<h2 class="mb-5">Experience Project</h2>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0" style="margin-bottom:1rem !important">서울 한옥통합정보시스템</h3>
						<div class="subheading mb-3">
							<img src="${pageContext.request.contextPath}/resources/images/hanok2.jpg"/>	개편 및 유지보수
						</div>
						<div>
							<p style="font-weight:bold; color:#343a40;"> - 개발환경</p>
							<p>
								java 1.8 / egovFramework 1.0 / Spring 2.5.6 / Tomcat7(실서버 Red Hat) / Oracle 11g / Eclipse / ibatis / Maven
							</p>
						</div>
						<div>
							<p style="font-weight:bold; color:#343a40;"> - 맡은업무</p>
							<p>예약 시스템 중복 시간관리</p>
							<p>서울시 조직도(API)를 통한 담당 소개</p>
							<p>데이터 엑셀 다운로드 구현</p>
							<p>문자전송 알림시스템(서울시 문자전송 시스템)</p>
							<p>메일전송 알림시스템</p>
							<p>신규컨텐츠 구축(CMS/FRONT)</p>
						</div>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">May 2017 - Present</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0" style="margin-bottom:1rem !important">포스트미디어 홈페이지</h3>
						<div class="subheading mb-3">개발</div>
						<div>
							<p style="font-weight:bold; color:#343a40;"> - 개발환경</p>
							<p>
								java 1.8 / egovFramewokr 3.5 / Spring 4.0.9 / Tomcat7(실서버 CentOs) / MySql 5.7 / Eclipse / Mybatis / Maven
							</p>					
						</div>
						<div>
							<p style="font-weight:bold; color:#343a40;"> - 맡은업무</p>
							<p>네이버 지도(API)를 사용하여 Map에 표기</p>
							<p>게시판 형태 출력</p>
							<p>퍼블리싱을 통해 화면작업(url경로 페이지 호출 시 DispatcherServlet을 통해 Controller에서 페이지 호출)</p>
							<p>게시판 형식의 화면을 페이징이 아닌 Ajax를 사용하여 더보기 형식 구현</p>
							<p>CMS부분 스크립트 처리로 화면 동적컨트롤 후 파일 업로드 구현</p>
							<p>데이터 DB화로 CMS-FRONT간 연계</p>
						</div>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary"> March 2018 - July 2018</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0" style="margin-bottom:1rem !important">문화재 오픈 API</h3>
						<div class="subheading mb-3">자체 개발</div>
						<div>
							<p style="font-weight:bold; color:#343a40;"> - 개발환경</p>
							<p>
								java 1.8 / egovFramewokr 2.7 / Spring 3.0.5 / Tomcat7 / MySql 5.7 / Eclipse / ibatis / Maven
							</p>					
						</div>
						<div>
							<p style="font-weight:bold; color:#343a40;"> - 맡은업무</p>
							<p>API(향토문화전자대전, 한국관광공사, 문화재청)을 가져와 타임슬립을 이용해 데이터 송수신</p>
							<p>데이터 xml형식을 Jsonp로 파싱 후 DB에 등록</p>
						</div>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">October 2017 - November 2017</span>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row">
					<div class="resume-content mr-auto">
						<h3 class="mb-0" style="margin-bottom:1rem !important">종합 포트폴리오(개인)</h3>
						<div class="subheading mb-3">자체 개발</div>
						<div>
							<p style="font-weight:bold; color:#343a40;"> - 개발환경</p>
							<p>
								java 1.8 / Spring 4.3.12 / Tomcat7(실서버 Docker) / MySql 5.7 / STS / Mybatis / Maven /
							</p>					
						</div>
						<div>
							<p style="font-weight:bold; color:#343a40;"> - 주요업무</p>
							<p>날씨(API)를 가져와 기온 별 노출 및 동적 컨트롤</p>
							<p>지도의 좌표값(API)을 가져와 주소검색 및 동적 컨트롤</p>
							<p>프로그래밍 언어 및 툴의 Progress-bar 진행상황 컨트롤</p>
							<p>메일 전송 기능</p>
							<p>카카오톡(API) 친구추가</p>
						</div>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">September 2018 - Present</span>
					</div>
				</div>

			</div>

		</section>

		<hr class="m-0">



		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="skills">
			<div class="my-auto">
				<h2 class="mb-5">Skills</h2>
				<div class="subheading mb-3">Programming Languages &amp; Tools</div>
				<ul class="list-inline dev-icons">
					<li class="list-inline-item" onclick="javascript:eventSkill('java');"><i class="fab fa-java"></i></li>
<%-- 					<li class="list-inline-item" onclick="javascript:eventSkill('java');"><img src="${pageContext.request.contextPath}/resources/images/springicon.png" style="width:45px; height:50px; margin-bottom:5px;" onMouseOver="this.style.color='#BD5D38';"/></li> --%>
					<li class="list-inline-item" onclick="javascript:eventSkill('database');"><i class="fas fa-database"></i></li>
					<li class="list-inline-item" onclick="javascript:eventSkill('js');"><i class="fab fa-js"></i></li>
					<li class="list-inline-item" onclick="javascript:eventSkill('html');"><i class="fab fa-html5"></i></li>
					<li class="list-inline-item" onclick="javascript:eventSkill('git');"><i class="fab fa-git"></i></li>
					<li class="list-inline-item" onclick="javascript:eventSkill('docker');"><i class="fab fa-docker"></i></li>
<!-- 					<li class="list-inline-item"><i class="fab fa-node-js"></i></li> -->
				</ul>
				<div class="progress" style="margin-bottom:1rem; width:60%;">
					<div class="progress-bar progress-bar-striped active"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
					</div>
				</div>
			</div>
			
			<div id="map" style="width:100%;height:400px;">
				<div class="search">
					<input id="address" type="text" placeholder="검색할 주소" value="" />
					<input id="submit" type="button" />
				</div>
			</div>
		</section>

		<hr class="m-0">
		
		<%--
		<input type="text" id="message" />
	    <input type="button" id="sendBtn" value="전송" />
	    <div id="data"></div>
		--%>
		 
		<!-- Modal 시작 -->
		<div id="myModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content 시작-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="text-primary">메일발송</h4>
						<button type="button" class="close" data-dismiss="modal" style="cursor:pointer;">&times;</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12">
								<form name="emailForm" id="emailForm" method="post" action="" role="form" class="form-horizontal">
									<div class="form-group">
										<label class="col-md-3 control-label" for="email">Your E-mail</label>
										<div class="col-md-9" style="max-width:100%;">
											<input id="email" name="email" type="text" placeholder="Your email" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="name">Your Name</label>
										<div class="col-md-9" style="max-width:100%;">
											<input id="name" name="name" type="text" placeholder="Name" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="subject">subject</label>
										<div class="col-md-9" style="max-width:100%;">
											<input id="subject" name="subject" type="text" placeholder="Subject" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="contents" style="max-width:100%">Your message</label>
										<div class="col-md-9" style="max-width:100%;">
											<textarea class="form-control" id="contents" name="contents" placeholder="Please enter your message here..." rows="5"></textarea>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12 text-right">
											<button type="button" class="btn btn-primary btn-lg" onclick="javascript:sendEmail();">Submit</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
				<!-- Modal content 끝-->
			</div>
		</div>
		<!-- Modal 끝-->
		
		<!-- 메세지 성공 Modal 시작 -->
		<div id="myModalMessage" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content 시작-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="text-primary">MESSAGE</h4>
						<button type="button" class="close" data-dismiss="modal" style="cursor:pointer;">&times;</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12">
								메일을 발송하였습니다.
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
				<!-- Modal content 끝-->
			</div>
		</div>
		<!-- 메세지 성공 Modal 끝-->
		
		<%--일시주석 / 20180914 / lee
		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="interests">
			<div class="my-auto">
				<h2 class="mb-5">Interests</h2>
				<p>Apart from being a web developer, I enjoy most of my time
					being outdoors. In the winter, I am an avid skier and novice ice
					climber. During the warmer months here in Colorado, I enjoy
					mountain biking, free climbing, and kayaking.</p>
				<p class="mb-0">When forced indoors, I follow a number of sci-fi
					and fantasy genre movies and television shows, I am an aspiring
					chef, and I spend a large amount of my free time exploring the
					latest technology advancements in the front-end web development
					world.</p>
			</div>
		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="awards">
			<div class="my-auto">
				<h2 class="mb-5">Awards &amp; Certifications</h2>
				<ul class="fa-ul mb-0">
					<li><i class="fa-li fa fa-trophy text-warning"></i> Google
						Analytics Certified Developer</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> Mobile Web
						Specialist - Google Certification</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 1<sup>st</sup>
						Place - University of Colorado Boulder - Emerging Tech Competition
						2009</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 1<sup>st</sup>
						Place - University of Colorado Boulder - Adobe Creative Jam 2008
						(UI Design Category)</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 2<sup>nd</sup>
						Place - University of Colorado Boulder - Emerging Tech Competition
						2008</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 1<sup>st</sup>
						Place - James Buchanan High School - Hackathon 2006</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 3<sup>rd</sup>
						Place - James Buchanan High School - Hackathon 2005</li>
				</ul>
			</div>
		</section>
		--%>
	</div>
	
	<div id="spinner" class="hide">
<!-- 		<img src="http://chittagongit.com//images/ajax-loading-icon/ajax-loading-icon-13.jpg"> -->
		<img src="${pageContext.request.contextPath}/resources/images/spinner.jpg">
	</div>
	
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.bundle.min.js"></script>
	<!-- Plugin JavaScript -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.min.js"></script>
	<!-- Custom scripts for this template -->
	<script src="${pageContext.request.contextPath}/resources/js/resume.min.js"></script>
	<!-- WebSocket -->
	<script src="${pageContext.request.contextPath}/resources/js/socketjs-0.3.4.js"></script>
	
	<!-- 네이버 지도 -->
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=HwGjgOkNdZuaBdEuYK6g&submodules=geocoder"></script>

	<!-- 카카오톡친구추가 api -->
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

	<script type="text/javascript">

		$(document).ajaxStart(function() {
			spinnerStart();
		}).ajaxStop(function() {
			setTimeout("spinnerEnd()", 300); // 1000 = 1초
		});

		function spinnerStart() {
			$('#spinner').show();
		}
		function spinnerEnd() {
			$('#spinner').hide();
		}

		$(document)
				.ready(
						function() {
							
							$('#spinner').hide();
							
							var map = new naver.maps.Map("map", {
								center : new naver.maps.LatLng(37.5666103,
										126.9783882),
								zoom : 9,
								mapTypeControl : true
							}), infoWindow = null;

							function initGeocoder() {
								var latlng = map.getCenter();
								var utmk = naver.maps.TransCoord
										.fromLatLngToUTMK(latlng); // 위/경도 -> UTMK
								//var naverCoord = naver.maps.TransCoord.fromTM128ToNaver(tm128); // TM128 -> NAVER

								infoWindow = new naver.maps.InfoWindow({
									anchorSkew : true,
									content : ''
								});

								map
										.addListener(
												'click',
												function(e) {
													var latlng = e.coord;
													var lat = latlng._lat;
													var lng = latlng._lng;

													searchCoordinateToAddress(e.coord);

													infoWindow
															.setContent([
																	'<div style="padding:10px;min-width:380px;min-height:85px;font-size:14px;line-height:20px; display:inline-block;">',
																	'<div id="weather" style="display:inline-block; float:right; /*border-right:1px solid #d8d8d8;*/">',
																	'<img src=""/>',
																	'<p style="font-size:45px; color:#6c00ff; margin:1rem 0 0 5px; float:right; margin-right:1rem;"></p>',
																	'</div>',
																	'<div id="addr" style="display:inline-block; float:left;">',
																	'</div>',
																	'</div>' ]
																	.join(''));

													infoWindow
															.open(map, latlng);
													showWeatherInfo(lat, lng);

												});

								$('#address').on(
										'keydown',
										function(e) {
											var keyCode = e.which;

											if (keyCode === 13) { // Enter Key
												searchAddressToCoordinate($(
														'#address').val());
											}
										});

								$('#submit').on(
										'click',
										function(e) {
											e.preventDefault();

											searchAddressToCoordinate($(
													'#address').val());
										});
							}

							naver.maps.onJSContentLoaded = initGeocoder;
						});

		//채팅>버튼클릭 시 이벤트
	    $("#sendBtn").click(function() {
			console.log("=== lee / 진입");
            sendMessage();
        });
		
		//소켓
		var sock;
	    //웸소켓을 지정한 url로 연결한다.
	    sock = new SockJS("<c:url value="/echo"/>");
	    
	    console.log("=== lee / sock : " + JSON.stringify(sock));
	    
	    //자바스크립트 안에 function을 집어넣을 수 있음.
	    sock.onmessage = onMessage;
	    //데이터를 끊고싶을때 실행하는 메소드
	    sock.onclose = onClose;
	    
	    function sendMessage() {
	    	console.log("=== lee / 01 ");
	        /*소켓으로 보내겠다.  */
	        sock.send($("#message").val());
	    }
	    //evt 파라미터는 웹소켓을 보내준 데이터다.(자동으로 들어옴)
	    function onMessage(evt) {
	    	console.log("=== lee / 02 ");
	        var data 		= evt.data;
	        var sessionId 	= null;
	        var message 	= null;
	        
	        //문자열 split
	        var strArray = data.spli('|');
	        
	        for(var i = 0; i<strArray.length; i++){
	        	console.log("str[" + i + "]:" + strArray[i]);
	        }
	        
	        sessionId 	= strArray[0];
	        message 	= strArray[1];
	        
	        var printHtml = "<div class='chat'>";
	        printHtml += "<strong>[" + sessionId + "] ->" + message + "</strong>";
	        printHtml += "</div>";
	        
	        $("#data").append(printHtml);
	        
	    }
	    function onClose(evt) {
	    	console.log("=== lee / 03 ");
	        $("#data").append("연결 끊김");
	    }

		//지도>위경도>주소
		function searchCoordinateToAddress(latlng) {
			var tm128 = naver.maps.TransCoord.fromLatLngToTM128(latlng);

			naver.maps.Service
					.reverseGeocode(
							{
								location : tm128,
								coordType : naver.maps.Service.CoordType.TM128
							},
							function(status, response) {
								if (status === naver.maps.Service.Status.ERROR) {
									return alert('지원하지 않는 좌표위치입니다.');
								}

								var items = response.result.items, htmlAddresses = [];

								for (var i = 0, ii = items.length, item, addrType; i < ii; i++) {
									item = items[i];
									addrType = item.isRoadAddress ? '[도로명 주소]'
											: '[지번 주소]';

									htmlAddresses.push((i + 1) + '. '
											+ addrType + ' ' + item.address);
								}
								$("div#map div#addr").append(
										'<h6 style="margin-top:3px;">검색 좌표</h6>'
												+ htmlAddresses.join('<br />'));
							});
		}

		//지도>검색>위경도>주소
		function searchAddressToCoordinate(address) {
			naver.maps.Service
					.geocode(
							{
								address : address
							},
							function(status, response) {
								if (status === naver.maps.Service.Status.ERROR) {
									return alert('지원하지 않는 좌표위치입니다.');
								}

								var item = response.result.items[0], addrType = item.isRoadAddress ? '[도로명 주소]'
										: '[지번 주소]', point = new naver.maps.Point(
										item.point.x, item.point.y);

								$("div#map div#addr").append(
										'<h4 style="margin-top:5px;">검색 주소 : '
												+ response.result.userquery
												+ '</h4>' + addrType + ' '
												+ item.address + '<br />');

								/*    
								infoWindow.setContent([
								    '<div style="padding:10px;min-width:200px;line-height:150%;">',
								    '<h4 style="margin-top:5px;">검색 주소 : '+ response.result.userquery +'</h4><br />',
								    addrType +' '+ item.address +'<br />',
								    '</div>'
								].join('\n'));


								map.setCenter(point);
								infoWindow.open(map, point);
								 */
							});
		}

		//지도>위경도>날씨조회
		function showWeatherInfo(lat, lng) {
			var url = "http://api.openweathermap.org/data/2.5/weather";
			var apiKey = "f7262676ef58c224c0f79b2dc318490b";
			var requestParam = "?appid=" + encodeURI(apiKey);
			requestParam += "&lat=" + lat;
			requestParam += "&lon=" + lng;

			$.ajax({
				url : url + requestParam,
				dataType : "json",
				success : function(data) {
					console.log("=== lee / successdata : "
							+ JSON.stringify(data));
					weatherData(data);
				},
				error : function(data) {
					console
							.log("=== lee / errorData : "
									+ JSON.stringify(data));
				}
			});
		}

		//날씨조회>성공데이터
		function weatherData(data) {
			var imgUrl;
			var celSius = (data.main.temp - 273.15).toString(); //온도(섭씨)
			var idx = celSius.indexOf(".");

			if (idx > 0) {
				celSius = celSius.substring(0, idx);
			}

			if (data.weather.length > 0) {
				for (var i = 0; i < data.weather.length; i++) {
					imgUrl = data.weather[i].main;
				}
			}
			console.log("=== lee / imgUrl :" + imgUrl);
			if (imgUrl == 'Clouds') {
				$("div#map div#weather img")
						.attr("src","${pageContext.request.contextPath}/resources/images/weather/cloud.png");
			} else if (imgUrl == 'Clear') {
				$("div#map div#weather img")
						.attr("src",
								"${pageContext.request.contextPath}/resources/images/weather/sunny.png");
			} else if (imgUrl == 'Rain') {
				$("div#map div#weather img")
						.attr("src",
								"${pageContext.request.contextPath}/resources/images/weather/rainy.png");
			} else if (imgUrl == 'Mist' || imgUrl == 'Haze') {
				$("div#map div#weather img")
						.attr("src","${pageContext.request.contextPath}/resources/images/weather/littlecloud.png");
			}

			$("div#map div#weather p").html(
					celSius + '<i class="wi wi-celsius"></i>');
		}

		//skill>아이콘클릭>progressbar진행상황알림
		function eventSkill(Param) {
			console.log("=== lee / param : " + Param);
			if (Param == 'java') {
				$("div.progress div.progress-bar.progress-bar-striped.active").css("width", "50%");
				$("div.progress div.progress-bar.progress-bar-striped.active").text("50%");
			} else if (Param == 'database') {
				$("div.progress div.progress-bar.progress-bar-striped.active").css("width", "45%");
				$("div.progress div.progress-bar.progress-bar-striped.active").text("45%");
			} else if (Param == 'js') {
				$("div.progress div.progress-bar.progress-bar-striped.active").css("width", "55%");
				$("div.progress div.progress-bar.progress-bar-striped.active").text("55%");
			} else if (Param == 'html'){
				$("div.progress div.progress-bar.progress-bar-striped.active").css("width", "50%");
				$("div.progress div.progress-bar.progress-bar-striped.active").text("50%");
			} else if (Param == 'git') {
				$("div.progress div.progress-bar.progress-bar-striped.active").css("width", "40%");
				$("div.progress div.progress-bar.progress-bar-striped.active").text("40%");
			} else if (Param == 'docker') {
				$("div.progress div.progress-bar.progress-bar-striped.active").css("width", "35%");
				$("div.progress div.progress-bar.progress-bar-striped.active").text("35%");
			}

		}

		//이메일>발송로직
		function sendEmail() {

			var emailForm = $("div#myModal form[name=emailForm]").serialize();

			if ($("form#emailForm input#email").val() == '') {
				alert("이메일을 입력해주세요");
				return false;
			} else if ($("form#emailForm input#name").val() == '') {
				alert("이름을 입력해주세요");
				return false;
			} else {
				$.ajax({
					url : '/main/SendEmail.do',
					type : 'post',
					data : emailForm,
					success : function(data) {
						$('div#myModalMessage').modal('show'); 	//메일 발송완료 modal
						$('div#myModal').modal('hide');			//메일 발송 후 modal 숨김
					},
					error : function(data) {
						alert("메일 발송에 실패하였습니다. 메일주소가 맞는지 명확히 기입바랍니다.");
					}
				});
				//메일 발송중 alert
				$('div#myModal').css('display','none');
				
			}
		}
		
		//전화>카카오톡친구추가
		Kakao.init('28a7f7d4a00026af2fd6648e5260dce5');
		function addPlusFriend(){
			Kakao.PlusFriend.chat({
				plusFriendId : '_xmPFVj' // 플러스친구 홈 URL에 명시된 id로 설정합니다.
			});
		}
	</script>

</body>

</html>
