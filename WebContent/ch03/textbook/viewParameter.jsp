<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8");%> <%--�ѱ��� string�� ǥ�����ִ� --%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<b>request.getParameter() �޼ҵ� ���</b>
	<br> name �Ķ�̴� =
	<%= request.getParameter("name") %><br> address �Ķ���� =
	<%= request.getParameter("address") %>
	<p>
		<b>request.getParameterValues() �޼ҵ� ���</b><br>
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
<b>request.getParameterNames() �޼ҵ� ���</b><br>
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
	request.getParameterMap() �޼ҵ� ���</b><br>
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