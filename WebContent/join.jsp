<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Easy and convenient for everyone Cosmetics Compare 회원가입</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<nav class="navbar navbar-default">
		<div class="btn-primary form-control" style="text-align:center;">Cosmetics Compare</div>
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
			</div>
		</div>		
	</nav>
	
	<div class="container">
		<div class="jumbotron" style="padding-top:20px;">
			<form method="post" action="joinAction.jsp">
				<h3 style="text-align: center;">회원가입</h3>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="아이디" 
					       name="userId" maxlength="20" required>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="비밀번호" 
					       name="userPw" maxlength="20" required>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="이름" 
					       name="userName" maxlength="20" required>
				</div>
				<div class="form-group" style="text-align: center">
					<div class="btn-group" data-toggle="buttons">
						<label class="btn btn-primary active" id="female_label">
							<input type="radio" name="userGender" value="Female" checked="checked">여자
						</label>
						<label class="btn btn-primary" id="male_label">
							<input type="radio" name="userGender" value="Male">남자
						</label>
					</div>
				</div>
				<div class="form-group">
					<input type="email" class="form-control" placeholder="Email address" 
					       name="userEmail" maxlength="20">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="배송 주소" 
					       name="userAddress" maxlength="50" required>
				</div>
				<h4 style="text-align: center;">자가 진단 서비스</h4>
					<hr width="50%" align="center">
					<h5 style="text-align: center;">메이크업</h5>
					<div class="form-group" style="text-align: center">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active" id="warmtone">
								<input type="radio" name="colortype" value="warm_tone" checked="checked">웜톤
							</label>
							<label class="btn btn-primary" id="cooltone">
								<input type="radio" name="colortype" value="cool_tone">쿨톤
							</label>
						</div>
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active" id="moisture">
								<input type="radio" name="skintype" value="moisture" checked="checked">수분용
							</label>
							<label class="btn btn-primary" id="oil">
								<input type="radio" name="skintype" value="oil">유분용
							</label>
						</div>
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active" id="skill">
								<input type="radio" name="skilltype" value="moisturizing" checked="checked">보습용
							</label>
							<label class="btn btn-primary" id="whitening">
								<input type="radio" name="skilltype" value="whitening">미백용
							</label>
						</div>
						<h5 style="text-align: center;">선호 용기</h5>
						<div class="form-group" style="text-align: center">
							<div class="btn-group" data-toggle="buttons">
								<label class="btn btn-primary active" id="pump">
									<input type="radio" name="containertype" value="pump" checked="checked">펌프용
								</label>
								<label class="btn btn-primary" id="tube">
									<input type="radio" name="containertype" value="tube">튜브용
								</label>
							</div>
						</div>
					</div>
				<input type="submit" class="btn btn-primary form-control" value="Join">
			</form>
		</div>
	</div>
	
	<script type="text/javascript">
		var element = document.getElementById('warmtone','cooltone');
		var positionInfo = element.getBoundingClientRect();
		var width = positionInfo.width;
		document.getElementById('male_label').setAttribute("style","width:" + width + "px");
	</script>
	
</body>
</html>