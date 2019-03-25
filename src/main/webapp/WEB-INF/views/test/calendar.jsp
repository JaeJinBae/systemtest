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
<script src="${pageContext.request.contextPath}/resources/js/calendar1.js"></script>
<script type="text/javascript">

</script>

<style>
table.cal_calendar{
	padding:0px;
	margin:0 auto;
}
table.cal_calendar th{
	border:1px solid #c0c0c0;
	background-color:#e0e0e0;
	width:36px;
	font-family:돋움;
	font-size:11px;
	padding:3px;
}
table.cal_calendar td{
	border:1px solid #e0e0e0;
	background-color:#ffffff;
	text-align:center;
	width:20px;
	height:25px;
	font-family:tahoma;
	font-size:11px;
	padding:3px;
}
.cal_today{
	color:#ff0000;
	font-weight:bold;
}
.cal_days_bef_aft{
	color:#5a779e;
}
</style>
</head>

<body>


<script type="text/javascript">
	calendar();
</script>


</body>
</html>