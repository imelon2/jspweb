<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>form</h1>
	<form>
		<input name="q" type="text"> 
		<input name="age" type="text"> 
		<input type="submit" value="Send">
	</form>
	<hr>
	
	<p><%=request.getParameter("q")%></p>

</body>
</html>