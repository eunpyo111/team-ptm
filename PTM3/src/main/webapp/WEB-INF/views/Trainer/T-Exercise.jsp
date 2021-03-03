<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PT Member detail</title>
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
			window.location.href = "/Trainer/T-Round";
		});
		
		$(".memberchart").click(function()
		{
			window.location.href = "/Trainer/T-Chart";
		});
		
	});
</script>
<script src="//www.google.com/jsapi"></script>
<script>

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
	border-bottom:1px solid #F2F2F2;
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
.membercontents
{
	/* border:1px solid black; */
	width:100%;
	overflow: auto;
}
.memberprofilimg
{
	border-right:1px solid #F2F2F2;
	border-bottom:1px solid #F2F2F2;
	width:50%;
	height:20vh;
	float:left;
}
.memberprofil
{
	border-bottom:1px solid #F2F2F2;
	width:50%;
	height:20vh;
	float:right;
	font-size: 2.3em;
	padding:1.5em 1em;
}
.profilimg
{
	width:130px;
	margin:2em 10em 2em 10em;
}
.memberchart
{
	border-right:1px solid #F2F2F2;
	border-bottom:1px solid #F2F2F2;
	width:50%;
	height:5vh;
	float:left;
	font-size: 2em;
	padding:0.5em 7em;
	cursor:pointer;
	background-color: #F2F2F2;
}
.memberchart:hover
{
	background-color: #506EA5;
	color:white;
}
.memberexercise
{
	width:50%;
	height:5vh;
	float:right;
	font-size: 2em;
	padding:0.5em 7em;
	cursor:pointer;
}
.memberexercise:hover
{
	background-color: #506EA5;
	color:white;
}
.Exercises
{
	/* border: 1px solid black; */
	clear:both;
	width:100%;
	padding:5em 0;
	display: block;
	text-align:center;
}
table
{
	width:80%;
	height:20vh;
	text-align:center;
	margin:auto;
}
table tr:last-child > td:last-child
{
	text-align: right;
}
.angle-up
{
	position:fixed;
	right:31%;
	bottom:2%;
	color:black;
	font-size: 1rem;
}
@media screen and (max-width:787px)
{
	body{
		width:100%
	}
	.allcontents{
		width:100%;
		height:100%;
		padding-top: 3em;
	}
	.topcontents
	{
		height:7vh;
	}
	.profilimg{
		width:100px;
		margin:1em 5em;
	}
	.memberprofil{
		font-size: 1.5em;
	}
	.memberchart{
		font-size:1.5em;
		padding:0.5em 5em;
	}
	.memberexercise{
		font-size:1.5em;
		padding:0.5em 5em;
	}
	.angle-up{
		right:3%;
		bottom:2;
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
		
		<!-- 회원의 상세 데이터 -->
		<div class="membercontents">
			
			<!-- 이미지/왼쪽 div -->
			<div class="memberprofilimg">
				<img src="/resources/Images/boy.png" class="profilimg">				
			</div>
			
			<!-- 프로필/오른쪽 div -->
			<div class="memberprofil">
				회원성함 : 김형근<br>
				전화번호 : 010-1234-1234<br>
				생년월일 : 1994-08-08
			</div>
			
			<div class="memberchart">
				통계
			</div>
			
			<div class="memberexercise">
				운동
			</div>
			
			<!-- 운동 상세 기록 부분 -->
			<div class="Exercises">
				<form id="Ewrite" name="Ewrite" action="" method="get">
				<table>
					<tr>
						<td colspan="3">
							<input type="text" id="Ename" name="Ename" class="form-control" placeholder="운동명">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" id="Eset" name="Eset" class="form-control" placeholder="세트">
						</td>
						<td>
							<input type="text" id="Ecnt" name="Ecnt" class="form-control" placeholder="횟수">
						</td>
						<td>
							<input type="text" id="Ekg" name="Ekg" class="form-control" placeholder="무게">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" id="Etime" name="Etime" class="form-control" placeholder="소요시간">
						</td>
						<td>
							<select id="Epart" name="Epart" class="form-select">	
								<option value="A" selected>어깨</option>
								<option value="B">가슴</option>
								<option value="C">등</option>
								<option value="D">코어</option>
								<option value="E">하체</option>
								<option value="F">이두</option>
								<option value="G">삼두</option>
							</select>
						</td>
						<td>
							<input type="text" id="Erest" name="Erest" class="form-control" placeholder="세트간 휴식">
						</td>					
					</tr>
					<tr>
						<td colspan="4">
							<input type="button" value="SAVE" class="btn btn-primary">
						</td>
					</tr>
				</table>
				</form>
			</div>
			
		</div>

		<!-- 누르면 상단으로 -->
		<a class="angle-up" href="#top">[TOP]</a>
		
	</div>
</body>
</html>