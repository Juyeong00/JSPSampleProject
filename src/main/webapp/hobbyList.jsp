<%@page import="db.dao.HobbyDAO"%>
<%@page import="db.dto.HobbyDTO"%>
<%@page import="java.util.List"%>
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

	<%
	HobbyDAO hobbyListDAO = new HobbyDAO();

			List<HobbyDTO> hobbyList = hobbyListDAO.findHobbyList();
	%>

	<h1>취미목록</h1>
	
	<table>
		<tr>
			<th>아이디</th>
			<th>순번</th>
			<th>취미</th>
			<th>선호도</th>
		</tr>

		<%
		//if(hobbyList != null)
		for (HobbyDTO hobbyInfo : hobbyList) {
		%>

		<tr>
			<td><%=hobbyInfo.getId()%></td>
			<td><%=hobbyInfo.getNo()%></td>
			<td><%=hobbyInfo.getHobby()%></td>
			<td><%=hobbyInfo.getPrefer()%></td>
		</tr>

		<%
		}
		%>
	</table>
</body>
</html>