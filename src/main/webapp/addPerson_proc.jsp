<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.dao.PersonInfoDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8"); //문자인코딩 설정
	String name = request.getParameter("name");
	System.out.println(name);
	
	PersonInfoDAO personInfoDAO = new PersonInfoDAO();
	
	int result = personInfoDAO.savePersonInfo(name);
	//int result = 0;
	
	if(result > 0){
	%>
	<script>
		alert('저장 성공');
		location.href = 'index.jsp'; //해당 경로로 페이지 이동
	</script>
	<%
	}else{
	%>
	<script>
		alert('저장 실패');
		//location.href = 'addPerson.jsp'; //해당 경로로 이동
		history.back(); //뒤로가기
	</script>
	<%	
	}
	%>
	
	
</body>
</html>