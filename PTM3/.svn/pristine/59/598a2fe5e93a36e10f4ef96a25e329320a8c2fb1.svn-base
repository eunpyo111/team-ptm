<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trainer Management</title>
<script src="../Resource/Js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function()
	{
		$(".trainermanager").click(function()
		{
			window.location.href = "TDaejang.jsp"; 
		});
		
		$(".usermanager").click(function()
		{
			window.location.href = "UDaejang.jsp"; 
		});
		
		$(".toplogout").hover(function()
		{
			var output = '';
			output+= '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-door-open" viewBox="0 0 16 16">';
			output+= '<path d="M8.5 10c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"/>';
			output+= '<path d="M10.828.122A.5.5 0 0 1 11 .5V1h.5A1.5 1.5 0 0 1 13 2.5V15h1.5a.5.5 0 0 1 0 1h-13a.5.5 0 0 1 0-1H3V1.5a.5.5 0 0 1 .43-.495l7-1a.5.5 0 0 1 .398.117zM11.5 2H11v13h1V2.5a.5.5 0 0 0-.5-.5zM4 1.934V15h6V1.077l-6 .857z"/>';
			output+= '</svg>';
			
			$(this).html(output);
		
		}).mouseleave(function()
		{
			var output = '';
			output+= '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-door-closed" viewBox="0 0 16 16">';
			output+= '<path d="M3 2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v13h1.5a.5.5 0 0 1 0 1h-13a.5.5 0 0 1 0-1H3V2zm1 13h8V2H4v13z"/>';
			output+= '<path d="M9 9a1 1 0 1 0 2 0 1 1 0 0 0-2 0z"/>';
			output+= '</svg>';
			
			$(this).html(output);
		});
		
		$(".toplogout").click(function()
		{
			var result = confirm("로그아웃 하시겠습니까?"); 
			if(result) 
			{ 	
				alert("로그아웃 되었습니다.")
				location.replace("../Trainer/Account/T-Login.jsp"); 
			}
		});
		
		$("#stateChange").click(function()
		{
			var result = confirm("회원을 탈퇴시키겠습니까?");
			if(result)
			{
				alert("탈퇴처리되었습니다.");
			}else
			{
				alert("취소되었습니다.");
			}
		});
	})
</script>
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
::-webkit-scrollbar { display: none; } 
.allcontents
{
	/* border:1px solid black; */
	width:40%;
	height:100vh;
	margin:auto;
	background-color: white;
	font-size: 1.5em;
	overflow: auto;
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
.toplogo
{
	display:inline-block;
	width:90%;
}
.topimg
{
	width:110px;
	height:50px;
	margin:auto;
}
.toplogout
{
	border:0;
	background: none;
	margin:0;
	padding-bottom:0.01rem;
}
.trainermanager
{
	border-right:1px solid #F2F2F2;
	/* border-bottom:1px solid #F2F2F2 */
	width:50%;
	height:5vh;
	float:left;
	font-size: 1.5em;
	padding:0.5em 5.5em;
	cursor:pointer;
}
.trainermanager:hover
{
	background-color: #506EA5;
	color:white;
}
.usermanager
{
	border-bottom:1px solid #F2F2F2;
	width:50%;
	height:5vh;
	float:right;
	font-size: 1.5em;
	padding:0.5em 5.5em;
	cursor:pointer;
	background-color: #F2F2F2;
}
.usermanager:hover
{
	background-color: #506EA5;
	color:white;
}
.Tlist
{
	margin-top:5em;
	width:100%;
}
.Tlist table
{
	width:100%;
	text-align: center;
}
th
{
	text-align: center;
}
tr, th, td
{
	/* border:1px solid black; */
}
thead > tr:first-child > td:first-child
{
	text-align: right;
}
thead > tr:first-child
{
	border-bottom:1px solid #F2F2F2;
}
tbody > tr > td:first-child
{
	text-align: center;
	width:10%;
}
tbody > tr > td:nth-child(2)
{
	width:15%;
}
tbody > tr > td:nth-child(5)
{
	text-align: center;
	width:12%;
}
input[type=search]
{
	width:200px;
	display:inline-block;
}
</style>
</head>
<body>
	<!-- 전체 컨텐츠를 감싼 div -->
	<div class="allcontents">
		
		<!-- 상단 로고와 네비게이션 버튼 -->
		<div class="topcontents">
			<a href="" class="toplogo"><img src="../Resource/Images/LOGO.png" class="topimg"></a>
			<button class="toplogout">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-door-closed" viewBox="0 0 16 16">
				<path d="M3 2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v13h1.5a.5.5 0 0 1 0 1h-13a.5.5 0 0 1 0-1H3V2zm1 13h8V2H4v13z"/>
				<path d="M9 9a1 1 0 1 0 2 0 1 1 0 0 0-2 0z"/>
				</svg>
			</button>
		</div>
		
		<div class="trainermanager">
			트레이너
		</div>
		
		<div class="usermanager">
			일반회원
		</div>
		
		<!-- 트레이너 회원 목록 -->
		<div class="Tlist">
			<table>
				<thead>
					<tr>
						<td colspan="6">
							<form id="trainersearch" name="trainersearch">
								<input type="search" placeholder="Search" class="form-control">
								<input type="submit" value="검색" class="btn btn-primary">
							</form>
						</td>
					</tr>
					<tr>
						<th>번호</th>
						<th>아이디</th>
						<th>이메일</th>
						<th>가입일</th>
						<th>가입(Y)<br>탈퇴(N)</th>
						<th>회원관리</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>3</td>
						<td>kim123</td>
						<td>kim@gmail.com</td>
						<td>2020.1.10</td>
						<td>Y</td>
						<td>
							<button type="button" id="stateChange" class="btn btn-danger">회원탈퇴</button>
						</td>					
					</tr>
					<tr>
						<td>2</td>
						<td>joso123</td>
						<td>jojojo@gmail.com</td>
						<td>2020.1.10</td>
						<td>Y</td>
						<td>
							<button type="button" id="stateChange" class="btn btn-danger">회원탈퇴</button>
						</td>					
					</tr>
					<tr>
						<td>1</td>
						<td>hong123</td>
						<td>hong@gmail.com</td>
						<td>2020.1.10</td>
						<td>Y</td>
						<td>
							<button type="button" id="stateChange" class="btn btn-danger">회원탈퇴</button>
						</td>					
					</tr>
				</tbody>
			</table>
		</div>

	</div>
</body>
</html>