<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet">
</head>
<body>	
	<div class="container">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-9">
					<h2>● API 연계 테스트</h2>
					<div class="row">
						<form name="apiListForm" method="post" style="width:100%">
							<table id="table01" class="table table-bordered">
								<thead>
									<tr>
										<th>#</th>
										<th>API 명</th>
										<th>시도 코드</th>
										<th>조회</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>문화재청</td>
										<td>
											<select class="form-control" name="ccbaCtcd">
											  	<option value="">--선택하세요--</option>
											  	<option value="11">서울</option>
											  	<option value="26">대전</option>
											  	<option value="22">대구</option>
											  	<option value="21">부산</option>
											  	<option value="36">전남</option>
											</select>
										</td>
										<td><input class="btn btn-default" type="button" value="조회"></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
					
					<div class="row">
						<table class="table table-hover" style="display:none;">
							<thead>
								<tr>
									<th></th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
			
		</div>
	</div>
<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script	src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.bundle.min.js"></script>

<script type="text/javascript">
	//비동기>문화재청>리스트조회
	$("table#table01 input.btn.btn-default").click(function(){
		var url = "/test/test04_apiList.do";
		var data = $("form[name=apiListForm]").serialize();
		
		$.ajax({
            type : "post",
            dataType : "json",
            url : url,
            data : data,
            success:function(data){
            	successListFunction(data);
			},
            error:function(data){
            	console.log("=== lee / 실패");
			}

      	});
	});
	
	//비동기>문화재청>리스트조회>성공
	function successListFunction(data){
		console.log("=== lee / data : " + JSON.stringify(data));
	}
</script>
</body>
</html>