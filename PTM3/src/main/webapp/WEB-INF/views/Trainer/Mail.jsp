<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<!-- Bootstrap -->
<link href='<c:url value="/css/kfonts2.css" />' rel="stylesheet">
 
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/resources/Js/jquery-3.5.1.min.js"></script>

<title>메일 보내기</title>
</head>
<body>
<div class="container">
  <h4>메일 보내기</h4>
  <form action="${pageContext.request.contextPath}/mail/mailSending" method="post">
    <div align="center"><!-- 받는 사람 이메일 -->
      <input type="text" name="tomail" size="120" style="width:100%" placeholder="상대의 이메일" >
    </div>     
    <div align="center"><!-- 제목 -->
      <input type="text" name="title" size="120" style="width:100%" placeholder="제목을 입력해주세요" >
    </div>
    <p>
    <div align="center"><!-- 내용 --> 
      <textarea name="content" cols="120" rows="12" style="width:100%; resize:none" placeholder="내용#" ></textarea>
    </div>
    <p>
    <div align="center">
      <input type="submit" value="메일 보내기">
    </div>
  </form>
</div>
</body>
</html> 