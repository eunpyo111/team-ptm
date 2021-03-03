<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>title</title>
<script src="/resources/Js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function()
	{
		$(".topgrid").click(function()
		{
			$(".navicontents").slideToggle(1000);
		});

		$(".memberexercise").click(function()
		{
			window.location.href = "/Member/M-Exercise";
		});
		$(".topback").click(function()
		{
			window.location.href = "/Member/M-List";
		})
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
.tinfo
{
	width:100%; 
	height:20vh;
	margin-bottom:3em;
    text-align: center;
}
.chbutton, .exbutton
{
	border:1px solid #F2F2F2;
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
.list:hover
{
	background-color:blue;
	cursor:pointer;
}
.Charts
{
	/* border: 1px solid black; */
	clear:both;
	width:100%;
	margin-top: 4em;
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
.Charts table > tr:last-child > td
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
	.Charts table
	{
		font-size: 1.5em;
	}
	.ExerciseChart table
	{
		font-size:1.5em;
	}
	.angle-up{
		right:3%;
		bottom:2;
	}
}
</style>
<script src="//www.google.com/jsapi"></script>
<script>

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

    //파이형 차트 
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Count Ex'],
          ['하체',    10],
          ['등',      5],
          ['가슴',  	 5],
          ['어깨', 	 4],
          ['코어',    4],
          ['이두',    2],
          ['삼두',    2]
        ]);

        var options = {
         	title: '운동 횟수(마동석)',
  			chartArea: {width: '100%'}
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
        
        //alert("draw done");
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
					<td colspan="4" height='1' style='background-color:#cccccc'></td>
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
			</table>
		</div>
		
		<!-- 누르면 상단으로 -->
		<a class="angle-up" href="#top">[TOP]</a>
		
	</div>
</body>
</html>