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
<style type="text/css">
	/*
	table#testTable01{
		border : 1px solid #444444;
 		width : 100%; 
	}
	*/
	table#testTable01 col:nth-child(1){width: 5%;}
	table#testTable01 col:nth-child(2){width: 15%;}
	table#testTable01 col:nth-child(3){width: 15%;}
	table#testTable01 col:nth-child(4){width: 20%;}
	table#testTable01 col:nth-child(5){width: 20%;}
	table#testTable01 col:nth-child(6){width: 5%;}
	
	/*
	th, td {
		border : 1px solid #444444;
	}
	*/
</style>
</head>
<body>
	<form name="searchForm" method="post" onsubmit="return formValidation();">
		<div style="margin-bottom:1rem;">
			<input type="text" name="searchKeyword"/>
			<input type="hidden" name="userSeq" />
			<input class="btn btn-default" type="button" value="전송" onclick="javascript:searchUser();">
		</div>
	</form>

	<div class="table-responsive">
		<table id="testTable01" class="table table-bordered">
			<colgroup>
				<col/>
				<col/>
				<col/>
				<col/>
				<col/>
				<col/>
			</colgroup>
			<thead>
				<tr>
					<th>순번</th>
					<th>아이디</th>
					<th>이름</th>
					<th>이메일</th>
					<th>전화번호</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<tr style="display:none;">
					<td></td>
					<td><a href="javascript:selectUser();"></a></td>
					<td></td>
					<td></td>
					<td></td>
					<td><input type="button" value="삭제" onclick="deleteUser();"/></td>
				</tr>
	
				<%--
				<c:forEach var="result" items="${userList}">
					<tr id="user_${result.userSeq}">
						<td>${result.rn}</td>
						<td><a href="javascript:selectUser('${result.userSeq}');">${result.userId}</a></td>
						<td>${result.userName}</td>
						<td>${result.userEmail}</td>
						<td>${result.userTel}</td>
						<td><input type="button" value="삭제" onclick="deleteUser('${result.userSeq}');"/></td>
					</tr>
				</c:forEach>
				--%>
			</tbody>
		</table>
	</div>


	<!-- Modal창 시작 -->
	<h2>회원등록 및 수정</h2>
	<!-- Trigger the modal with a button -->
	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">회원등록및수정</button>

	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<form name="userManagerVO" method="post">
				<input type="hidden" name="userSeq"/>
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Modal Header</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="userId">Id:</label>
							<input type="text" class="form-control" name="userId" id="userId" placeholder="아이디를 입력하세요.">
						</div>
						<div class="form-group">
							<label for="userPwd">PassWord:</label>
							<input type="text" class="form-control" name="userPwd" id="userPwd" placeholder="비밀번호를 입력하세요.">
						</div>
						<div class="form-group">
							<label for="userName">Name:</label>
							<input type="text" class="form-control" name="userName" id="userName" placeholder="이름을 입력하세요.">
						</div>
						<div class="form-group">
							<label for="userAge">Age:</label>
							<input type="text" class="form-control" name="userAge" id="userAge" placeholder="나이를 입력하세요.">
						</div>
						<div class="radio">
						 	<label><input type="radio" name="userSex" value="M">남</label>
						 	&nbsp;
						 	<label><input type="radio" name="userSex" value="F">여</label>
						</div>
						<div class="form-group">
							<label for="userEmail">Email:</label>
							<input type="text" class="form-control" name="userEmail" id="userEmail" placeholder="이메일을 입력하세요.">
						</div>
						<div class="form-group">
							<label for="userTel">Tel:</label>
							<input type="text" class="form-control" name="userTel" id="userTel" placeholder="전화번호를 입력하세요.">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" style="margin-right:5px;" onclick="javascript:userSubmit();">Submit</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- Modal창 끝 -->

	<!-- Bootstrap core JavaScript -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.bundle.min.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		if(!('${resultStr}' == null || '${resultStr}' == "")){
			if('${resultStr}' == 'success'){
				alert('가입에 성공하셨습니다.');
			}else{
				alert('가입에 실패하셨습니다.');
			}
		}
		
		searchUser();
		formValidation();
	});
	
	//비동기>검색
	function searchUser(){
		var url	 = "/test/ajaxUserList.do";
		var data = $("form[name=searchForm]").serialize(); 
		$.ajax({
            type : "post",
            dataType : "json",
            url : url,
            data : data,
            success:function(data){
				selectListsuccessFunction(data);
			},
            error:function(data){
            	console.log("=== lee / 실패");
			}

      });
	}
	
	//비동기>검색>성공
	function selectListsuccessFunction(data)
	{
		var target = $("table#testTable01 tbody");
		target.find("tr:gt(0)").remove();
		
		$("form[searchForm] input[name=searchKeyword]").val(data.searchKeyword);
		$(data.userList).each(function(index, element){
			var cloneTr = target.find("tr:eq(0)").clone();
			cloneTr.find("td:eq(0)").text(element.rn);
			cloneTr.find("td:eq(1)").text(element.userId);
			cloneTr.find("td:eq(2)").text(element.userName);
			cloneTr.find("td:eq(3)").text(element.userEmail);
			cloneTr.find("td:eq(4)").text(element.userTel);
			cloneTr.find("td:eq(5) > input").attr("onclick", "deleteUser('"+element.userSeq+"');");
			
			cloneTr.css("display", "");
			target.append(cloneTr);
		});
		
	}

	//비동기>회원조회
	function selectUser(param){
		var url	 = "/test/selectUser.do";
		var data = {"userSeq":param}; 
		
		$.ajax({
            type : "post",
            dataType : "json",
            url : url,
            data : data,
            success:function(data){
				selectsuccessFunction(data);
			},
            error:function(data){
            	console.log("=== lee / 실패");
			}

      	});
	}
	
	//비동기>조회>성공
	function selectsuccessFunction(data){
		var targetForm = $("form[name=userManagerVO]");
		$("button.btn.btn-info.btn-lg").trigger("click");
		
		targetForm.find("input[name=userSeq]").val(data.userSeq);												//유저 시퀀스번호
		targetForm.find("input[name=userId]").val(data.userId);													//유저 아이디
		targetForm.find("input[name=userPwd]").val(data.userPwd);												//유저 비밀번호
		targetForm.find("input[name=userName]").val(data.userName);												//유저 이름
		targetForm.find("input[name=userAge]").val(data.userAge);												//유저 나이
		targetForm.find("input:radio[name=userSex]:input[value="+ data.userSex +"]").attr("checked", true)		//유저 성별
		targetForm.find("input[name=userEmail]").val(data.userEmail);											//유저 이메일
		targetForm.find("input[name=userTel]").val(data.userTel);												//유저 전화번호
	}
	
	//회원등록및수정
	function userSubmit(){
		var targetForm 	= $("form[name=userManagerVO]");
		var checkSeq = targetForm.find("input[name=userSeq]").val();
		if(checkSeq == null || checkSeq == ""){
			if(confirm("등록하시겠습니까?")){
				if(targetForm.find("input[name=userId]").val() == null || targetForm.find("input[name=userId]").val() == ""){
					alert("유저 아이디명은 필수입니다.");
					return false;
				}else if(targetForm.find("input[name=userName]").val() == null || targetForm.find("input[name=userName]").val() == ""){
					alert("유저 이름은 필수입니다.");
					return false;
				}else{
					targetForm.attr("action", "/test/insertUser.do");
					targetForm.submit();
				}
			}
		}else{
			if(confirm("수정하시겠습니까?")){
				targetForm.attr("action", "/test/updateUser.do");
				targetForm.submit();
			}
		}
	}
	
	//회원삭제
	function deleteUser(param){
		console.log("=== lee / param : " + param);
		var targetForm 	= $("form[name=searchForm]");
		targetForm.find("input[name=userSeq]").val(param);
		if(confirm("정말 삭제하시겠습니까?")){
			targetForm.attr("action", "/test/deleteUser.do");
			targetForm.submit();
		}
		
	}
	
	//form onsubmit check
	function formValidation(){
		var searchInput 	= $("form[name=searchForm] input[name=searchKeyword]").val(); 
		var userSeq 		= $("form[name=searchForm] input[name=userSeq]").val();
		if(((searchInput == null || searchInput == "") && (userSeq == null || userSeq == ""))){
			return false;
		}
		return true;
	}
	
	//keyEvent
	$("form[name=searchForm] input[name=searchKeyword]").keyup(function(event){
		console.log("=== lee / keyCode : " + event.keyCode);
		if(event.keyCode == 13){
			searchUser();
		}
	});
	
</script>


</body>
</html>