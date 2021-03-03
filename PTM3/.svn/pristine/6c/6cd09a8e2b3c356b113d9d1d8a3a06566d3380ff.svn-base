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
	});
	
	function juso(){
		new daum.Postcode({
		oncomplete: function(data) {
		$("#t_addr1").val(data.address);
		}
	}).open();
	}
 
 //=======================================================
 
 	var fa = true; 
	var fb = true;
	var fc = true;
	var fd = true;
	var fe = true;
	
	//비밀번호 검사(특수문자)
	function t_pwCheck()
	{
		var pw = $("#t_pw").val();     
		var sc = ["!","@","#","$","%","^","&","+","="];
		var check_sc= 0;
        for(var i=0;i<sc.length;i++)
        {
	         if(pw.indexOf(sc[i]) != -1)
	         {
	          check_sc = 1;
	         }
        }
        
	     if(check_sc == 0 )
	     {
	     	$(".pw_message").html("!,@,#,$,%,^,&,+,= 등의 특수문자가 들어가 있지 않습니다.").css("color","red");css("display","inline");
	     	fa = false;	
	     }else
	     {
	    	 $(".pw_message").html("").css("display","none");
	     	fa= true;
	     }
	 }
	
	//비밀번호확인검사(비밀번호 동일검사)
	function t_pwcCheck()
	{ 	
		if( $("#t_pw").val() != $("#t_pwc").val())
        {
             $(".pwc_message").html("비밀번호가 일치하지않습니다.").css("color","red").css("display","inline");
             fb= false;
        }else
     	{
        	 $(".pwc_message").html("").css("display","none");
             fb= true;
     	}
	}
	
	//아이디 중복확인
	function t_idCheck() 
	{
		
		var t_id = $("#t_id").val();
		//alert(t_id)
		$.ajax({
			type:'post',
			url:'/Trainer/T-JoinIdCheck',
			data:{"t_id":t_id},  
			success:function(result) 
			{	
				if(result == 1 ) 
				{	
					$(".id_message").text("이미 가입된 아이디입니다").css("color","red");
					fc= false;
					
				}else
				{
					$(".id_message").text("");
					fc= true;
				}
			}
		});
	}
	
	//이메일 중복확인
	function t_emailCheck() 
	{
	
		var t_email = $("#t_email").val();
		$.ajax({
			type:'post',
			url:'/Trainer/T-JoinEmailCheck',
			data:{"t_email":t_email}, 
			success:function(result) 
			{
				if(result == 1) 
				{	
					$(".email_message").text("이미 가입된 이메일입니다").css("color","red");
					fd= false;	
				}else
				{
					$(".email_message").text("");
					fd= true;
				}
			}
		});
	}
	
	//전화번호 중복확인
	function t_phoneCheck()
	{
		
		var t_phone = $("#t_phone").val();
		$.ajax({
			type:'post',
			url:'/Trainer/T-JoinPhoneCheck',
			data:{"t_phone":t_phone}, 
			success:function(result) 
			{	
				if(result == 1) 
				{	
					$(".phone_message").text("이미 가입된 번호입니다.").css("color","red");
					fe= false;
					
				}else
				{
					$(".phone_message").text("");
					fe= true;
				}
			}
		});

	}
	
	//조건 모두 만족할 때 회원가입
	function doSubmit()
	{
		if(fa==true&&fb==true&&fc==true&&fd==true&&fe==true)
		{
			alert('회원가입이 정상적으로 처리되었습니다.');
			document.join.submit();
		}							
		else
		{				
			alert('입력이 올바르지 않습니다.'); 		
		}
	}
	

	
	