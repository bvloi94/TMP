<style>
.form-custom {
	margin: 75px 0;
}

.form-custom-1 {
	margin: 75px 0;
	padding: 75px 0;
}

.no-rounded {
	border-radius: 0em !important;
}

@media screen and (min-width: 768px) {
	.divide-border {
		border-left: 1px solid #000;
	}
}

@media screen and (max-width: 768px) {
	.divide-border {
		border-top: 1px solid #000;
	}
}
</style>

<script>
	$(document).ready(function() {
		$('#btn-login').on('click', function() {
			var email = $('#email').val();
			var password = $('#password').val();
			var account = {
				'email' : email,
				'password' : password
			}
// 			$.getJSON('getLoginStatus',function(data){
// 				alert(data);
// 			});
			
// 			$.post('login', account, function(data) {
// 				alert(data);
// 				alert(data.result);
// 			}, 'json');
			$.ajax({
				type	: 'POST',
				url		: 'Authenticate.htm',
				headers: { 
			        Accept: 'application/json; charset=utf-8',
			        'Content-Type': 'application/json; charset=utf-8' 
			    },
				data	: JSON.stringify(account),
				success	: function(data) {
					if(data.success) {
						window.location.href = "/usr/ManageTrips.htm";
					} else {
						alert("Login fail!");
					}
					
					
// 					alert(data.result);
// 					alert(data.userInfo);
				},
				error: function(xhr, status, err) {
					alert(xhr.responseText);
				},
				dataType: 'json',
			});
		});
	});
</script>
<div class="container">
	<!-- Sign in form -->
	<div class="col-sm-6 form-custom">
 		<div class="form-horizontal">
			<h2 class="col-sm-10 text-center">Please sign in</h2>
			<div class="form-group">
				<label for="email" class="col-sm-4 control-label">Email</label>
				<div class="col-sm-6">
					<input type="text" name="email" id="email" class="form-control"
						placeholder="Email address" autofocus="autofocus">
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-4 control-label">Password</label>
				<div class="col-sm-6">
					<input type="password" name="password" id="password"
						class="form-control" placeholder="Password">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
					<div class="checkbox">
						<label> <input type="checkbox"> Remember me
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
					<button id="btn-login" class="btn btn-success btn-block">Sign
						in</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Sign up form -->
	<div class="col-sm-6 form-custom-1 divide-border">
		<div class="form-group col-sm-offset-4 col-sm-6">
			<a role="button" class="btn btn-block btn-primary no-rounded">Login with Facebook</a>
		</div>
		<div class="form-group col-sm-offset-4 col-sm-6">
			<a role="button" class="btn btn-block btn-danger no-rounded">Login with Google+</a>
		</div>
		<div class="form-group col-sm-offset-4 col-sm-6">
			<a role="button" class="btn btn-block btn-info no-rounded">Login with Twitter</a>
		</div>
	</div>
	<div class="clearfix"></div>

</div>