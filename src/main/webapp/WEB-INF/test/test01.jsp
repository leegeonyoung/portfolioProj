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
</head>
<body>	
	<form action="/test/test01.do" method="post">
		<input type="text" name="checkNo">
		<table id="testTable" border="1" width="100%">
			<tr>
				<td><input type="checkbox" name="seq" value="1">aaaaa</td>
				<td>bbbbb</td>
				<td>ccccc</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="seq" value="2">aaaaa</td>
				<td>bbbbb</td>
				<td>ccccc</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="seq" value="3">aaaaa</td>
				<td>bbbbb</td>
				<td>ccccc</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="seq" value="4">aaaaa</td>
				<td>bbbbb</td>
				<td>ccccc</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="seq" value="5">aaaaa</td>
				<td>bbbbb</td>
				<td>ccccc</td>
			</tr>
		</table>
		<button onclick="javascript:testSubmit();">전송</button>
	</form>

<script type="text/javascript">
	$(document).ready(function() {
		if (!("${checkNo}" == null || "${checkNo}" == "")) {
			var checkNo = "${checkNo}";
			var arrCheckNo = checkNo.split(",");

			for (var i = 0; i < arrCheckNo.length; i++) {
				$("input[name=seq]:input[value='" + arrCheckNo[i] + "']").prop("checked", true);
			}
		}
	});

	function testSubmit() {
		var value = "";
		$("input[name=seq]").each(function() {
			if ($(this).prop("checked") == true) {
				value += $(this).val() + ",";
			}
		});
		if (value.length > 0) {
			value = value.substring(0, value.length - 1);
		}
		$("input[name=checkNo]").val(value);
		$("form").submit();
	}
</script>
</body>
</html>