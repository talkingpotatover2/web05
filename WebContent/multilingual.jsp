<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String language = "korean";
	String cookie = request.getHeader("Cookie");
	
	if(cookie != null){
		Cookie cookies[] = request.getCookies();
		
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("language")){
				language = cookies[i].getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(language.equals("korean")){%>
		<h3>안녕하세요. 이것은 쿠키 예제입니다.</h3>
	<%}else{ %>
		<h3>Hello. This is Cookie example.</h3>
	<%} %>
	<form method="post" action="multilingualPro.jsp">
		<input type="radio" name="language" value="korean"
		 <%if(language.equals("korean")){%>
		 	checked
		 <%}%>
		>한국어 페이지 보기
		<input type="radio" name="language" value="english"
		 <%if(language.equals("english")){%>
		 	checked
		 <%}%>
		>영어 페이지 보기
		<input type="submit" value="설정">
	</form>
</body>
</html>