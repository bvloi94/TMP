<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title><tiles:insertAttribute name="title" /></title>
<tilesx:useAttribute id="jsList" name="js" classname="java.util.List" />
<tilesx:useAttribute id="cssList" name="css" classname="java.util.List" />

<!-- js -->
<script type="text/javascript"
	src='<c:url value="/resources/jquery/jquery-1.12.1.min.js"/>'></script>
<c:forEach var="js" items="${jsList}">
	<script type="text/javascript" src='<c:url value="${js}" />'></script>
</c:forEach>

<!-- ccs -->
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/bootstrap/bootstrap.min.css"/>'>
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/style.css"/>'>
<c:forEach var="css" items="${cssList}">
	<link rel="stylesheet" type="text/css" href='<c:url value="${css}" />'>
</c:forEach>
<script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
	<div style="height:100%">
		<div class="row" style="height:9.4%">
			<tiles:insertAttribute name="menu" />
		</div>
		<div class="row" style="min-height:79.5%; background-color: #eeeeee">
			<tiles:insertAttribute name="body" />
		</div>
		<div class="row">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>