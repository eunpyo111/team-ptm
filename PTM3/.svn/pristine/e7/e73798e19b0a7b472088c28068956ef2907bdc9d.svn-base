<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trainer Main</title>
<script src="/resources/Js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function()
	{
		$(".topgrid").click(function()
		{
			$(".navicontents").slideToggle(1000);
		});
		
		$(".topback").click(function()
		{
			window.history.back();
		});
		
		$(".profileTab").click(function()
		{
			location.href="/Trainer/T-Profile";
		});
		$(".accountTab").click(function()
		{
			 location.reload();
		});
		
		$('#selfOut').click(function() 
		{ 
			var result = confirm("정말로 탈퇴하시겠습니까?"); 
			if(result) 
			{ 	
				alert("이용해주셔서 감사합니다.")
				location.href="/Trainer/T-Login";
			} else { 
				alert("취소되었습니다.")
			} 
		});
		
	});
	
	function modifyAccount()
	{
		$("#phone").html("<input type='text' class='form-control' >");
		$("#email").html("<input type='text' class='form-control' placeholder='ex)john@ptm.com'>");
		$("#modifyAccountButton").attr("value","저장").attr("id","saveAccountButton").attr("onclick","saveAccount()");
	}
	
	function saveAccount()
	{
		$("#phone").html("010-1234-5679");
		$("#email").html("Hong123@naver.com");
		$("#saveAccountButton").attr("value","수정").attr("id","modifyAccountButton").attr("onclick","modifyAccount()");
	}

</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);
body
{
	font-family: 'NanumSquare', sans-serif;
	font-size:70%;
	width:100%;
	height:100vh;
	margin:0;
	padding:0;
	overflow: auto;
	background-color: #F2F2F2;
}
.allcontents
{
	/* border:1px solid black; */
	width:40%;
	height:100vh;
	margin:auto;
	background-color: white;
}
.topcontents
{
	border-bottom:1px solid #F2F2F2;
	top:0;
	text-align:center;
	width:100%;
	height:5vh;
	display:inline-block;
}
.topback
{	
	border:0;
	background: none;
	margin:0;
	padding-bottom:0.01rem;
}
.toplogo
{
	display:inline-block;
	width:80%;
}
.topimg
{
	width:110px;
	height:50px;
	margin:auto;
}
.topgrid
{
	border:0;
	background: none;
	margin:0;
	padding-bottom:0.01rem;
}
.navicontents
{
	border:1px solid #F2F2F2;
	position:relative;
	font-size: 1.5rem;
	padding-top:1em;
	display: none;
}
a
{
	text-decoration:none;
	color:black;
}
a:hover
{
	color:#288CD2
}
ul
{
	list-style: none;
}
.tab
{
	display:flex;
	width:100%;
	height:5%;
	margin-bottom:3em;
}
.profileTab
{
	margin:0;
	padding-top:0.5em;
	width:50%;
	text-align:center;
	font-size:1.5em;
	border: 0.1em #F2F2F2 solid;
	cursor:pointer;
	background-color: #F2F2F2;
}
.profileTab:hover
{
	background-color: #506EA5;
	color:white;
}
.accountTab
{
	margin:0;
	padding-top:0.5em;
	width:50%;
	text-align:center;
	font-size:1.5em;
	border: 0.1em #F2F2F2 solid;
	border-bottom:none;
	cursor:pointer;
	
}
.accountTab:hover
{
	background-color: #506EA5;
	color:white;
}
.trainerAccountTable
{
	width:80%;
	margin:auto;
	font-size:1.5em;
	
}
#pw
{
	width:150px;
	display: inline;
}
#modifyAccountButton
{
	width:100%;
}
#saveAccountButton
{
	width:100%;
}
#selfOut
{
	width:100%;
}
@media screen and (max-width:787px)
{
	body
	{
		width:100%;
	}
	.allcontents
	{
		width:100%;
		padding-top: 3em;
	}
	.topcontents
	{
		height:7vh;
	}
}
</style>
</head>
<body>
	<!-- 전체 컨텐츠를 감싼 div -->
	<div class="allcontents">
		
		<!-- 상단 로고와 네비게이션 버튼 -->
		<div class="topcontents">
			<button class="topback">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
  					<path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
				</svg>
			</button>
			<a href="" class="toplogo"><img src="/resources/Images/LOGO.png" class="topimg"></a>
			<button class="topgrid">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-grid-3x3-gap-fill" viewBox="0 0 16 16">
					<path d="M1 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2zm5 0a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V2zm5 0a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1V2zM1 7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V7zm5 0a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7zm5 0a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1V7zM1 12a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1v-2zm5 0a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1v-2zm5 0a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-2z"/>
				</svg>
			</button>
		</div>
		
		<!-- 네비게이션 div -->
		<div class="navicontents">
			<ul>
				<li>
					<a href="/Trainer/T-List">회원관리</a>
				</li>
				<li>
					<a href="/Trainer/T-Search">회원 조회 및 등록</a>
				</li>
				<li>
					<a href="/Trainer/T-Profile">마이페이지</a>
				</li>
				<li>
					<a href="/Trainer/T-Logout">로그아웃</a>
				</li>
			</ul>
		</div>
		
		<div class="tab">
			<div class="profileTab">프로필 관리</div>
			<div class="accountTab">계정 관리</div>
		</div>
		
		<div class="trainerAccount">
			<table class="trainerAccountTable">
				<tr>
					<th>아이디</th>
					<td>Hong123</td>
				</tr>
				<tr>
					<td colspan="2">
					<hr style="height:0.1em;"/>
					</td>
				</tr>
				<tr class="tjoin">
					<th>비밀번호</th>
					<td>
						*************
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<hr style="height:0.1em;"/>
					</td>
				</tr>
				<tr>
					<th>비밀번호 변경</th>
					<td>
						<form id="frm" name="frm" method="post" action="#">
							<input type="password" class="form-control" id="pw" name="pw" onblur="pwcheck()" >
							<input type="submit" class="btn btn-primary" value="변경">
						</form>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<hr style="height:0.1em;"/>
					</td>
				</tr>
				<tr>
					<th>휴대폰 번호</th>
					<td id="phone">010-1234-5678</td>
				</tr>
				<tr>
					<td colspan="2">
					<hr style="height:0.1em;"/>
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td id="email">Hong123@gmail.com</td>
				</tr>
				<tr>
					<td>
						<hr style="height:0.05em; color:white"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" class="btn btn-primary" id="modifyAccountButton" value="수정" onclick="modifyAccount()">
					</td>
				</tr>
				<tr>
					<td>
					<hr style="height:0.0005em; color:white"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" class="btn btn-danger" id="selfOut">회원탈퇴</button>
					</td>
				</tr>
			</table>
		</div>
		
	</div>
</body>
</html>