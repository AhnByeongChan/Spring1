<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 양식</title>
<style type="text/css">
#modifyForm{
	border: 1px solid silver;
	margin: auto;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#cancel").click(function(){
		location.href=
			"${pageContext.request.contextPath}/board/boardDetail?no=${vo.no}";
		return false;
	});
	$("input[type=file]").change(function(e){
		var changedfile = $("input[type=file]").text();
		//alert(changedfile);
	});
});
</script>
</head>
<body>
<form:form name="updateForm" 
action="${pageContext.request.contextPath}/board/modifyPrc" method="post" commandName="vo">
	<table id="modifyForm">
		<tr>
			<td colspan="2" align="center"><h2>수정 양식</h2></td>
		</tr>
		<tr>
		<td>작성자</td><td><form:input path="writer" readonly="true"/></td>
	</tr>
		<tr>
			<td>제목</td><td><form:input path="subject"/></td>
		</tr>
		<tr>
			<td>비밀번호</td><td><form:password path="password"/></td>
		</tr>
		<tr>
			<td>내용</td><td><form:textarea path="content" cols="25" rows="10"/></td>
		</tr>
		<tr>
			<td>첨부파일</td><td><input type="file" name="file" id="file" ></td>
		</tr>
		<tr>
			<td></td><td>${board.filename}(${board.filesize}KB)</td>
		</tr>
		<tr>
			<td align="left"><input type="submit" value="확인"></td><td align="right"><button id="cancel">초기화</button></td>
		</tr>
	</table>
	<form:hidden path="no"/>
</form:form>
</body>
</html>