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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-rwdImageMaps/1.6/jquery.rwdImageMaps.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@media only screen and (min-width:320px) and (max-width:767px){
	body{
		position: relative;
	}
	#btn{
		position: fixed;
		top:10px;
		right:0px;
	}
	header{
		width:100%;
		background: #fff;
		text-align: center;
	}
	.top{
		width:100%;
		margin:0 auto;
	}
	.top > img{
		width:100%;
	}
	section{
		width:100%;
		background: #fde6ee;
	}
	.mainBannerWrap{
		width:100%;
		margin:0 auto;
	}
	.mainBanner{
		width:100%;
	}
	.mainBanner img{
		width:100%;
	}
	.slick-prev:before, .slick-next:before {
		font-size:24px !important;
		color: #333 !important;
	}
	.slick-prev, .slick-next {
		width:49px;
		height:46px;
	}
	.slick-prev{
		left:0;
	}
	.slick-next{
		right:0;
	}
	.slick-dots{
		bottom:46px !important;
	}
	.slick-dots li.slick-active button:before {
		opacity:1 !important;
		color: #f2799c !important;
	}
	.slick-dots li button:before {
		font-size:12px;
	}
	footer{
		width:100%;
		background: #fde6ee;
	}
	.bottom{
		width:100%;
		margin:0 auto;
	}
	.bottom > img{
		width:100%;
	}
}
@media only screen and (min-width:768px) and (max-width:1099px){
	@media only screen and (orientation:portrait){
		body{
			position: relative;
		}
		#btn{
			position: fixed;
			top:10px;
			right:20px;
		}
		header{
			width:100%;
			background: #fff;
			text-align: center;
		}
		.top{
			width:100%;
			margin:0 auto;
		}
		.top > img{
			width:100%;
		}
		section{
			width:100%;
			background: #fde6ee;
		}
		.mainBannerWrap{
			width:100%;
			margin:0 auto;
		}
		.mainBanner{
			width:100%;
		}
		.mainBanner img{
			width:100%;
		}
		.slick-prev:before, .slick-next:before {
			font-size:50px !important;
			color: #333 !important;
		}
		.slick-prev, .slick-next {
			width:49px;
			height:46px;
		}
		.slick-dots{
			bottom:99px !important;
		}
		.slick-dots li.slick-active button:before {
			opacity:1 !important;
			color: #f2799c !important;
		}
		footer{
			width:100%;
			background: #fde6ee;
		}
		.bottom{
			width:100%;
			margin:0 auto;
		}
		.bottom > img{
			width:100%;
		}
	}
	@media only screen and (orientation:landscape){
		body{
			position: relative;
		}
		#btn{
			position: fixed;
			top:10px;
			right:20px;
		}
		header{
			width:100%;
			background: #fff;
			text-align: center;
		}
		.top{
			width:100%;
			margin:0 auto;
		}
		.top > img{
			width:100%;
		}
		section{
			width:100%;
			background: #fde6ee;
		}
		.mainBannerWrap{
			width:100%;
			margin:0 auto;
		}
		.mainBanner{
			width:100%;
		}
		.mainBanner img{
			width:100%;
		}
		.slick-prev:before, .slick-next:before {
			font-size:50px !important;
			color: #333 !important;
		}
		.slick-prev, .slick-next {
			width:49px;
			height:46px;
		}
		.slick-dots{
			bottom:135px !important;
		}
		.slick-dots li.slick-active button:before {
			opacity:1 !important;
			color: #f2799c !important;
		}
		footer{
			width:100%;
			background: #fde6ee;
		}
		.bottom{
			width:100%;
			margin:0 auto;
		}
		.bottom > img{
			width:100%;
		}
	}
}
@media only screen and (min-width:1100px){
	body{
		position: relative;
	}
	#btn{
		position: fixed;
		top:10px;
		right:20px;
	}
	header{
		width:100%;
		background: #fff;
		text-align: center;
	}
	.top{
		max-width:1200px;
		margin:0 auto;
	}
	.top > img{
		width:100%;
	}
	section{
		width:100%;
		background: #fde6ee;
	}
	.mainBannerWrap{
		width:1200px;
		margin:0 auto;
	}
	.mainBanner{
		width:100%;
	}
	.slick-prev:before, .slick-next:before {
		font-size:50px !important;
		color: #333 !important;
	}
	.slick-dots{
		bottom:158px !important;
	}
	.slick-dots li.slick-active button:before {
		opacity:1 !important;
		color: #f2799c !important;
	}
	.slick-prev, .slick-next {
		width:49px;
		height:46px;
	}
	footer{
		width:100%;
		background: #fde6ee;
	}
	.bottom{
		max-width:1200px;
		margin:0 auto;
	}
	.bottom > img{
		width:100%;
	}
}	
</style>
<script type="text/javascript">
	$(function(){
		/* 메인배너 */
		$(".mainBanner").slick({
			arrows:true,
			infinite:true,
			speed:500,
			fade:true,
			cssEase:'linear',
			autoplay:true,
			autoplaySpeed:4000,
			dots:true,
		});	
		
		//이벤트 이미지맵 반응형 
		$('img[usemap]').rwdImageMaps();
	});
</script>
</head>
<body>
	<a id="btn" href="${pageContext.request.contextPath}/jdental2"><input type="button" value="NEXT"></a>
	<header>
		<div class="top">
			<img src="${pageContext.request.contextPath}/resources/images/jDental/top.jpg" usemap="#topImg">
			<map id="top_img" name="topImg">
				<area shape="rect" alt="" title="" coords="733,30,944,62" href="tel:053-642-1631" target="" />
				<area shape="rect" alt="" title="" coords="957,30,1103,62" href="http://www.jbarune.com" target="" />
			</map>
		</div>
	</header>
	<section>
		<div class="mainBannerWrap">
			<div class="mainBanner">
				<img src="${pageContext.request.contextPath}/resources/images/jDental/slider1.jpg">
				<img src="${pageContext.request.contextPath}/resources/images/jDental/slider2.jpg">
				<img src="${pageContext.request.contextPath}/resources/images/jDental/slider3.jpg">
				<img src="${pageContext.request.contextPath}/resources/images/jDental/slider4.jpg">
			</div>
		</div>
	</section>
	<footer> 
		<div class="bottom">
			<img src="${pageContext.request.contextPath}/resources/images/jDental/bottom.jpg">
		</div>
	</footer>
</body>
</html>