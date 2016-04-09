<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>



<style type="text/css">
.borderLine {
	border-bottom: 1px dotted darkgrey;
}

.container, .row {
	padding-left: 0px;
	padding-right: 0px;
}

.borderTitle {
	background-color: grey;
}

.redColor {
	color: red;
}

.paddingRow {
	padding-top: 10px;
}

.paddingTitle {
	padding-top: 5px;
}

.paddingSubject {
	padding-top: 20px;
}

.input-group[class*=col-] {
	padding-left: 15px;
	padding-right: 15px;
}
</style>

</head>

<body>
	<!-- header -->
	<div class="header">
		<!-- container -->
		<div class="container">
			<!-- banner Slider starts Here -->

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
							<p>Morbi id felis porttitor tellus viverra pulvinar.ante
								ipsum</p>
						</div>
					</li>
				</ul>
			</div>

		</div>
		<!-- container -->
	</div>


	<div class="container"
		style="background-color: white; padding-bottom: 20px">
		<form action="">
			<div class="row">
				<div class="col-sm-6" style="padding-left: 0px">
					<div class="row paddingSubject">
						<div class="col-sm-4 borderTitle">Information Trip</div>
						<div class="col-sm-12 borderLine"></div>
					</div>
					<div class="row paddingRow">
						<div class="col-sm-4 paddingTitle">
							Trip Name ( <span class="redColor">*</span> )
						</div>
						<div class="col-sm-8">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="row paddingRow">
						<div class="col-sm-4 paddingTitle">
							Places ( <span class="redColor">*</span> )
						</div>
						<div class="col-sm-8">
							<button class="btn btn-default">Add Place</button>
						</div>
					</div>
					<div class="row paddingRow">
						<div class="col-sm-4 paddingTitle">Gathering Place</div>
						<div class="col-sm-8">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="row paddingRow form-group">
						<div class="col-sm-4 paddingTitle">Range</div>
						<div class="input-group col-sm-8">
							<div class="input-group-addon">
								<i class="fa fa-clock-o"></i>
							</div>
							<input type="text" class="form-control pull-right"
								id="reservationtime">
						</div>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="row paddingSubject">
						<div class="col-sm-4 borderTitle">Map</div>
						<div class="col-sm-12 borderLine"></div>
					</div>
				</div>
			</div>


			<div class="row paddingSubject">
				<div class="col-sm-2 borderTitle">Member</div>
				<div class="col-sm-12 borderLine"></div>
			</div>
			<div class="row paddingRow">
				<div class="col-sm-2 paddingTitle">Tag</div>
				<div class="col-sm-10">
					<input type="text" class="form-control">
				</div>
			</div>

			<div class="row paddingSubject">
				<div class="col-sm-2 borderTitle">Description</div>
				<div class="col-sm-12 borderLine"></div>
			</div>
			<div class="row paddingRow">
				<div class="col-sm-12">
					<textarea class="col-sm-6" rows="5" cols=""></textarea>
				</div>
			</div>


		</form>
	</div>

	<script type="text/javascript">
		$(function() {
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

			//Date range picker with time picker
			$('#reservationtime').daterangepicker({
				timePicker : true,
				timePickerIncrement : 30,
				format : 'MM/DD/YYYY h:mm A'
			});

		});
	</script>

</body>
</html>


