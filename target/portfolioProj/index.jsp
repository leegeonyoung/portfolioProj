<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 사용자 메인 인덱스 -->
<script type="text/javascript">
var isMobile = false;
var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');
for (var word in mobileKeyWords){
   if (navigator.userAgent.indexOf(mobileKeyWords[word]) > 0){
    	isMobile = true;
        break;
    }
}

if(isMobile){
 	location.href="/main/index.do"; //  모바일
} else {
	location.href="/main/index.do"; //  홈페이지
}

</script>
</body>
</html>