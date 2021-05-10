<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>scriptlet</p>
<%
// scriptlet
%>

<p>declaration 선언부</p>
<%!
//declaration 선언부 : 
private int add(int a, int b) {
	return a+b;
}
%>

</body>
</html>