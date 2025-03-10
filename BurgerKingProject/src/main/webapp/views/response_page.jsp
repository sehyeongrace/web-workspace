<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.burgerking.model.dto.UserDTO" %>    
<%
	// 자바코드 쓸 수 있음
	
		
	String message = (String)request.getAttribute("message");
	UserDTO user = (UserDTO)request.getAttribute("user");
	String userId = user.getUserId();
	String userName = user.getUserName();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답페이지</title>
<style>

	h1{
		background:yellowgreen;
	}
</style>

</head>
<body>

	<!-- 
		"사용자가 입력한 userName"님!!
		회원가입에 성공하셨습니다~~
	 	가입한 아이디 : userId
	 -->

	<h1><%= userName %>님!</h1>
	
	<p>
		<!-- request.getAttribute("message") -->
		<%= message %> <br/>
		회원가입에 성공하셨습니다~~ <br/><br/>
		
		가입한 성공한 아이디 : <%= userId %> 
	</p>
	
</body>
</html>