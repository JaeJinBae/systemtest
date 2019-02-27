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
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
	
	#sortWrap {
		padding: 10px;
	}
	#sortWrap div {
		margin: 10px;
		padding: 10px 0 10px 20px;
		background-color: #FFF;
		border: 1px solid #ddd;
		cursor: ns-resize;
	}
</style>
<script>
	$(function(){
		$("#sortWrap").sortable({
			axis: "y",
			containment: "parent",
			update: function (event, ui) {
				var order = $(this).sortable('toArray', {
					attribute: 'data-order'
				});
				console.log(order);
			}
		});
	});
</script>
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
	
	<div id="sortWrap">
		<div data-order=1>1</div>
		<div data-order=2>2</div>
		<div data-order=3>3</div>
		<div data-order=4>4</div>
		<div data-order=5>5</div>
	</div>
</body>
</html>