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
		
		$(".profileTab").click(function()
		{
			 location.reload();
		});
		$(".accountTab").click(function()
		{
			 location.href="/Trainer/T-Account";
		});
		$(".topback").click(function()
		{
			window.history.back();
		});
		
		$("#fileUp").change(function(){
			LoadImg(this);
		});
		
	});
	
	
	function modifyProfile()
	{
		$("#addr").html("<input type='text' id='addr1' name='addr1' class='form-control' value='서울특별시 서초구 강남대로 321' style='display:inline; width:70%;'><button type='button' onclick='javascript:juso()' class='btn btn-primary'>주소찾기</button><input type='text' id='addr2' name='addr2' class='form-control' value='이젠 헬스장' style='width:100%;'>");
		$(".imghover").html("<img src='/resources/Images/t1.jpg' id='profilimg' class='profilimg'><input type='file' name='fileUp' id='fileUp' onchange='LoadImg(this);'><br>");
		$("#description").html("<textarea rows='10' cols='30'>2017 올림피아 금메달, 2018 보디빌딩 은메달</textarea>");
		$("#modifyProfileButton").attr("value","저장").attr("id","saveProfileButton").attr("onclick","saveProfile()");
	}
	
	function saveProfile()
	{
		$("#addr").html("서울특별시 서초구 강남대로 321<br>이젠 헬스장");
		$(".imghover").html("<img src='/resources/Images/king.jpg' id='profilimg' class='profilimg'>");
		$("#description").html("2017 올림피아 금메달, 2018 보디빌딩 은메달")
		$("#saveProfileButton").attr("value","수정").attr("id","modifyProfileButton").attr("onclick","modifyProfile()");
	}
	
	function LoadImg(value)
	{
		if(value.files && value.files[0])
		{
			var reader = new FileReader();
			reader.onload = function(e)
			{
				$("#profilimg").attr('src',e.target.result);
			}
			reader.readAsDataURL(value.files[0]);
		}
	}
	
	function juso()
	{
		new daum.Postcode({
			oncomplete: function(data) {
			$("#addr1").val(data.address);
			}
		}).open();
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
	overflow:auto;
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
	border-bottom:none;
	cursor:pointer;
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
	cursor:pointer;
	background-color: #F2F2F2;
}
.accountTab:hover
{
	background-color: #506EA5;
	color:white;
}
.trainerProfileTable
{
	width:90%;
	margin:auto;
	font-size:1.5em;
	
}
tr:nth-child(5) > td 
{
	text-align: center;
}
.profilimg
{
	margin:auto;
	text-align: center;
	width:300px;
	height:250px;
}
#modifyProfileButton
{
	width:100%;
}
#saveProfileButton
{
	width:100%;
}
.topback
{	
	border:0;
	background: none;
	margin:0;
	padding-bottom:0.01rem;
}
@media screen and (max-width:787px)
{
	body{
		width:100%;
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
	.trainerProfile{
		width:100%;
	}
	.trainerProfileTable{
		width:90%;
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
		
		<!-- 상단 탭 -->
		<div class="tab">
			<div class="profileTab">프로필 관리</div>
			<div class="accountTab">계정 관리</div>
		</div>
		
		<!-- 프로필 부분 div -->
		<div class="trainerProfile">
			<table class="trainerProfileTable">
				<tr>
					<th>이름</th>
					<td>마동석</td>
				</tr>
				<tr>
					<td colspan="2">
					<hr style="height:0.1em;"/>
					</td>
				</tr>
				<tr>
					<th>근무지</th>
					<td id="addr">
						서울특별시 서초구 강남대로 321<br>이젠 헬스장
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<hr style="height:0.1em;"/>
					</td>
				</tr>
				<tr>
					<td class="imghover" colspan="2">
						<img src="/resources/Images/t1.jpg" class="profilimg">
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<hr style="height:0.1em;"/>
					</td>
				</tr>
				<tr>
					<th>자기소개</th>
					<td id="description">
						2017 올림피아 금메달<br> 2018 보디빌딩 은메달
					</td>
				</tr>
				<tr>
					<td>
						<hr style="height:0.05em; color:white"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" class="btn btn-primary" id="modifyProfileButton" value="수정" onclick="modifyProfile()">
					</td>
				</tr>
			</table>
		</div>
		
	</div>
</body>
</html>