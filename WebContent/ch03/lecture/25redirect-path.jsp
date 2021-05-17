<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8"); %>

<%
/* response.sendRedirect("25redirect-path1.jsp"); */
response.sendRedirect(request.getContextPath() + "/ch03/lecture/25redirect-path1.jsp");
%>