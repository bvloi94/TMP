<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.head-bg {
	padding: 1.2em 0;
	background-color: rgba(5, 25, 36, 0.75);
	position: relative;
	z-index: 999;
}

.head-logo {
	float: left;
	margin-top: 0;
}

.top-nav {
	float: right;
	margin-top: .8em;
}

.top-nav ul {
	padding: 0;
	margin: 0;
}

*, *:after, *::before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.top-nav ul li {
	display: inline-block;
	margin: 0 .5em;
	outline: none;
	text-decoration: none;
	text-transform: uppercase;
	letter-spacing: 1px;
	font-weight: 400;
	font-size: 16px;
}

.top-nav ul li a {
	color: #fff;
}

ul a:hover, ul a:focus {
	outline: none;
	color: #FFF;
	text-decoration: none;
}
@media screen and (min-width: 768px) {
	ul.cl-effect-1 {
		display: block;
	}
}
@media screen and (max-width: 768px) {
	.top-nav {
		float: right;
		margin-top: 0;
	}
	ul.cl-effect-1 {
		display: none;
	}
	.top-nav ul {
		padding: 0;
		margin: 0;
		z-index: 999;
		position: absolute;
		width: 100%;
		left:0;
	}
	.top-nav ul.cl-effect-1 li {
		display: block;
		text-align: center;
		background: rgba(5, 25, 36, 0.5);
		border-bottom: 1px solid #0F2031;
		margin: 0;
	}
	.top-nav ul li a {
		font-size: 16px;
		padding: 1.5em 0;
		color: #fff;
		font-weight: 800;
		display: block;
	}
}

/* Effect 1: Brackets */
.cl-effect-1 a::before, .cl-effect-1 a::after {
	display: inline-block;
	opacity: 0;
	-webkit-transition: -webkit-transform 0.3s, opacity 0.2s;
	-moz-transition: -moz-transform 0.3s, opacity 0.2s;
	transition: transform 0.3s, opacity 0.2s;
}

.cl-effect-1 a::before {
	margin-right: 10px;
	content: '[';
	-webkit-transform: translateX(20px);
	-moz-transform: translateX(20px);
	transform: translateX(20px);
}

.cl-effect-1 a::after {
	margin-left: 10px;
	content: ']';
	-webkit-transform: translateX(-20px);
	-moz-transform: translateX(-20px);
	transform: translateX(-20px);
}

.cl-effect-1 a:hover::before, .cl-effect-1 a:hover::after, .cl-effect-1 a:focus::before,
	.cl-effect-1 a:focus::after {
	opacity: 1;
	-webkit-transform: translateX(0px);
	-moz-transform: translateX(0px);
	transform: translateX(0px);
}
</style>

<div class="head-bg">
	<!-- container -->
	<div class="container">
		<div class="head-logo">
			<a href="/"><img src='<c:url value="/resources/images/logo1.png"/>' alt="" /></a>
		</div>
		<div class="top-nav">
			<span class="menu"><img src='<c:url value="/resources/images/menu.png"/>' alt=""></span>
			<ul class="cl-effect-1">
				<li><a href="/Home.htm">HOME</a></li>
				<li><a href="#">ABOUT</a></li>
				<li><a href="#">BOOKING</a></li>
				<li><a href="/auth/Login.htm">SIGN IN / REGISTER</a></li>
			</ul>
			<!-- script-for-menu -->
			<script>
				$("span.menu").click(function() {
					$("ul.cl-effect-1").slideToggle(300, function() {
						// Animation complete.
					});
				});
			</script>
			<!-- /script-for-menu -->
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- //container -->
</div>