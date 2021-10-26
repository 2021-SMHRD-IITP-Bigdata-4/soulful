<%@page import="kr.smhrd.mapper.CommentsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="cpath" value="${pageContext.request.contextPath}"/> <!-- ★ 변수선언 -->
<!DOCTYPE html>
<html lang="en">
<head>
	<title>SOULFUL USER COMMENTS</title>
	<meta charset="utf-8" />
	<meta name="description" content="Music, Musician, Bootstrap" />
	  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimal-ui" />
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	  <!-- for ios 7 style, multi-resolution icon of 152x152 -->
	  <meta name="apple-mobile-web-app-capable" content="yes">
	  <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
	  <link rel="apple-touch-icon" href="resources/images/logo.png">
	  <meta name="apple-mobile-web-app-title" content="Flatkit">
	  <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
	  <meta name="mobile-web-app-capable" content="yes">
	  <link rel="shortcut icon" sizes="196x196" href="resources/images/logo.png">
	  
	  <!-- style -->
	  <link rel="stylesheet" href="resources/css/animate.css/animate.min.css" type="text/css" />
	  <link rel="stylesheet" href="resources/css/glyphicons/glyphicons.css" type="text/css" />
	  <link rel="stylesheet" href="resources/css/font-awesome/css/font-awesome.min.css" type="text/css" />
	  <link rel="stylesheet" href="resources/css/material-design-icons/material-design-icons.css" type="text/css" />
	  <link rel="stylesheet" href="resources/css/bootstrap/dist/css/bootstrap.min.css" type="text/css" />
	
	  <!-- build:css resources/css/styles/app.min.css -->
	  <link rel="stylesheet" href="resources/css/styles/app.css" type="text/css" />
	  <link rel="stylesheet" href="resources/css/styles/style.css" type="text/css" />
	  <link rel="stylesheet" href="resources/css/styles/font.css" type="text/css" />
	  
	  <link rel="stylesheet" href="resources/libs/owl.carousel/dist/assets/owl.carousel.min.css" type="text/css" />
	  <link rel="stylesheet" href="resources/libs/owl.carousel/dist/assets/owl.theme.css" type="text/css" />
	  <link rel="stylesheet" href="resources/libs/mediaelement/build/mediaelementplayer.min.css" type="text/css" />
	  <link rel="stylesheet" href="resources/libs/mediaelement/build/mep.css" type="text/css" />
	<script type="text/javascript">
		function goDel(comm_seq) {
			location.href = "${cpath}/commentsDelete.do?comm_seq=" + comm_seq;
		}
		function goList() {
			location.href = "${cpath}/commentsList.do";
		}
	</script>
</head>

<body>
<div class="container">
  <h2>Soulful 사용자 코멘트</h2>
  <div class="panel panel-default">
    <div class="panel-heading">SOULFUL USER COMMENTS</div>
    <div class="panel-body">
    	<!-- table을 form 태그로 감싸기 -->
    	<form action="${cpath}/commentsUpdate.do" method="post">
    	<input type="hidden" name="comm_seq" value="${vo.comm_seq}">
		<table class="table table-bordered table-hover">
		<tr>
			<td>코멘트 번호</td>
			<td>${vo.comm_seq}</td>
		</tr>
		<tr>
			<td>노래</td>
			<td><input type="text" name="title" class="form-control" value="${vo.song_seq}"></td>
		</tr>
		<tr>
			<td>코멘트 내용</td>
			<td><textarea rows="5" name="contents" class="form-control">${vo.comm_content}</textarea></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${vo.user_id}</td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="submit" class="btn btn-primary btn-sm">수정</button>
				<button type="reset" class="btn btn-success btn-sm">취소</button>
				<button type="button" class="btn btn-warning btn-sm" onclick="goDel(${vo.comm_seq})">삭제</button>
				<button type="button" class="btn btn-info btn-sm" onclick="goList()">목록</button>
			</td>
		</tr>
		</table>
		</form>
	</div>
    <div class="panel-footer">Panel Content</div>
  </div>
</div>
</body>
</html>