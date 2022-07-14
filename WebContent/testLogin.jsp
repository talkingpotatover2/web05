<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
	String id = "pinksung";
	String pwd = "1234";
	String name = "성윤정";
	
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
		Cookie cookie = new Cookie("username", URLEncoder.encode(name,"UTF-8"));
		cookie.setMaxAge(60*60);
		response.addCookie(cookie);
%>
		<h2>성공적으로 로그인하셨습니다.</h2>
		<p><a href="main.jsp">들어가기</a></p>
<% }else{ %>
		<h2>로그인에 실패했습니다.</h2>
		<p><a href="loginForm.jsp">되돌아가기</a></p>
<% } %>