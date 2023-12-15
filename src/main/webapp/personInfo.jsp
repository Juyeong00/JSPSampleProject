<%@ page import="db.dto.PersonInfoDTO"%>
<%@ page import="db.dao.PersonInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//index.jsp 페이지에서 선택한 사람의!! 정보가 필요하다 !!!
		// 그 사람의 select 할려면 "누굴 선택했는가?" id 가 필요!
		String id = request.getParameter("id");  //personInfo.jsp
		System.out.println(id);
		int intId = 0;
		try {
			intId = Integer.parseInt(id); //예외
		} catch (Exception e) {
			e.printStackTrace(); //예외 발생 기록
			intId = 0;
		}

		PersonInfoDAO personInfoDAO = new PersonInfoDAO();
		PersonInfoDTO personInfo = personInfoDAO.findPersonInfoById(intId);
	%>

	<%@ include file="navigation.jsp"%>
	<h1>사람 상세 정보 페이지</h1>
	<%
	if(personInfo == null){
	%>
	<!--<h2>해당 사용자 정보가 없습니다.</h2>  -->
	<script>
		alert('잘못된 접근입니다.');
		location.href="index.jsp";
		</script>
	<%
	}else{
	%>

	<h2>
		이 사람의 아이디는
		<%=personInfo.getId() %></h2>
	<h3>
		이 사람의 이름은
		<%=personInfo.getName() %></h3>

	<form id="personForm" action="deletePerson_proc.jsp" method="post">
		<input type="hidden" name="id" value="<%=personInfo.getId() %>">
		<label>이름:</label><input type="text" id="input_name" name="name"
			value="<%=personInfo.getName() %>">
		<button id="modifyBtn" type="button">수정하기</button>
		<button id="deleteBtn" type="button">삭제하기</button>
	</form>


	<script>
		document.getElementById('deleteBtn').addEventListener('click', ()=>{
			//alert('삭제버튼눌림');
			if(confirm('삭제 하시겠습니까?')){
				//확인 -> true 여기가 실행 -> 삭제쪽으로 연결!
				
				//get 방식으로 id 값 전달
				//location.href = 'deletePerson_proc.jsp?id=<%=personInfo.getId()%>';
				
				//form submit 을 발생시켜서, post 방식으로 id 값 전달
				let form = document.getElementById('personForm');
				form.action='deletePerson_proc.jsp';
				form.submit();
			}
		});
		
		document.getElementById('modifyBtn').addEventListener('click', ()=>{
			//이름이 있는지 혹시 비어있는지!!  이런 필터링은 화면에서 막을수도 있고 서버에서도 막을 수 있음
			let input_name = document.getElementById('input_name');
			if(input_name.value.trim() == ''){
				alert('이름은 필수 입력입니다.');
				input_name.focus();
				return;
			}
			
			if(confirm('수정 하시겠습니까?')){
				let form = document.getElementById('personForm');
				form.action='modifyPerson_proc.jsp';
				form.submit();
			}
		});
		
	</script>
	<%
	}
	%>



</body>
</html>