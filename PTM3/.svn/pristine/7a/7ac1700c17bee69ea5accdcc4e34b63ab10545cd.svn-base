<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PTM login</title>
<script src="/resources/Js/jquery-3.5.1.min.js"></script>
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
}
input[type=password] 
{
	font-family: "Geogia";
	&::placeholder {font-family: "NanumSquare";}
}
input[type=checkbox]
{
	width:10%;
	display:inline;
	font-size:2em;
}
.allcontents
{
	/* border:1px solid black; */
	width:20%;
	height:100vh;
	margin:auto;
}
.contentstext
{
	/* border:1px solid black; */
	margin:auto;
	width:100%;
	height:30vh;
	padding-top:7em;
	font-size:1rem;
}
.contentstext span
{
	font-size:3em;
	line-height:110%;
}
b
{
	font-size:1.5em;
	color: #1E3269;
}
table
{
	font-size:1.4rem;
	margin:auto;
	margin-top:2em;
	width:100%;
	height:18em;
}
td
{
	text-align:left;
}
input
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
		width:90%;
		height:100%;
	}
}
</style>
</head>
<body>
<!-- Cookie가 비어있지 않을 때 checked 속성을 줌 -->
	<c:if test="${not empty cookie.user_check}">
		<c:set value="checked" var="checked"/>
	</c:if>


	
	<!-- 전체 컨텐츠를 감싼 div -->
	<div class="allcontents">
		
		<div class="contentstext">
			<span>PT 기록을<br><b>PTM</b>에서<br> 간편하게 하세요.</span>
		</div>
		
		<form name="login" method="post" action="/T-LoginOK">
		<table>
			<tr>
				<td><input type="text" id="t_id" name="t_id" class="form-control" placeholder="ID" required></td>
			</tr>
			<tr>
				<td>
					<input type="password" class="form-control" id="t_pw" name="t_pw" placeholder="PASSWORD" required>
					<c:if test = "${msg == 'failure'}">
						<div style = "color:red">
							아이디 또는 비밀번호가 일치하지 않습니다.
						</div>
					</c:if>
				</td>
			</tr>
			<tr>
				<td><input type="checkbox" id="user_check" name="user_check" ${checked}>아이디 저장</td>
			</tr>
			<tr>
				<td><input type="submit" id="loginBtn" class="btn btn-primary" value="LOGIN"></td>
			</tr>
			<tr>
			</tr>
			<tr>
				<td height='1' style='background-color:#cccccc'></td>
			</tr>
			<tr>
			</tr>
			<tr>
				<td><input type="button" class="btn btn-success" value="ID / PW 찾기" onclick="location.href='/Trainer/T-Id'"></td>
			</tr>
			<tr>
				<td><input type="button" class="btn btn-success" value="회원가입" onclick="location.href='/Trainer/T-Join'"></td>
			</tr>
		</table>
		</form>
		
	</div>
</body>
</html>