<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<%
	pageContext.setAttribute("pageAttr1", "pageVal1");
request.setAttribute("requestAttr1", "requestVal1");
session.setAttribute("sesAttr1", "sesVal1");

%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<%
			out.print(pageContext.getAttribute("pageAttr1"));
		%><br> ${pageAttr1 }
		<hr>
		<%
			out.print(pageContext.getAttribute("requestAttr1"));
		%><br> ${requestAttr1  }

		<hr>

		<%=session.getAttribute("sesAttr1")%>
		<br> ${sesAttr1 }

	</div>


</body>
</html>