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
<title>Member Search</title>
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
		
		//$(".searchResult").hide();
		
		$('.ptMakeButton').click(function() 
		{ 
			
			var result = confirm("김형근님의 PT등록을 진행하시겠습니까?"); 
			if(result) 
			{ 	
				alert("PT등록이 정상적으로 처리되었습니다.")
				location.replace("/Trainer/T-List"); 
			} else { 
				alert("PT등록이 취소되었습니다.")
			} 
		});
		
		$("#fileUp").change(function()
		{
			LoadImg(this);
		})
	});
	function insertPt(m_qr,m_name){
		var m_qr = m_qr;
		var m_name = m_name;		
		var result = confirm(m_name+"님의 PT등록을 진행하시겠습니까?");
		if(result){
			alert(m_qr);
			$.ajax({	    	
	           type : "POST",
	           url : "/Trainer/InsertPT",
	           data : {"m_qr":m_qr},
	           success : function(){ 
	        	   alert("등록이 완료되었습니다");
/* 	                alert("생성 끝");
	        		$(".accountMakeBox").toggle();
	        		$(".accountMakeContainer").css("visibility", "hidden");
	        		$(".accountMakeContainer").css("opacity", "0"); */
	        		location.href = "/Trainer/T-List" ;
	           },
	           error:function(xhr,status,error){
	               alert("$");
	               alert("error\nxhr : " + xhr + ", status : " + status +	 ", error : " + error);
	           }
	       });
		} else
		{
			alert("PT등록이 취소되었습니다.");
		}
	}
	
	
	// 재발급
	function RecreateQR(){
		var result = confirm("김형근님의 QR코드를 재발급하시겠습니까?"); 
		if(result) 
		{ 	
			console.log("m_qr::"+m_qr);
			alert("새 QR코드가 김형근님께서 등록하신 이메일 주소로 발송되었습니다.")
		} else { 
			alert("QR코드 재발급이 취소되었습니다.")
		} 
	}
	//등록중인 버튼 
	function stopPt(){
		alert("이미 등록된 회원입니다");
	}
	function accountmake()
	{
		$(".accountMakeContainer").css("visibility", "visible");
		$(".accountMakeContainer").css("opacity", "1");
		$(".acountMakeBox").toggle();
	}	
/* 	function QRMake()
	{
		alert("QR코드가 등록하신 이메일 주소로 발송되었습니다.");
		$(".accountMakeBox").toggle();
		$(".accountMakeContainer").css("visibility", "hidden");
		$(".accountMakeContainer").css("opacity", "0");
	} */
	// 취소 눌렀을때
	function QRclose()
	{
		$(".accountMakeBox").toggle();
		$(".accountMakeContainer").css("visibility", "hidden");
		$(".accountMakeContainer").css("opacity", "0");
	}
	
/* 	function showResult()
	{
		$(".searchResult").show();	
	}
 */
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
	//qr코드 생성
	function qr_code_create(){
	    alert("qr코드 생성");
	    var formData = new FormData($("#accountMake")[0]);
	    alert(formData);
	    $.ajax({
	           type : "POST",
	           url : "/Trainer/QRcreate",
	           data : formData,
				contentType:false,
				processData:false,
	           success : function(){                     
	                alert("생성 끝");
	        		$(".accountMakeBox").toggle();
	        		$(".accountMakeContainer").css("visibility", "hidden");
	        		$(".accountMakeContainer").css("opacity", "0");
	           },
	           error:function(){
	               alert("이메일, 전화번호는 중복될 수 없습니다")
	           }
	       });
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
	/* border:1px solid black; */
	width:40%;
	height:100%;
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

.searchContainer
{
	font-size:1.5em;
}
#searchChang
{
	width:200px;
	display:inline;
}
.form-select
{
	width:100px;
	display: inline;
}
.searchBox
{
	margin:2em 0em;
	text-align:center;
}
.searchResult
{
	text-align:center;
}
.searchResultTable
{
	width:100%;
	text-align:center;
	font-size:1em;
	margin:auto;
}
#accountMakeTable
{
	width:100%; 
	cellpadding:1em; 
	cellspacing:1em; 	
	text-align:center;
}
#accountMakeTable td
{
	padding:0.3em;
}
.accountMakeContainer
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
.accountMakeBox
{
	/* display:none; */
	left:32.5%;
	top:20%;
	width:40em;
	height:40em;
	position:fixed;
	background-color: white;
	font-size:1.5em;
}
#profilimg
{
	width:11em; 
	height:11em;
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
	.searchResultTable
	{
		width:100%;
	}
	.searchResultTable > thead > tr > th:first-child
	{
		width:20%;
	}
	.searchResultTable > tbody > tr > td:first-child
	{
		width:20%;
	}
	.accountMakeContainer
	{
		width:100%;
	}
	.accountMakeBox
	{
		top:10%;
		left:8%;
		width:85%;
	}
	#searchChang
	{
		width:150px;
	}
}
</style>
</head>
<body>
	<!-- t_no -->
	<input type="hidden" value="${sessionScope.t_no }">
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
		
		<div class="searchContainer">
		
			<form id="searchReason" method="get" action="/Trainer/SearchMember">
				<div class="searchBox" style="font-size:1.5em;">
					<select class="form-select" name="searchType">
						<option value="name">이름</option>
						<option value="phone">전화번호</option>
					</select>
					<input type="text" class="form-control" id="searchChang" name="keyword">
					<input type="submit" class="btn btn-primary" id="searchButton" value="조회">
					<button type="button" class="btn btn-primary" id="accountMakeButton" onclick="accountmake()">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-plus" viewBox="0 0 16 16">
							<path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
							<path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
						</svg>
					</button>
				</div>
			</form>
			
			<div class="searchResult">
				<table class="searchResultTable">
					<thead>
						<tr>
							<th>이름</th>
							<th>전화번호</th>
							<th>PT등록현황</th>
						</tr>
					</thead>
					<tbody>
						 <c:forEach items="${list}" var="item" varStatus="status">
							<tr>
								<td><c:out value="${item.m_name }"/></td>
								<td><c:out value="${item.m_phone }"/></td>
								<td><c:out value="${item.m_joindate }"/></td>
								<td>
								 <c:if test="${item.ptCnt eq 0}">
									<input type="button" class="btn btn-primary" id="ptMakeButton" onclick="insertPt('${item.m_qr}','${item.m_name}')" value="PT등록">
								</c:if>	
								 <c:if test="${item.ptCnt ne 0}">
									<input type="button" class="btn btn-danger" id="ptMakeButton" onclick="stopPt()"value="PT등록중">
								</c:if>	
									<input type="button" class="btn btn-primary" id="QRremakeButton" value="QR재발급">
								</td>
							</tr>
						
						</c:forEach>
						<!-- <tr>
							<td colspan="4">
								<hr style="height:0.1em;"/>
							</td>
						</tr>
						<tr>
							<td>조소현</td>
							<td>010-1234-5679</td>
							<td>1994.03.04</td>
							<td>
								PT진행중
								<input type="button" class="btn btn-primary" id="QRremakeButton" value="QR재발급">
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<hr style="height:0.1em;"/>
							</td>
						</tr>
						<tr>
							<td>홍은표</td>
							<td>010-1234-5677</td>
							<td>1996.04.05</td>
							<td>
								PT진행중
								<input type="button" class="btn btn-primary" id="QRremakeButton" value="QR재발급">
							</td>
						</tr> -->
					</tbody>
				</table>
			</div>
		</div>	
		
		<div class="accountMakeContainer">
			<div class="accountMakeBox" >
			<form id="accountMake" name="accountMake" enctype="multipart/form-data">
				<table id="accountMakeTable">
					<!-- 결과를 가운데 정렬하고 싶어서 넣은 tr -->
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><h2>신규 회원 등록</h2></td>
					</tr>
					<tr>
						<td>
							<input type="text" class="form-control" name="m_name" placeholder="이름">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" class="form-control" name="m_phone" placeholder="전화번호">
						</td>
					</tr>
						
					<!-- 생년월일 부분			
						<tr>
						<td>
							<input type="text" class="form-control" name="birth" placeholder="생년월일">
						</td>
					</tr>
					
					 -->
					<tr>
						<td>
							<input type="text" class="form-control" name="m_email" placeholder="이메일">
						</td>
					</tr>
					<tr>
						<td>
							<img src='/resources/Images/BlankProfile.png'  id='profilimg'>
							<input type='file' name='file' id='fileUp' onchange='LoadImg(this);'>
						</td>
					</tr>
					<tr>
						<td>
							<input type="button" class="btn btn-primary" value="QR발급" onclick="qr_code_create()">
							<input type="button" class="btn btn-danger" value="취소" onclick="QRclose();">
						</td>
					</tr>
				</table>
			</form>	
			</div>
		</div>
		
	</div>
</body>
</html>