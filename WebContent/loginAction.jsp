<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="sunmoon.ac.kr.UserService" %>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Easy and convenient for everyone Cosmetics Compare</title>
</head>
<body>
<%
	String user_id = request.getParameter("userId");
	String user_pw = request.getParameter("userPw");
	
	UserService service = new UserService();
	int result = service.login(user_id, user_pw);
	
	if(result == 1)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('Database error')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(result == 2)
	{
		session.setAttribute("userId", user_id);
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('Cosmetic Compares에 오신것을 환영합니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
	else if(result == 3)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호 오류')");
		script.println("history.back()");
		script.println("</script>");
	}
	else
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('아이디 오류')");
		script.println("history.back()");
		script.println("</script>");
	}
%>
</body>
</html>


