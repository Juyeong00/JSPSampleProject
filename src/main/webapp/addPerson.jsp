<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="navigation.jsp" %>
	
	<h1>신규 인원 추가하는 페이지</h1>
	
	<form action="addPerson_proc.jsp" method="post">
		<label>이름:</label><input type="text" name="name">
		
		<button type="submit">추가</button>
	</form>
</body>
</html>