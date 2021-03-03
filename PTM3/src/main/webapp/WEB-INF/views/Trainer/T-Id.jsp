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
			window.location.href = "T-Login.jsp";
		});
				
		
		$(".idTab").click(function()
		{
			 location.reload();
		});
		
		$(".pwTab").click(function()
		{
			 location.href="/Trainer/T-Pw";
		});
		
		// 1. 모달창 히든 불러오기
		$('#idFindButton').click(function() {
			$('.idResultContainer').show();
		});
		// 2. 모달창 닫기 버튼
		$('.close').on('click', function() {
			$('.idResultContainer').hide();
		});
		// 3. 확인클릭 시 닫기
		$('#idOkButton').click(function() {
			$('.idResultContainer').hide();
		});
		
		
	});
	
	// 아이디 값 받고 출력하는 ajax
	var idSearch_click = function(){
		$.ajax({
			url:"/Trainer/T-Id",
			type:"POST",
			data: "t_email=" + t_email,
			success:function(data){
				if(data == 0){
					$('#t_email').text("회원 정보를 확인해주세요!");	
				} else {
					$('#t_email').text(data);
					// 아이디값 별도로 저장
					idV = data;
				}
			}
		});
	}
	
	function userDfn(no){
		$.ajax({
			url:"/ajax",
			type:"post",
			data:"no="+no,
			success:function(data){
				var output ="";
				output += data.name + "<br>";
				output += data.addr + "<br>";
				output += data.phone + "<br>";
				$("#userD").html(output);
			},
			error:function(){
				
			}
		})
	}
	
	
	/* function Result()
	{
		//alert("창 오픈");
		$(".idResultContainer").css("visibility", "visible");
		$(".idResultContainer").css("opacity", "1");
		//$(".acountMakeBox").toggle();
	}	
	function idResultOK()
	{
		//alert("QR코드가 등록하신 이메일 주소로 발송되었습니다.");
		//$(".accountMakeBox").toggle();
		$(".idResultContainer").css("visibility", "hidden");
		$(".idResultContainer").css("opacity", "0");
	}
	//[닫기] 눌렀을때
	function close()
	{
		//$(".accountMakeBox").toggle();
		$(".idResultContainer").css("visibility", "hidden");
		$(".idResultContainer").css("opacity", "0");
	} */
	
	
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

.tab
{
	display:flex;
	width:100%;
	height:5%;
	margin-bottom:3em;
	
}
.idTab
{
	margin:0;
	width:50%;
	text-align:center;
	font-size:1.5em;
	border: 0.1em #F2F2F2 solid;
	border-bottom:none;
	cursor:pointer;
	padding:0.5em 3em;
}
.idTab:hover
{
	background-color: #506EA5;
	color:white;
}
.pwTab
{
	margin:0;
	padding:0;
	width:50%;
	text-align:center;
	font-size:1.5em;
	border: 0.1em #F2F2F2 solid;
	cursor:pointer;
	padding:0.5em 3em;
	background-color: #F2F2F2;
}
.pwTab:hover
{
	background-color: #506EA5;
	color:white;
}
.id_find
{
	margin:auto;
}
.id_find table
{
	width:90%;
	text-align:center;
	margin:auto;
	font-size:1.5em;
}
#idFindButton
{
	width:100%;
}
#idResultHere
{
	font-size:15px; 
	font-weight:bold;
}
.idResultContainer
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
}
.idResultBox
{
	/* display:none;  */
	left:40%;
	top:35%;
	width:25em;
	height:13em;
	position:fixed;
	border-radius:10px;
	background-color: white;
	font-size:1.5em;
}
#idResultTable
{
	width:100%; 
	cellpadding:1em; 
	cellspacing:1em; 	
	text-align:center;
}
@media screen and (max-width:787px)
{
	body{
		width:100%
	}
	.allcontents{
		width:100%;
		padding-top: 3em;
	}
	.topcontents
	{
		height:7vh;
	}
	.idResultContainer{
		width:100%;
	}
	.idResultBox{
		left:8.5%;
		top:30%;
	}
	.pwTab
	{
		padding:0.5em 1em;
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
					<a href="/Trainer/T-Login">로그인</a>
				</li>
				<li>
					<a href="/Trainer/T-Join">회원가입</a>
				</li>
			</ul>
		</div>
		
		<!-- 상단 탭 -->
		<div class="tab">
			<div class="idTab">내 아이디 찾기</div>
			<div class="pwTab">새 비밀번호 발급</div>
		</div>
		
		<!-- 아이디 찾는 부분 -->
		<div class="id_find">
			<form id="id_find" name="id_find" method="post" action="/Trainer/T-IdOK">
			<table>
				<tr>
					<td><h1>아이디 찾기</h1></td>
				</tr>
				<tr>
					<td><input type="text" placeholder="이름" id="t_name" name="t_name" class="form-control" required></td>
				</tr>
				<tr>
					<td>
						<input type="text" placeholder="이메일 ex)john@ptm.com" id="t_email" name="t_email"  class="form-control" required>
					</td>
				</tr>
				<tr>
					<td>
						<input type="button" class="btn btn-primary" id="idFindButton"  value="찾기" >
					</td>
				</tr>
			</table>
			</form>
		</div>
		
		<!-- 아이디 찾은 결과 나오는 Modal -->
		<div class="idResultContainer">
			<div class="idResultBox" >
			<form id="idResult" name="idResult" method="post" action="#">
				<table id="idResultTable">
					<tr>
						<td align="right" height="28" bgcolor="#f4f4f4">[ <a href="javascript:close();" class="close"><b>닫기</b></a> ]&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td bgcolor="gold" height="5"></td>
					</tr>
					
					<!-- 결과를 가운데 정렬하고 싶어서 넣은 tr -->
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td height="100" id="idResultHere" align="center" name="idResult">
							회원님의 아이디는 ${t_id}입니다.
						</td>
					</tr>
					<tr>
						<td><input type="button" class="btn btn-primary" id="idOkButton" value="확인" onclick="idResultOK()"> </td>
					</tr>
				</table>
			</form>	
			</div>
		</div>
		
	</div>
</body>
</html>