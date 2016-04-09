<!-- header -->
<div class="header">
	<!-- container -->
	<div class="container">
		<!-- banner Slider starts Here -->

		<script>
			// You can also use "$(window).load(function() {"
			$(function() {
				// Slideshow 4
				$("#slider3").responsiveSlides({
					auto : true,
					pager : false,
					nav : false,
					speed : 500,
					namespace : "callbacks",
					before : function() {
						$('.events').append("<li>before event fired.</li>");
					},
					after : function() {
						$('.events').append("<li>after event fired.</li>");
					}
				});

			});
		</script>
		<!--//End-slider-script -->
		<div id="top" class="callbacks_container">
			<ul class="rslides" id="slider3">
				<li>
					<div class="head-info">
						<h1>
							Where to go this summer?<span>faucibus eu semper ut,
								hendrerit</span>
						</h1>
						<p>Sollicitudin et elit sit amet, luctus placerat ipsum</p>
					</div>
				</li>
				<li>
					<div class="head-info">
						<h1>
							Aenean suscipit<span>Suspendisse venenatis volutpat </span>
						</h1>
						<p>Morbi id felis porttitor tellus viverra pulvinar.
							Vestibulum</p>
					</div>
				</li>
				<li>
					<div class="head-info">
						<h1>
							Gestas vulputate<span>Morbi id felis porttitor tellus</span>
						</h1>
						<p>Morbi id felis porttitor tellus viverra pulvinar.ante ipsum
						</p>
					</div>
				</li>
			</ul>
		</div>

	</div>
	<!-- container -->
</div>
<!-- //header -->
<script type="application/x-javascript">
	
		 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	
</script>

<!-- start-smoth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->

<!-- banner-grids -->
<div class="banner-grids">
	<!-- container -->
	<div class="container">
		<div class="banner-grid-info">
			<h3>TOP DESTINATIONS</h3>
			<p>Pellentesque tempor sem in scelerisque mollis.</p>
		</div>
		<div class="top-grids">
			<div class="top-grid">
				<img src="resources/images/6.jpg" alt="" />
				<div class="top-grid-info">
					<h3>Vestibulum auctor</h3>
					<p>Morbi id felis porttitor tellus viverra pulvinar. Vestibulum
						ante ipsum primis in faucibus orci luctus et ultrices .</p>
				</div>
			</div>
			<div class="top-grid">
				<img src="resources/images/3.jpg" alt="" />
				<div class="top-grid-info">
					<h3>Vestibulum auctor</h3>
					<p>Morbi id felis porttitor tellus viverra pulvinar. Vestibulum
						ante ipsum primis in faucibus orci luctus et ultrices .</p>
				</div>
			</div>
			<div class="top-grid">
				<img src="resources/images/2.jpg" alt="" />
				<div class="top-grid-info">
					<h3>Vestibulum auctor</h3>
					<p>Morbi id felis porttitor tellus viverra pulvinar. Vestibulum
						ante ipsum primis in faucibus orci luctus et ultrices .</p>
				</div>
			</div>
			<div class="top-grid">
				<img src="resources/images/4.jpg" alt="" />
				<div class="top-grid-info">
					<h3>Vestibulum auctor</h3>
					<p>Morbi id felis porttitor tellus viverra pulvinar. Vestibulum
						ante ipsum primis in faucibus orci luctus et ultrices .</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //container -->
</div>
<!-- //banner-grids -->
<!-- before -->
<div class="before">
	<!-- container -->
	<div class="container">
		<h2>Before you leave</h2>
		<div class="before-grids">
			<div class="before-grid">
				<h3>visa & documents</h3>
				<p>Morbi id felis porttitor tellus viverra pulvinar. Vestibulum
					ante ipsum primis in faucibus orci luctus et ultrices. Morbi id
					felis porttitor tellus viverra pulvinar. Vestibulum ante ipsum
					primis in faucibus orci luctus et ultrices.</p>
			</div>
			<div class="before-grid">
				<h3>visa & documents</h3>
				<p>Morbi id felis porttitor tellus viverra pulvinar. Vestibulum
					ante ipsum primis in faucibus orci luctus et ultrices. Morbi id
					felis porttitor tellus viverra pulvinar. Vestibulum ante ipsum
					primis in faucibus orci luctus et ultrices.</p>
			</div>
			<div class="before-grid">
				<h3>visa & documents</h3>
				<p>Morbi id felis porttitor tellus viverra pulvinar. Vestibulum
					ante ipsum primis in faucibus orci luctus et ultrices. Morbi id
					felis porttitor tellus viverra pulvinar. Vestibulum ante ipsum
					primis in faucibus orci luctus et ultrices.</p>
			</div>
			<div class="clearfix"></div>
			<div class="search">
				<p>get hottest deals to your inbox</p>
				<form>
					<input type="text" placeholder="Email address" required="">
					<input type="submit" value="Subscribe">
				</form>
			</div>
		</div>
	</div>
	<!-- //container -->
</div>
<!-- //before -->

<script type="text/javascript">
	$(document).ready(function() {
		/*
		var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
		};
		 */

		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<a href="#" id="toTop" style="display: block;"> <span
	id="toTopHover" style="opacity: 1;"> </span></a>
<!-- content-Get-in-touch -->