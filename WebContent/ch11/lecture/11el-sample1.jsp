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
	<form action="11el-sample2.jsp" method="post">
		이름 :	<input type="text" name="name">
		나이 : <input type="number" name="age">
		이메일 : <input type="text" name="email">
	<input type="submit" value="제출">
	</form>
</div>


</body>
</html>