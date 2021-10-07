<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="join.jsp">
		이메일 : <input type="text" name="email"/><br>
		비밀번호 : <input type="password" name="password"/><br>
		
		<br>
		생년월일:
		<select name="birthyear">
			<option value="1996">1996</option>
			<option value="1995">1995</option>
			<option value="1994">1994</option>
		</select>

		<br>
		성별:
		여 <input type="radio" name="gender" value="여">
		남 <input type="radio" name="gender" value="남"  checked>
		<br><br>
		
		취미 :
		코딩<input type="checkbox" name="hobby" value="coding">
		술먹기 <input type="checkbox" name="hobby" value="drinking">
		요리 <input type="checkbox" name="hobby" value="swimming"><br>
		
		
		자기소개:<br>
		<textarea name="profile"> 
		</textarea>
		<br><br>
		
		<input type="submit" value="가입하기"/>
	</form>
	
	
</body>
</html>