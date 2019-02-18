<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정은재바른이 치과교정과 치과의원</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-rwdImageMaps/1.6/jquery.rwdImageMaps.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@media only screen and (min-width:320px) and (max-width:767px){
	*{
		margin:0;
		padding:0;
	}
	body{
		position: relative;
	}
	#btn{
		position: fixed;
		top: 10px; 
		right: 0px;
	}
	.wrap{
		width:100%; 
		background: url("${pageContext.request.contextPath}/resources/images/lending_bg_test1.jpg") repeat;
		background-size: contain;
	}
	.contentWrap{
		width:100%;
		margin:0 auto;
	}
	.contentWrap > img{
		width:100%;
	}
}
@media only screen and (min-width:768px) and (max-width:1099px){
	*{
		margin:0;
		padding:0;
	}
	body{
		position: relative;
	}
	#btn{
		position: fixed;
		top: 10px; 
		right: 20px;
	}
	.wrap{
		width:100%; 
		background: url("${pageContext.request.contextPath}/resources/images/lending_bg_test1.jpg") repeat;
		background-size: contain;
	}
	.contentWrap{
		width:100%;
		margin:0 auto;
	}
	.contentWrap > img{
		width:100%;
	}
}
@media only screen and (min-width:1100px){
	*{
		margin:0;
		padding:0;
	}
	body{
		position: relative;
	}
	#btn{
		position: fixed;
		top: 10px; 
		right: 20px;
	}
	.wrap{
		width:100%; 
		background: url("${pageContext.request.contextPath}/resources/images/lending_bg_test1.jpg") repeat;
		background-size: contain;
	}
	.contentWrap{
		width:1200px;
		margin:0 auto;
	}
	.contentWrap > img{
		width:100%;
	}
}	
</style>
<script>
	$(function(){
		//이벤트 이미지맵 반응형 
		$('img[usemap]').rwdImageMaps();
	});
</script>
</head>
<body>
	<a id="btn" href="${pageContext.request.contextPath}/jdental1"><input type="button" value="NEXT"></a>
	<div class="wrap">
		<div class="contentWrap">
			<img id="mainImg" src="${pageContext.request.contextPath}/resources/images/lending_test6.png" alt="정은재바른이치과교정과치과의원" usemap="#mainImg">
			<map id="main_img" name="mainImg">
				<area shape="rect" alt="" title="" coords="1599,58,1861,102" href="http://jbarune.com/template/main/main.php" target="" />
			</map>
		</div>
	</div>
</body>
</html>