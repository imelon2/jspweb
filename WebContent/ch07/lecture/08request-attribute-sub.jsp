<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch07.User"%>

<%
User member =(User) request.getAttribute("member"); //코드 수정할것

%>



<div>
	이름 : <%=member.gerName() %><br>
	나이 : <%= member.getAge() %><br>
	주소 : <%= member.getAggress() %>


</div>