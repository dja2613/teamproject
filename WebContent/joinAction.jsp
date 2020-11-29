<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import= "sunmoon.ac.kr.UserService" %>
<%@ page import= "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String user_id = request.getParameter("userId");
	String user_pw = request.getParameter("userPw");
	String user_name = request.getParameter("userName");
	String user_gender = request.getParameter("userGender");
	String user_email = request.getParameter("userEmail");
	String user_address = request.getParameter("userAddress");
	
	UserService service = new UserService();
	int result = service.join(user_id, user_pw, user_name, user_gender, user_email, user_address);
	
	String user_ids = request.getParameter("userId");
	String color_type = request.getParameter("colortype");
	String skin_type = request.getParameter("skintype");
	String skill_type = request.getParameter("skilltype");
	String container_type = request.getParameter("containertype");
	
	UserService selfservice = new UserService();
	int result1 = selfservice.self(user_ids, color_type, skin_type, skill_type, container_type);
	
	
	if(result == 0)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	}
	else
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 존재하는 아이디입니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
%>
</body>
</html>
