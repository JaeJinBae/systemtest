<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
* {
	margin: 0;
	padding: 0;
}

header {
	width: 100%;
	height: 130px;
	background: green;
}

.mainBanner {
	width: 100%;
	height: 600px;
	background: red;
}

img {
	width: 100%;
	display: none;
}
/* webaid */
	.form_wrap{
		width:1100px;
		margin:0 auto;
	}
	#f1{
		width:100%;
	}
	#f1 .sub_title{
		font-size:20px;
	}
	.sub_content01{
		width:100%;
		margin-bottom:100px;
	}
	.sub_content01_inner{
		width:100%;
		height:170px;
		overflow:scroll;
		overflow-x: hidden;
		border:1px solid lightgray;
		margin:15px 0;
		padding:20px 10px;
		font-size:14px;
	}
	.sub_content01 > label{
		display:block;
		margin: 10px 0 24px 0;
		font-size:14px;
	}
	.sub_content01 > label > input{
		vertical-align: middle;
		margin-right:5px;
	}
	.sub_content02{
		width:100%;
	}
	.sub_content02_inner{
		width:100%;
		border:1px solid lightgray;
		background: #efefef;
		margin:15px 0;
	}
	.sub_content02_inner > table{
		width:100%;
	}
	.sub_content02_inner > table tr{
		
	}
	.sub_content02_inner > table tr > th{
		font-size:15px;
		padding-top:15px;
		width:150px;
	}
	.fc_or{
		color: orange;
		font-weight:bold;
	}
	.b_o{
		border:1px solid orange;
	}
	.sub_content02_inner > table tr > td{
		padding-top:15px;
	}
	.sub_content02_inner > table tr > td:last-child{
		padding-right: 50px;
	}
	.sub_content02_inner > table tr > td > input{
		width:100%;
		font-size:15px;
		padding:10px;
	}
	.sub_content02_inner > table tr > td > textarea{
		width:100%;
		height:300px;
		resize: none;
		font-size: 15px;
		margin-bottom:15px;
	}
	.submit_btn_wrap{
		width:100%;
		text-align: center;
	}
	.submit_btn_wrap > input{
		width:150px;
		font-size:20px;
		height:45px;
		border-style:none;
		cursor: pointer;
	}
	.submit_btn_wrap > input[type='submit']{
		background: #004a8f;
		color:#fff;
	}
	.submit_btn_wrap > input[type='reset']{
		background: #e5edf4;
		color:#004a8f;
	}
</style>
</head>
<body>
	<!-- <form action="WebSendMail" method="post" enctype="multipart/form-data">
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td>Title</td>
				<td><input type="text" name="subject" size="40"></td>
			</tr>
			<tr>
				<td>Content</td>
				<td><textarea name="body" rows="10" cols="40"></textarea></td>
			</tr>
			<tr>
				<td>File</td>
				<td><input type="file" name="attachment"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit"></td>
			</tr>
		</table>
	</form> -->
	
	<div class="form_wrap">
		<form id="f1" action="WebSendMail" method="post" enctype="multipart/form-data"> 
			<div class="sub_content01">
				<h4 class="sub_title">- 개인정보처리방침</h4>
				<div class="sub_content01_inner">
					
				</div>
				<label>
					<input type="checkbox" value="">위 개인정보수집에 동의합니다.
				</label>
			</div><!-- sub_content01 end -->
			<div class="sub_content02">
				<h4 class="sub_title">- 상담&견적 문의</h4>
				<div class="sub_content02_inner">
					<table>
						<tr>
							<th>회사명</th>
							<td><input type="text" name="cname"></td>
							<th class="fc_or">* 담당자</th>
							<td><input class="b_o" type="text" name="pname"></td>
						</tr>
						<tr>
							<th class="fc_or">* 연락처</th>
							<td><input class="b_o" type="text" name="phone"></td>
							<th class="fc_or">* 이메일</th>
							<td><input class="b_o" type="text" name="email"></td>
						</tr>
						<tr>
							<th>현재사이트</th>
							<td colspan="3"><input type="text" name="nsite"></td>
						</tr>
						<tr>
							<th>참고사이트1</th>
							<td colspan="3"><input type="text" name="rsite1"></td>
						</tr>
						<tr>
							<th>참고사이트2</th>
							<td colspan="3"><input type="text" name="rsite2"></td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td colspan="3"><input type="file" name="upload"></td>
						</tr>
						<tr>
							<th>문의사항</th>
							<td colspan="3"><textarea name="content"></textarea></td>
						</tr>
					</table>
				</div><!-- sub_content02_inner end -->
				<div class="submit_btn_wrap">
					<input type="submit" value="문의신청">
					<input type="reset" value="다시 작성">
				</div>
			</div><!-- sub_content02 end -->
		</form>
	</div><!-- form_wrap end -->

</body>
</html>