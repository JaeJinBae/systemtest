<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	*{
		margin:0;
		padding:0;
	}
	header{
		width:100%;
		height:130px;
		background: green;
	}
	.mainBanner{
		width:100%;
		height:600px;
		background: red;
	}
	img{
		width:100%;
		display:none;
	} 
</style>
</head> 
<body> 
	<form id="f1" method="post" action="excelDown">
		<input type="submit" value="엑셀 다운">
	</form>
	<header>
	
	</header>
	<div class="mainBanner">
		<img src="${pageContext.request.contextPath}/resources/images/test1.png">
	</div>
	
</body>
</html>