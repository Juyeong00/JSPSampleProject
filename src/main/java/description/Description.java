package description;

//설명 작성용 파일
public class Description {

	/*
	프로젝트 파일 구조
	Java Resource 폴더 (위)
		src/main/java : 자바 소스 파일/작성
	
	webapp 폴더 (아래)
		화면(jsp, css, js 등) 관련 파일
	
	
	.jsp 파일은 서버에서 실행 후, 사용자에게 돌아갈때는 3총사(HTML, CSS, Javascript) 형태로 전송

	.jsp 파일 내부에서 자바 코드를 작성할 때는
	<%
		감싸인 범위에서 작성 가능
	%>


	form 요청 시, method 선택
		- get	: 주소창 뒤에 ? 붙어서
				  form 에서 요청 가능
				  주소창에 바로 입력해서도 가능
				  주소창 문자열 길이로 제한
				  공개해도 되는 정보를 파라미터 포함
				  
		- post	: body안에 숨겨서
				  주소창에서 바로 접근 불가!
				  제한 없이 전송
				  (WAS apache 2GB - 설정)
				  아이디/비밀번호 숨길 항목
	
	request.gerParameter("키값"); 값 획득
	
	 */
}
