<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="util.Cookies" %>
<%request.setCharacterEncoding("utf-8"); %>
<%
response.addCookie(Cookies.createCookie("AUTH","","/",0));
%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>로그아웃</title>
</head>
<body>
<div class="container">
로그아웃 합니다.
</div>


</body>
</html>