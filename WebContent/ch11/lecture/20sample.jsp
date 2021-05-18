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

</div>
	<form action="">
		수1 : <input type="text" name="a" />
		수2 : <input type="text" name="b" />
	<input type="submit" value="계산"/>
	</form>

<hr>
더한 결과 : ${param.a + param.b } <br>
뺀 결과 : ${param.a - param.b } <br>
곱한 결과 : ${param.a * param.b } <br>
나누기 결과 : ${param.a / param.b } <br>
</body>
</html>