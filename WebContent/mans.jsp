<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Easy and convenient for everyone Cosmetics Compare 남성 페이지</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<%
		String user_id = (String)session.getAttribute("userId");
		if(user_id == null)
		{
			
	%>
			<script type="text/javascript">
				alert("로그인을 해주세요.");
				location.href = 'login.jsp'
			</script>
	<%
		}
	%>
	<nav class="navbar navbar-default">
		<div class="btn-primary form-control" style="text-align:center;"><a href="main.jsp" style="color:white; text-decoration: none;">Cosmetics Compare</a></div>
		<div class="container">
			<div class="navbar-brand">카테고리</div>
			<div class="navbar-header">
					<button class="navbar-toggle" 
					        data-target="#menu-items"
					        data-toggle="collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
			</div>
					
			<div class="collapse navbar-collapse" id="menu-items">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="makeup.jsp">메이크업 </a></li>
					<li class="dropdown"><a href="bodycare.jsp">바디케어 </a></li>
					<li class="dropdown"><a href="haircare.jsp">헤어케어 </a></li>
					<li class="dropdown"><a href="mans.jsp">남성 </a></li>
				</ul>
					
					<form class="navbar-form navbar-right" role="search">
               			<div class="input-group">
                 			<input type="text" class="form-control" placeholder="검색할 제품 입력">
                   				<span class="input-group-btn">
                       				<button type="submit" class="btn btn-default">
                       				<span class="glyphicon glyphicon-search"></span>
                       				</button>
                  				 </span>
               				</div>
           			</form>
           		<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" 
					   data-toggle="dropdown">마이 페이지
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="Myinformation.jsp">내 정보</a></li>
					</ul>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">Logout</a></li>
					</ul>
				</li>
				</ul>
			</div>	
		</div>		
	</nav>
mans page
</body>
</html>