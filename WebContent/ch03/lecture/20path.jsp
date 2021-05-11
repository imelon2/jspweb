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
<h5>같은 경로</h5>
<a href="<%=request.getContextPath() %>/ch03/lecture/15form-method.jsp">15파일</a>
<h5>상위 경로</h5>
<a href="<%=request.getContextPath() %>/ch03/lecture/17path.jsp">17파일</a>

<h5>하위 경로</h5>
<a href="<%=request.getContextPath() %>/ch03/lecture/sub/18path.jsp">18파일</a>

<h5>viewHEader.jsp</h5> <%--한칸 올라갔다가 다시 내려가야함 --%>
<a href="<%=request.getContextPath() %>/ch03/textbook/viewHeaderList.jsp">viewHeader.jsp</a>
</body>
</html>