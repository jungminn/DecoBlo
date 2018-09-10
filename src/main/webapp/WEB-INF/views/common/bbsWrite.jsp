<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Notice</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link type="text/css" rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
<link rel="stylesheet" href="decoblo/css/helpPage.css" />
<link rel="stylesheet" href="pixelarity/assets/css/main.css" />
<style>

header#header.top-menu {
	position: relative;
	background-color: #000;
}

</style>
<script type="text/javascript" src="resources/ckeditor/ckeditor.js"></script>
<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function bbsList() { 	// 글목록으로 이동
	location.href = "${pageContext.request.contextPath}/bbsList";
}

function bbsCheck(){	// 글쓰기 유효성 검사
	var bbsTitle = $('#bbsTitle').val();
	var bbsContent = CKEDITOR.instances.bbsContent.getData()
	
	alert(bbsTitle);
	alert(bbsContent);
	
	if (bbsTitle == '' || bbsContent == ''){
		alert('제목과 내용을 입력하세요.');
		return false;
	}
	
	return true;
}


</script>
<style type="text/css">
	.table-wrapper {
		margin: o auto;
		width: 1200px;
		
	}
	
	#main {
		align : center;
	}
	

</style>
</head>
<body class="landing">

<header id="header" class="alt top-menu">
	<h1>
		<a href="index.html">Deco <span>Blong</span></a>
	</h1>
	<nav id="nav">
		<ul>
			<li id="login">로그인</li>
			<li><a href="#" class="icon fa-angle-down">한국어(KO)</a>
				<ul>
					<li><a href="#">한국어(KO)</a></li>
					<li><a href="#">日本語(JP)</a></li>
				</ul>
			</li>
			<li><a href="main">메인</a></li>
			<li><a href="dashboard">대시보드</a></li>
			<li><a href="config">블로그 수정</a></li>
			<li><a href="customer">고객센터</a></li>	
		</ul>
	</nav>
</header>
	
<section id="main">
	
<!-- <form action="writeBbs" method="post" enctype="multipart/form-data"> -->
<form action="writeBbs" method="post">
<!-- 게시글작성 게시판번호 넘겨주기 -->
<input type="hidden" name="boardNo" id="boardNo" value="7"/>
<input type="hidden" name="bbsParent" id="bbsParent" value="${bbsParent}"/>
<input type="hidden" name="type" id="type" value="${type}"/>

	<div class="table-wrapper"  style="align:center;" >
	<table class="board" border="1" style="width: 1200px;">
		<tr>
			<th>제목</th>
			<td><input type="text" name="bbsTitle" id="bbsTitle" value="${bbs.bbsTitle}"></td>
		</tr>

<!-- 	<tr>
			<th>첨부파일</th>
			<td><input type="file" name="upload"></td>
		</tr> -->
		<tr>
			<th>내용</th>
			<td><textarea rows="10" cols="50" name="bbsContent" id="bbsContent" class="bbsContent">${bbs.bbsContent}</textarea> </td>
		</tr>
		<tr>
			<td class="btn" colspan="2" align="center">
				<input type="button" value="목록" onclick="bbsList()"/>
				<input type="submit" value="등록" onclick="return bbsCheck()"> 
			</td>
		</tr>
	</table>
	<script type="text/javascript">CKEDITOR.replace('bbsContent'
													, {filebrowserImageUploadUrl:'ckeditorImageUpload'});</script>
</div>
</form>


</section>

</body>
</html>