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
<c:if test="true">
<h1> test가 true일때만 출력</h1>
 </c:if>
 <c:if test="false">
<h1> test가 true일때만 출력</h1>
 </c:if>
</div>


</body>
</html>