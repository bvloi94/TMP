<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
#page-content-wrapper .container-fluid, .col-lg-12 {
	padding-left: 0px !important;
	padding-right: 0px !important;
	height: 100%;
}

.row {
	margin-left: 0px;
	margin-right: 0px;
}

.a-menu {
	padding: 1.2em 0;
	background-color: rgba(5, 25, 36, 0.75);
	z-index: 999;
}

.a-nav ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.a-nav li:nth-child(odd) {
	border-bottom: solid 1px #fff;
}

.a-nav li a {
	display: block;
	color: #fff;
	padding: 10px 30px;
	text-decoration: none;
}

/* Change the link color on hover */
.a-nav li a:hover {
	background-color: #555;
	color: #fff;
}

.a-nav li:nth-child(even) a:hover {
	background-color: transparent;
}

.avatar {
	width: 180px;
	height: 180px;
	margin: 0 0px 20px 20px;
}

@media screen and (max-width: 1240px) {
	.avatar {
		width: 120px;
		height: 120px;
		margin: 0 10px 10px 10px;
	}
}

@media screen and (max-width: 960px) {
	.avatar {
		width: 100px;
		height: 100px;
		margin: 0 10px 10px 10px;
	}
}

@media screen and (max-width: 750px) {
	.avatar {
		width: 0;
		margin: 0;
	}
}
</style>


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
	<script type="text/javascript" src="<c:url value="${js}" />"></script>
</c:forEach>

<!-- ccs -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/bootstrap/bootstrap.min.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>">
<c:forEach var="css" items="${cssList}">
	<link rel="stylesheet" type="text/css" href="<c:url value="${css}" />">
</c:forEach>

<script type="text/javascript">
	$(document).ready(function() {
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	});
</script>


</head>
<body>
	<div style="height: 100%">
		<div id="wrapper">

			<!-- Sidebar -->
			<div id="sidebar-wrapper" class="a-menu">
				<div class="a-nav">
					<span class="menu"><img src="<c:url value="/resources/images/menu.png"/>"
						alt=""></span>
					<ul class="">
						<li><img src="<c:url value="/resources/images/7.jpg"/>" alt=""
							class="img-circle avatar"></li>
						<li class="home"><a
							class="glyphicon glyphicon-home pull-right"></a></li>
						<li class="home"><a href="/ad/AdminHome.htm">HOME</a></li>
						<li><a class="glyphicon glyphicon-list-alt pull-right"></a></li>
						<li><a href="/ad/ManageUserAccount.htm">USER ACCOUNT</a></li>
						<li><a class="glyphicon glyphicon-user pull-right"></a></li>
						<li><a href="/ad/ManageSelfAccount.htm">YOUR ACCOUNT</a></li>
						<li><a class="glyphicon glyphicon-off pull-right"></a></li>
						<li><a href="#">LOG OUT</a></li>
					</ul>
				</div>
			</div>
			<!-- /#sidebar-wrapper -->

			<!-- Page Content -->
			<div id="page-content-wrapper">
				<div class="container-fluid">
					<div class="row maxHeight">
						<div class="col-lg-12">
							<div class="row" style="height: 9.4%">
								<tiles:insertAttribute name="menu" />
							</div>
							<div class="row" style="height: 79%">
								<tiles:insertAttribute name="body" />
							</div>
							<div class="row">
								<tiles:insertAttribute name="footer" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /#page-content-wrapper -->

		</div>

	</div>
</body>
</html>