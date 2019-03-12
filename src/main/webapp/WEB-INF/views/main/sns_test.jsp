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
<script>
	$(function(){
		$(".blog_search_btn").click(function(){
			$.ajax({
				url:"${pageContext.request.contextPath}/search_blog_get",
				type:"get",
				dataType:encodeURI("json"), 
				success:function(result){
					console.log(result.items[0]);
					
					$(".blog_div").append(result.items[0].title);
				}
			})
		});
		
		
		//AIzaSyBw57piloo_YIBIU8t31eHwfOu-Alw4aUI
		//url매개변수주소 : https://developers.google.com/youtube/v3/docs/search/list?hl=ko
		$(".youtube_search_btn").click(function(){
			$.ajax({
				url:"https://www.googleapis.com/youtube/v3/search?key=AIzaSyBw57piloo_YIBIU8t31eHwfOu-Alw4aUI&q=딥롤러&part=snippet&maxResults=2&type=video",
				type:"get",
				dataType:encodeURI("json"), 
				success:function(result){
					console.log(result);
					//alert(result.items[1].snippet.thumbnails.default.url);
					$(".youtube_div").append(result.items[0].title);
					$(".youtube_div").append("<a href='https://www.youtube.com/watch?v="+result.items[0].id.videoId+"'>"+result.items[0].snippet.title+"</a><br>"+result.items[0].snippet.description);
				}
			})
		});
		
		//
		//https://api.instagram.com/v1/self/media/recent?access_token=ACCESS_TOKEN
		//client_id=938e8dcc930744e1a816bce52cefa7db
		//redirect_uri=http://www.webaid.co.kr/
		//access_token=4408529207.938e8dc.b7e6799ba3b14639b373de9d4e7f580c
		$(".instagram_search_btn").click(function(){ 
			
			$.ajax({
				url:"https://api.instagram.com/v1/self/media/recent?access_token=4408529207.938e8dc.b7e6799ba3b14639b373de9d4e7f580c",
				type:"get",
				dataType:encodeURI("json"), 
				success:function(result){
					console.log(result);
					
					
				}
			})
		});
	});
</script>
</head>
<body>
	<button class="blog_search_btn">블로그 검색하기</button>
	<div class="blog_div">
		<h3>blog 검색 결과</h3>
	</div>
	<hr>
	<div class="facebook_div">
		<h3>facebook</h3>
		<div id="fb-root"></div>
		<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.2"></script>
		<div class="fb-page" data-href="https://www.facebook.com/corediet/" data-tabs="timeline" data-width="300" data-height="500" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
			<blockquote cite="https://www.facebook.com/corediet/" class="fb-xfbml-parse-ignore">
				<a href="https://www.facebook.com/corediet/">코어다이어트 딥롤러</a>
			</blockquote>
		</div>
	</div>
	<hr>
	<button class="youtube_search_btn">유튜브 검색</button>
	<div class="youtube_div">
		<h3>유튜브 검색결과</h3>
	</div>
    <hr>
    <button class="instagram_search_btn">인스타그램 검색</button>
    <div class="instagram_div">
    	<h3>인스타 검색결과</h3>
    	
    </div>
    
</body>
</html>