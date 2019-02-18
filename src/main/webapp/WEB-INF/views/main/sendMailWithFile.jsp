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
</style>
</head>
<body>
	<form action="WebSendMail" method="post" enctype="multipart/form-data">
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
	</form>

</body>
</html>