<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8");%> <%--한글을 string로 표현해주는 --%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<b>request.getParameter() 메소드 사용</b>
	<br> name 파라미더 =
	<%= request.getParameter("name") %><br> address 파라미터 =
	<%= request.getParameter("address") %>
	<p>
		<b>request.getParameterValues() 메소드 사용</b><br>
		<%
String[] values = request.getParameterValues("pet");
if(values!=null) {
for(int i = 0; i <values.length;i++ ) {
%>
		<%=values[i] %>
		<%
}
}
%>
</p>
<b>request.getParameterNames() 메소드 사용</b><br>
<%
Enumeration paramEnum = request.getParameterNames();
while(paramEnum.hasMoreElements()) {
	String name = (String)paramEnum.nextElement();
%>
	<%= name%>
	<%
}
	%>
	<p>
	<b>
	request.getParameterMap() 메소드 사용</b><br>
	<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	if(nameParam[0] !=null) {
		%>
	name = <%= nameParam[0] %>
	<%
	}
	%>
</body>
</html>