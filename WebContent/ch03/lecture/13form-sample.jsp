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
				<input type="checkbox"name="fruit" value="100">���<br>
			  	<input type="checkbox"name="fruit" value="150">�ٳ���<br>
				<input type="checkbox"name="fruit" value="200">����<br>
				<input type="checkbox"name="fruit" value="300">Ű��<br>
				<input type="checkbox"name="fruit" value="500">����<br> 
				<input type="checkbox"name="fruit" value="700">����<br>
				
			<input type="submit" value="�հ�">
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
					num[i] = Integer.parseInt(fruits[i]); //valueOf�� ����
					sum+= num[i];
						}
					}
					%>
	
	<!-- �� ��ġ�� ��µǵ��� -->
	�հ� : <%= sum %>
	</div>
</body>
</html>