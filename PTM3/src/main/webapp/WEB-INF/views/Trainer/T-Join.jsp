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
<script src="/resources/Js/T-Join.js"></script>
<script>
	
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
.jointitle
{	
	padding-top:2em;
	text-align:center;
}
.buttons
{
	display:flex;
	flex-direction:column;
}
.buttons button
{
	width:90%;
	margin: 0.5em 0em;
	margin-left:5%
}
input[type=submit]
{
	width:90%;
	margin: 0.5em 0em;
	margin-left:5%
}
.join_table
{
	width:90%; 
	height:50%;
	font-size:1.5em;
	margin:auto;
	margin-top:1.5em;
	margin-bottom:1.5em;
	
}
input[type=text] 
{
	width:90%;
}
input[type=password] 
{
	width:90%;
}
#t_addr1
{
	width:63%;
	display:inline;
}
input[type=password] 
{
	font-family: "Geogia";
	&::placeholder {font-family: "NanumSquare";}
}
@media screen and (max-width:787px)
{
	body{
		width:100%;
	}
	.allcontents{
		width:100%;
		padding-top: 3em;
	}
	.topcontents
	{
		height:7vh;
	}
	#t_addr1
	{
		width:58%;
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
					<a href="/Trainer/T-Login">로그인</a>
				</li>
			</ul>
		</div>
		
		<!-- 회원가입란 -->
		<div class="join">
			<div class="jointitle">
				<h1>회원가입</h1>
			</div>
			<form id="join" name="join" method="post" action="T-JoinOK">
			<table class="join_table" style="">
				<tr>
					<th>이름</th>
					<td>
						<input name="t_name" id="t_name" type="text" class="form-control"  required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>
						<input name="t_id" id="t_id" type="text" class="form-control" minlength="5" maxlength="20" placeholder="5~20자, 영문자, 숫자, 특수문자 _, - 사용 가능" required oninput="t_idCheck()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
		        </tr>
		        <tr >
		        	<th></th>
		        	<td class="id_message"></td>
		        </tr >
				<tr>
					<th>비밀번호</th>
					<td>
						<input name="t_pw" id="t_pw" type="password" class="form-control" minlength="8" maxlength="16"  placeholder="8~16자, 영문자, 숫자, 특수문자  사용" required oninput="t_pwCheck()">
					</td>
				</tr>
				<tr >
		        	<th></th>
		        	<td class="pw_message"></td>
		        </tr>
				<tr>
					<th>비밀번호확인</th>
					<td>
						<input name="t_pwc" id="t_pwc" type="password" class="form-control"  minlength="8" maxlength="16"  required oninput="t_pwcCheck()" >
					</td>
				</tr> 
				<tr >
		        	<th></th>
		        	<td class="pwc_message"></td>
		        </tr>      
				<tr>
					<th>휴대폰 번호</th>
					<td>
						<input type="text" id="t_phone" name="t_phone" class="form-control" width="200px" maxlength="20" placeholder="'-'없이 입력해주세요"  required oninput="t_phoneCheck()">
					</td>
				</tr>
				<tr >
		        	<th></th>
		        	<td class="phone_message"></td>
		        </tr> 
				<tr>
					<th>이메일</th>
					<td>
						<input type="text"  id="t_email" name="t_email" class="form-control" placeholder="ex)john@ptm.com" required oninput="t_emailCheck()">
					</td>
				</tr>
				<tr >
		        	<th></th>
		        	<td class="email_message"></td>
		        </tr>
				<tr class="tjoin">
					<th>근무지</th>
					<td>
						<input type="text"  id="t_addr1" name="t_addr1" class="form-control" required>
						<button type='button' onclick="juso()" class='btn btn-primary'>주소찾기</button>
					</td>
				</tr>
				<tr class="tjoin">
					<th></th>
					<td>
						<input type="text" id="t_addr2" name="t_addr2" class="form-control" required>
					</td>
				</tr>
			</table>
			<div class="buttons">
				<input type="button" value="회원가입" class="btn btn-primary" onclick="doSubmit()">
				<button type="button" class="btn btn-danger" onclick="location.href='/'" >취소</button>
			</div>
			</form>
		</div>
		
	</div>
</body>
</html>