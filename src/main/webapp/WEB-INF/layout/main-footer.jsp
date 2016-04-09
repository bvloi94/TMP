<style>
/*-- footer --*/
.footer {
	background: #eeeeee;
	padding: 2em 0;
}

.footer-left {
	float: left;
}

.footer-left p {
	color: #939090;
	margin: 0;
	font-size: 16px;
}

.footer-left p a {
	color: #939090;
}

.footer-left p a:hover {
	color: #000;
	text-decoration: none;
	transition: .5s all;
	-webkit-transition: .5s all;
	-moz-transition: .5s all;
	-o-transition: .5s all;
	-ms-transition: .5s all;
}

.footer-right {
	float: right;
}

.footer-nav ul {
	padding: 0;
	margin: 0;
}

.footer-nav ul li {
	display: inline-block;
	padding: 0 1.5em;
	border-right: solid 1px #939090;
	border-right-style: dashed
}

.footer-nav ul li a {
	color: #939090;
	font-size: 16px;
	text-decoration: none;
	text-transform: uppercase;
}

.footer-nav ul li:nth-child(4) {
	border-right: none;
}

.footer-nav ul li a:hover {
	color: #000;
	transition: .5s all;
	-webkit-transition: .5s all;
	-moz-transition: .5s all;
	-o-transition: .5s all;
	-ms-transition: .5s all;
}

@media screen and (max-width: 768px) {
	.footer-left {
		float: none;
		text-align: center;
	}
	.footer-right {
		float: none;
		text-align: center;
		margin-top: 2em;
	}	
}
@media screen and (max-width: 640px) {
	.footer-nav ul li a {
		font-size: 14px;
	}	
}
@media screen and (max-width: 480px) {
	.footer-nav ul li {
		padding: 0 1em;
	}
}
@media screen and (max-width: 320px) {
	.footer-nav ul li {
		margin-bottom: .5em;
	}
	.footer {
		padding: 1em 0;
	}
	.footer-nav ul li:nth-child(2) {
		border: none;
	}
}

</style>
<!-- footer -->
<div class="footer">
	<!-- container -->
	<div class="container">
		<div class="footer-left">
			<p>Design by Phuong's Team</p>
		</div>
		<div class="footer-right">
			<div class="footer-nav">
				<ul>
					<li><a href="#">HOME</a></li>
					<li><a href="#">ABOUT</a></li>
					<li><a href="#">BOOKING</a></li>
					<li><a href="#">MAIL US</a></li>
				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- //container -->
</div>
<!-- //footer -->