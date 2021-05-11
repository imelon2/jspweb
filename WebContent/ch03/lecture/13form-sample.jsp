<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="container">

		<form>
				<input type="checkbox"name="fruit" value="100">사과<br>
			  	<input type="checkbox"name="fruit" value="150">바나나<br>
				<input type="checkbox"name="fruit" value="200">딸기<br>
				<input type="checkbox"name="fruit" value="300">키위<br>
				<input type="checkbox"name="fruit" value="500">망고<br> 
				<input type="checkbox"name="fruit" value="700">수박<br>
				
			<input type="submit" value="합계">
		</form>
	</div>
	<hr>
	<div class="container">
	<% String[] fruits = request.getParameterValues("fruit");
				int[] num = null;
				int sum = 0;
				if (fruits != null&& fruits.length>0) {
				num = new int[fruits.length];
			for(int i = 0; i <fruits.length; i++) {		
					num[i] = Integer.parseInt(fruits[i]); //valueOf도 가능
					sum+= num[i];
						}
					}
					%>
	
	<!-- 이 위치에 출력되도록 -->
	합계 : <%= sum %>
	</div>
</body>
</html>