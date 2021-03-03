<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Member Main</title>
<script src="/resources/Js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function()
	{
		$(".topgrid").click(function()
		{
			$(".navicontents").slideToggle(1000);
		});
		
		$(".tinfo").click(function()
		{
			window.location.href = "/Member/M-List";
		}).find(".pictures").click(function(e)
		{
			  return false;
		});;

	});
	function viewtrainer()
	{
		$(".modalchang").css("visibility", "visible");
		$(".modalchang").css("opacity", "1");
		$(".modalnaeyong").toggle();
	}
	function closetrainer()
	{
		$('.modalnaeyong').toggle();
		$(".modalchang").css("visibility", "hidden");
		$(".modalchang").css("opacity", "0");
	}
	
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
.allcontents
{
	/*border: 1px solid black; */
	width:40%;
	height:100vh;
	margin:auto;
	background-color: white;
}
.topcontents
{
	border:1px solid #F2F2F2;
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
.topgrid
{
	border:0;
	background: none;
	margin:0;
	padding-bottom:0.01rem;
}
ul
{
	list-style: none;
	margin:0;
	padding:0;
}
.trainercontents
{
	margin:auto;
	font-size: 2em;
}
.trainerlist
{
	border:1px solid #F2F2F2;
	height:20vh;
}
.pictures
{
	width:200px;  
	height:200px;
	float:left;
	margin:0.2em 3em;
	z-index: 10;
}
span
{
	font-size : 2.0vh;
}
.modalchang
{
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	opacity: 0;
	visibility: hidden;
	transform: scale(1.1);
	transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s;
	z-index: 5000;
}
.modalnaeyong
{
	display:none;
	left:35%;
	top:25%;
	position:fixed;
	border-radius:20px;
	background-color: white;
	padding-top:5em;
	width:30%;
	height:50vh;
}
.modalnaeyong table
{
	margin: auto;
    height: 35vh;
    width: 70%;
    text-align: center;
    font-size: 2em;
}
th
{
	text-align: left;
}
.imgtrainer
{
	width:25em;
}
img
{
	cursor:pointer;
}
.tinfo
{
	cursor:pointer;
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
	.trainercontents
	{
		font-size: 1.5em;
		margin-top:2em;
	}
	.trainerlist
	{
		height:15vh;
	}
	.trainercontents img
	{
		width:120px;
		height:110px;
	}
	.modalchang
	{
		width:100%;
	}
	.modalnaeyong
	{
		left:10%;
		top:20%;
		width:80%;
	}
	.modalnaeyong table
	{
		font-size: 1.1em;
	}
}
</style>
</head>
<body>
	<!-- 전체 컨텐츠를 감싼 div -->
	<div class="allcontents">
		
		<!-- 상단 로고와 네비게이션 버튼 -->
		<div class="topcontents">
			<a href="/Member/M-List" class="toplogo"><img src="/resources/Images/LOGO.png" class="topimg"></a>
		</div>
		
		<!-- 검색창 -->
		<nav class="navbar sticky-top navbar-light bg-light">
			<div class="container-sm">
				<a class="navbar-brand"></a>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-primary" type="submit">Search</button>
				</form>
			</div>
		</nav>
		
		<!-- PT를 받고 있는 트레이너의 목록이 보이는 div -->
		<div class="trainercontents">
			<!-- 트레이너 목록 ul -->
			<ul>
				<li>※이미지를 누르면 해당 트레이너의 프로필을 보실 수 있습니다.</li>
				<li>
					<div class="trainerlist tinfo">
						<img src="/resources/Images/t1.jpg" class="pictures" onclick="viewtrainer()"><p/>
						이름 : 마동석<p/>
						PT등록일 :21.01.06<p/>
						PT회차 : 3회
					</div>
				</li>
				<li>
					<div class="trainerlist">
						<img src="/resources/Images/t2.jpg" class="pictures"><p/>
						이름 : 김종국<p/>
						PT등록일 :20.11.06<p/>
						PT회차 : 10회
					</div>
				</li>
			</ul>
		</div>
		
	</div>
	
	<!-- 트레이너 프로필이 보이는 Modal -->
	<div class="modalchang">
		<div class="modalnaeyong">
			<table class="modaletable">
				<tr>
					<th>근무지</th>	
					<td id="addr">이젠 헬스장</td>
				</tr>
				<tr><td colspan='2' height='1' style='background-color:#cccccc'></tr>
				<tr>			
					<th>트레이너(닉네임)</th>
					<td>마동석</td>
				</tr>
				<tr><td colspan='2' height='1' style='background-color:#cccccc'></tr>
				<tr>			
					<th>경력사항</th>
					<td>
						2017 올림피아 금메달 <br> 
						2018 보디빌딩 은메달
					</td>
				</tr>
				<tr><td colspan='2' height='1' style='background-color:#cccccc'></tr>
				<tr>
					<th class="thimgtrainer" colspan="2">
						<img src="/resources/Images/t1.jpg" class="imgtrainer">
					</th>
				</tr>
				<tr><td colspan='2' height='1' style='background-color:#cccccc'></tr>
				<tr>
					<td colspan="2">
						<input type="button" value="확인" onclick="closetrainer()" class="btn btn-primary" id="modalbtn">
					</td>
				</tr>
			</table>
		</div>
	</div>
	
</body>
</html>