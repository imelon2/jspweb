<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>context root (context path)</h1>
<p><%=request.getContextPath() %></p>
<h5>���� ���</h5>
<a href="<%=request.getContextPath() %>/ch03/lecture/15form-method.jsp">15����</a>
<h5>���� ���</h5>
<a href="<%=request.getContextPath() %>/ch03/lecture/17path.jsp">17����</a>

<h5>���� ���</h5>
<a href="<%=request.getContextPath() %>/ch03/lecture/sub/18path.jsp">18����</a>

<h5>viewHEader.jsp</h5> <%--��ĭ �ö󰬴ٰ� �ٽ� ���������� --%>
<a href="<%=request.getContextPath() %>/ch03/textbook/viewHeaderList.jsp">viewHeader.jsp</a>
</body>
</html>