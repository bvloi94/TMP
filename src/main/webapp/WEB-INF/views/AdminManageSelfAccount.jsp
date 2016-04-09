<style>
.form-custom {
	
	padding-top: 20px;
	padding-bottom: 170px;
}

.form-control {
	pointer-events: none;
}

#update {
	display: none;
}

#edit {
	margin-top: 10px;
	margin-left: -20px;
}
</style>

<script>
$(document).ready(function(){
	$('#edit').on('click',function(){
		$('.form-custom').css('padding-bottom','39px');
		$('#update').show();
		$('.form-control').css('pointer-events','auto');
	});
});
</script>
<div class="row bg-primary">
		<h3 class="col-sm-offset-2 col-sm-6">Your individual information</h3>
		<div class="col-sm-4">
			<button id="edit" class="control-label btn btn-default glyphicon glyphicon-edit">Edit</button>
		</div>
</div>
<div class="form-custom bg-success">
	<form class="col-sm-offset-2 form-horizontal" action=""
		autocomplete="off">
		<div class="form-group">
			<label class="col-sm-2 control-label">Name</label>
			<div class="col-sm-6">
				<input class="form-control" type="text" name="name" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Email</label>
			<div class="col-sm-6">
				<input class="form-control" type="text" name="email" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Address</label>
			<div class="col-sm-6">
				<input class="form-control" type="text" name="address" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Phone</label>
			<div class="col-sm-6">
				<input class="form-control" type="text" name="phone" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Old Password</label>
			<div class="col-sm-6">
				<input class="form-control" type="password" name="oldpass" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">New Password</label>
			<div class="col-sm-6">
				<input class="form-control" type="password" name="newpass" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Re-type Password</label>
			<div class="col-sm-6">
				<input class="form-control" type="password" name="repass" />
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-4">
				<button id="update" class="btn btn-primary btn-block">Update</button>
			</div>
		</div>
	</form>
</div>
<div class="clearfix"></div>