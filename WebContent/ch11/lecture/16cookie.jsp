<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8"); %>


<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>
<div class="container">
	cookie1 value1 : ${cookie["my-cookie"].value }
	cookie httpOnly 1 : ${cookie["my-cookie"].httpOnly }<br>
	cookie httpOnly 2 : ${cookie.JSESSIONID.httpOnly } 
</div>


</body>
</html>