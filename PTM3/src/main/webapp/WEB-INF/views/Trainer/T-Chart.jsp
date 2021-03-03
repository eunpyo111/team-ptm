<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		//네비게이션
		$(".topgrid").click(function()
		{
			$(".navicontents").slideToggle(1000);
		});
		
		//상단 뒤로가기
		$(".topback").click(function()
		{
			window.location.href = "/Trainer/T-List";
		});
		
		//운동 페이지로 이동
		$(".memberexercise").click(function()
		{
			var m_qr = $("input[name=m_qr]").val();
			var p_no = $("input[name=p_no]").val();
			window.location.href = "/Trainer/T-Round?m_qr="+m_qr+"&p_no="+p_no; 
		});
		
		//
		$("#PersonalW").click(function()
		{
			$(".PersonalOP div").html("<input type='text' id='' name=''>");
			$("#PersonalW").html("<button type='button' class='btn btn-primary' id='PersonalS'>저장</button>");
		});
		
	});
	
	//chart 데이터 입력하는 창
	function updateinbody()
	{	
		$(".modalchang").css("visibility", "visible");
		$(".modalchang").css("opacity", "1");
		$(".modalnaeyong").toggle();
	}
	function updateok(){
		
		$(".modalnaeyong").toggle();
		$(".modalchang").css("visibility", "hidden");
		$(".modalchang").css("opacity", "0");
	}
	
</script>
<script src="//www.google.com/jsapi"></script>
<script>
	
	//인바디
	//첫번째 차트
	google.charts.load('current', {packages: ['corechart', 'bar']});
	google.charts.setOnLoadCallback(drawBasic1);
	function drawBasic1()
	{
		var data = google.visualization.arrayToDataTable([
			['', ''],
			['', 82]
		]);
	
		var options = {
			title: '체중',
			chartArea: {width: '100%'},
			hAxis:
			{
				title: '',
				minValue: 0,
				maxValue: 205
	        },
	        vAxis:
	        {
				title: '',
	        }
		};
	
		var chart = new google.visualization.BarChart(document.getElementById('charts1'));
		chart.draw(data, options);
	}
	
	//두번째 차트
	google.charts.load('current', {packages: ['corechart', 'bar']});
	google.charts.setOnLoadCallback(drawBasic2);
	function drawBasic2()
	{
		var data = google.visualization.arrayToDataTable([
			['', ''],
			['', 25.4]
		]);
	
		var options = {
			title: '근골격량',
			chartArea: {width: '100%'},
			hAxis:
			{
				title: '',
				minValue: 0,
				maxValue: 170
	        },
	        vAxis:
	        {
				title: '',
	        }
		};
	
		var chart = new google.visualization.BarChart(document.getElementById('charts2'));
		chart.draw(data, options);
	}
	
	//세번째 차트
	google.charts.load('current', {packages: ['corechart', 'bar']});
	google.charts.setOnLoadCallback(drawBasic3);
	function drawBasic3()
	{
		var data = google.visualization.arrayToDataTable([
			['', ''],
			['', 30.8]
		]);
	
		var options = {
			title: '체지방량',
			chartArea: {width: '100%'},
			hAxis:
			{
				title: '',
				minValue: 0,
				maxValue: 520
	        },
	        vAxis:
	        {
				title: '',
	        }
		};
	
		var chart = new google.visualization.BarChart(document.getElementById('charts3'));
		chart.draw(data, options);
	}

</script>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	
	//운동 차트
	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {

	var data = google.visualization.arrayToDataTable
	([
		['Task', 'Count Ex'],
		['하체', 10],
		['등', 5],
		['가슴', 5],
		['어깨', 4],
		['코어', 4],
		['이두', 2],
		['삼두', 2]
	]);

	var options = {
		title: '김형근 님의 부위별 운동 진행도',
		chartArea: {width: '100%'}
	};

	var chart = new google.visualization.PieChart(document.getElementById('piechart'));

	chart.draw(data, options);
    
	}

	$(window).resize(function()
	{ 
		if(this.resizeTO) clearTimeout(this.resizeTO);
		this.resizeTO = setTimeout(function()
			{ $(this).trigger('resizeEnd'); 
			}, 00)
	}); // redraw graph when window resize is completed

	$(window).on('resizeEnd', function() 
	{
		drawVisualization(); 
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
	padding:0.5em 0.5em;
}
.profilimg
{
	width:130px;
	margin:2em 10em 2em 10em;
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
.Charts
{
	/* border: 1px solid black; */
	clear:both;
	width:100%;
	padding-top:5em;
}
.Charts table
{
	width:90%;
	height:50vh;
	margin:auto;
	font-size: 1.8em;
	font-weight:bold;
	text-align: center;
}
.Charts tr:last-child > td:last-child
{
	text-align:right;
}
#charts1
{
	width:100%;
	height:10vh;
	box-sizing: border-box;
	clear:both;
}
#charts2
{
	width:100%;
	height:10vh;
	box-sizing: border-box;
	clear:both;
}
#charts3
{
	width:100%;
	height:10vh;
	box-sizing: border-box;
	clear:both;
}
.ExerciseChart
{
	border-top:1px solid silver;
	margin-top:10em;
	clear:both;
	padding-bottom:10em;
}
.ExerciseChart table
{
	width:90%;
	height:20vh;
	font-size: 1.8em;
	margin:auto;
}
.ExerciseChart tr:last-child > td:last-child
{
	text-align:right;
}
.angle-up
{
	position:fixed;
	right:31%;
	bottom:2%;
	color:black;
	font-size: 1rem;
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
}
.modalnaeyong
{
	display:none;
	left:40%;
	top:32%;
	width:30em;
	height:30em;
	position:fixed;
	border-radius:20px;
	background-color: white;
	padding-top:5em;
}
.modalnaeyong table
{
	margin:auto;
	width:70%;
	height:25vh;
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
	.profilimg{
		width:100px;
		margin:1em 5em;
	}
	.memberprofil{
		font-size: 1.5em;
		margin:auto;
		overflow:auto;
	}
	.memberchart{
		font-size:1.5em;
		padding:0.5em 5em;
	}
	.memberexercise{
		font-size:1.5em;
		padding:0.5em 5em;
	}
	.Charts table
	{
		font-size: 1.5em;
	}
	.ExerciseChart table
	{
		font-size:1.5em;
	}
	.modalchang{
		width:100%;
	}
	.modalnaeyong{
		left:10%;
		top:20%;
	}
	.angle-up{
		right:3%;
		bottom:2;
	}
}
</style>
</head>
<body>
	<!-- m_qr,p_no -->
	<input type="hidden" name="p_no" value="${roundVO.p_no }">
	<input type="hidden" name="m_qr" value="${roundVO.m_qr }">
	
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
				<table>
					<tr>
						<th>-회원성함</th>
					</tr>
					<tr>
						<td>${roundVO.m_name }</td>
					</tr>
					<tr>
						<th>-전화번호</th>
					</tr>
					<tr>
						<td>${roundVO.m_phone }</td>
					</tr>
					<tr>
						<th>-이메일</th>
					</tr>
					<tr>
						<td>${roundVO.m_email }</td>
					</tr>
				</table>
			</div>
			
			<div class="memberchart">
				통계
			</div>
			
			<div class="memberexercise">
				운동
			</div>
			
			<!-- 인바디 차트 -->
			<div class="Charts">
				<table>
					<tr>
						<td>&nbsp;</td>
						<td>표준이하</td>
						<td>표준</td>
						<td>표준이상</td>
					</tr>
					<tr>
						<td colspan="4">
							<div id="charts1">
								
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<div id="charts2">
								
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<div id="charts3">
								
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="4" height='1' style='background-color:#f2f2f2'></td>
					</tr>
					<tr>
						<td colspan="4">
							<button type="button" class="btn btn-primary" onclick="updateinbody()">업데이트</button>
						</td>
					</tr>
				</table>
			</div>
			
				
			<!-- 운동 기록 차트 -->
			<div class="ExerciseChart">
				<table>
					<tr>
						<td colspan="2" class="tdlist">
							 <div id="piechart"></div>
						</td>									
					</tr>	
					<tr>
						<td>트레이너 소견 : </td>
						<td class="PersonalOP">
							 <div>상체운동 횟수를 늘려야 합니다.</div>
						</td>									
					</tr>
					<tr>
						<td colspan="2">
							<button type="button" class="btn btn-primary" id="PersonalW">수정</button>
						</td>
					</tr>
				</table>
			</div>
	
		<!-- 누르면 상단으로 -->
		<a class="angle-up" href="#top">[TOP]</a>
			
		</div>

		
	</div>
	
	<!-- 인바디 입력창 -->	
	<div class="modalchang">
		<div class="modalnaeyong">
			<form id="inbody" name="inbody" action="" method="get">
			<table>
				<tr>
					<td><input type="text" placeholder="체중 (kg)" class="form-control"></td>
				</tr>
				<tr>
					<td><input type="text" placeholder="골격근량 (kg)" class="form-control"></td>
				</tr>
				<tr>
					<td><input type="text" placeholder="체지방량 (kg)" class="form-control"></td>
				</tr>
				<tr>
					<td><input type="button" value="입력" class="btn btn-primary" onclick="updateok()"></td>
				</tr>
			</table>
			</form>
		</div>
	</div>


</body>
</html>