<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Exercise Round</title>
<script src="/resources/Js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function()
	{
		$(".topgrid").click(function()
		{
			$(".navicontents").slideToggle(1000);
		});

		$(".memberchart").click(function()
		{
			window.location.href = "/Member/M-Chart";
		});
		$(".topback").click(function()
		{
			window.location.href = "/Member/M-List";
		});
	});
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
.topback
{	
	border:0;
	background: none;
	margin:0;
	padding-bottom:0.01rem;
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
}
.memberchart
{
	border-right:1px solid #F2F2F2;
	/* border-bottom:1px solid #F2F2F2 */
	width:50%;
	height:5vh;
	float:left;
	font-size: 2em;
	padding:0.5em 7em;
	cursor:pointer;
}
.memberchart:hover
{
	background-color: #506EA5;
	color:white;
}
.memberexercise
{
	border-bottom:1px solid #F2F2F2;
	width:50%;
	height:5vh;
	float:right;
	font-size: 2em;
	padding:0.5em 7em;
	cursor:pointer;
	background-color: #F2F2F2;
}
.memberexercise:hover
{
	background-color: #506EA5;
	color:white;
}
.select
{
	width: 100%	;
    text-align: center;
    height: 3em;
    font-size: 1.5vh;
    margin-top: 2em;
    margin-bottom:-1.8em;
}
.tdlist
{
    padding-top: 2em;
}
.exbutton
{
	cursor:pointer;
	border-bottom:none;
}
.chbutton
{
	
	cursor:pointer;
}
.Exercises
{
	/* border: 1px solid black; */
	clear:both;
	width:100%;
	padding-top:5em;
	display: block;
	text-align:center;
}
.Exercises input
{
	width:80%;
	margin-bottom: 3em;
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
	.memberchart{
		font-size:1.5em;
		padding:0.5em 5em;
	}
	.memberexercise{
		font-size:1.5em;
		padding:0.5em 5em;
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
			<a href="/Member/M-List" class="toplogo"><img src="/resources/Images/LOGO.png" class="topimg"></a>
		</div>
		
		<div class="memberchart">
			통계
		</div>
		
		<div class="memberexercise">
			운동
		</div>
		
		<div class="Exercises">
			<input type="button" value="3회차 -2021.01.08-" class="btn btn-primary" onclick="location.href='/Member/M-Exercise'">
			<input type="button" value="2회차 -2021.01.04-" class="btn btn-primary">
			<input type="button" value="1회차 -2021.01.01-" class="btn btn-primary">
		</div>
	</div>
</body>
</html>