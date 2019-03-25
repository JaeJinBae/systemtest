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
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script> 
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script>
$(function(){
	$(".tbl_wrap").mousemove(function(e){
		var x = e.pageX-$(this).position().left;
		var y = e.pageY-$(this).position().top;
		var z = $(this).width();

		if((x>(z-10)&&x<z)){
			$("#aaa").html('a');
			$(this).css("cursor", "e-resize");
			$(this).resizable({
				minHeight:25
			});
			}else{
				$(this).css("cursor", "default");
			}
	}).mouseout(function(){
		$(this).css("cursor", "default");
	});
 
	$(".tbl_wrap").draggable();
});
</script>
<style>
 .tbl_wrap{
	 	width:1000px;
	 	overflow:scroll;
	 	border:1px solid lightgray;
	 	background: #fafafa;
 	}
 	table{
 		border:1px solid lightgray;
 		border-collapse: collapse;
 		width:100%;
 		height:100%;
 	}
 	table tr td, th{
 		text-align: center;
 		border:1px solid lightgray;
 	}
 	table tr:nth-child(odd){
 		background: yellow;
 	}
</style>
</head>
<body>
	<h3>대현빌 관리 현황</h3>
	<div class="tbl_wrap tbl1">
		<table>
			<tr>
				<th colspan="11">종합현황</th>
			</tr>
			<tr>
				<th>상태</th>
				<th>구분</th>
				<th>호실</th>
				<th>세입자</th>
				<th>연락처</th>
				<th>입주일</th>
				<th>퇴실일</th>
				<th>보증금</th>
				<th>월세</th>
				<th>계약금</th>
				<th>수리내역</th>
			</tr>
			<tr>
				<td>입주완료</td>
				<td>월세</td>
				<td>101호</td>
				<td>이순신</td>
				<td>010-1234-1234</td>
				<td>2019-01-01</td>
				<td>2020-01-01</td>
				<td>300</td>
				<td>30</td>
				<td>10</td>
				<td>
					-2018-12-10 화장실 배수공사(10만원)<br>
					-2018-12-20 화장실 타일 공사(20만원)
				</td>
			</tr>
			<tr>
				<td>입주완료</td>
				<td>월세</td>
				<td>102호</td>
				<td>이순신</td>
				<td>010-1234-1234</td>
				<td>2019-01-01</td>
				<td>2020-01-01</td>
				<td>300</td>
				<td>30</td>
				<td>10</td>
				<td>2018-12-10 화장실 배수공사(10만원)</td>
			</tr>
			<tr>
				<td>입주완료</td>
				<td>월세</td>
				<td>103호</td>
				<td>이순신</td>
				<td>010-1234-1234</td>
				<td>2019-01-01</td>
				<td>2020-01-01</td>
				<td>300</td>
				<td>30</td>
				<td>10</td>
				<td>2018-12-10 화장실 배수공사(10만원)</td>
			</tr>
			<tr>
				<td>입주완료</td>
				<td>월세</td>
				<td>104호</td>
				<td>이순신</td>
				<td>010-1234-1234</td>
				<td>2019-01-01</td>
				<td>2020-01-01</td>
				<td>300</td>
				<td>30</td>
				<td>10</td>
				<td>2018-12-10 화장실 배수공사(10만원)</td>
			</tr>
			<tr>
				<td>공실</td>
				<td>201호</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>
					-2018-12-10 화장실 배수공사(10만원)<br>
					-2018-12-20 화장실 타일 공사(20만원)<br>
					-2018-12-30 전체 도배(50만원)
				</td>
			</tr>
			<tr>
				<td>공실</td>
				<td>202호</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>2018-12-10 화장실 배수공사(10만원)</td>
			</tr>
			<tr>
				<td>공실</td>
				<td>203호</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>2018-12-10 화장실 배수공사(10만원)</td>
			</tr>
			<tr>
				<td>공실</td>
				<td>204호</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>2018-12-10 화장실 배수공사(10만원)</td>
			</tr>
		</table>
	</div>
	<div class="tbl_wrap tbl2">
		<table>
			<tr>
				<th colspan="11">입주완료</th>
			</tr>
			<tr>
				<th>상태</th>
				<th>구분</th>
				<th>호실</th>
				<th>세입자</th>
				<th>연락처</th>
				<th>입주일</th>
				<th>퇴실일</th>
				<th>보증금</th>
				<th>월세</th>
				<th>계약금</th>
				<th>수리내역</th>
			</tr>
			<tr>
				<td>입주완료</td>
				<td>월세</td>
				<td>101호</td>
				<td>이순신</td>
				<td>010-1234-1234</td>
				<td>2019-01-01</td>
				<td>2020-01-01</td>
				<td>300</td>
				<td>30</td>
				<td>10</td>
				<td>
					-2018-12-10 화장실 배수공사(10만원)<br>
					-2018-12-20 화장실 타일 공사(20만원)
				</td>
			</tr>
			<tr>
				<td>입주완료</td>
				<td>월세</td>
				<td>102호</td>
				<td>이순신</td>
				<td>010-1234-1234</td>
				<td>2019-01-01</td>
				<td>2020-01-01</td>
				<td>300</td>
				<td>30</td>
				<td>10</td>
				<td>2018-12-10 화장실 배수공사(10만원)</td>
			</tr>
			<tr>
				<td>입주완료</td>
				<td>월세</td>
				<td>103호</td>
				<td>이순신</td>
				<td>010-1234-1234</td>
				<td>2019-01-01</td>
				<td>2020-01-01</td>
				<td>300</td>
				<td>30</td>
				<td>10</td>
				<td>2018-12-10 화장실 배수공사(10만원)</td>
			</tr>
			<tr>
				<td>입주완료</td>
				<td>월세</td>
				<td>104호</td>
				<td>이순신</td>
				<td>010-1234-1234</td>
				<td>2019-01-01</td>
				<td>2020-01-01</td>
				<td>300</td>
				<td>30</td>
				<td>10</td>
				<td>2018-12-10 화장실 배수공사(10만원)</td>
			</tr>
		</table>
	</div>
</body>
</html>