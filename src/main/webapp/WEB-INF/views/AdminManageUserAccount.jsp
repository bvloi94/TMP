<style>
.p-top {
	padding-top: 20px;
}

.add-user {
	display: none;
}
</style>
<script>
	$(document).ready(function() {

		// 	$('.glyphicon-list-alt').css('background-color','#555');
		$('.dataTables_length').addClass('form-control');
		$('.dataTables_filter').addClass('btn btn-default');
		$('.glyphicon-list-alt').addClass('glyphicon-arrow-right');
		$('.glyphicon-list-alt').removeClass('glyphicon-list-alt');
		$('#list-user').DataTable({
		//     	dom : 'Bfrtip',
		//     	select : true
		});
	});
</script>
<div class="p-top"></div>
<div class="container">
	<table id="list-user" class="table table-hover table-striped">
		<thead>
			<tr>
				<td>No.</td>
				<td>Email</td>
				<td>Name</td>
				<td>Phone No.</td>
				<td>Create day</td>
				<td>Account type</td>
				<td>Status</td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="7" class="">
					<div class="container">
						<button
							class="col-sm-offset-4 col-sm-4 btn btn-default glyphicon glyphicon-plus"
							data-toggle="modal" data-target="#myModal">Add new user</button>
						<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h3 class="col-sm-offset-4">New user info</h3>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" action="" autocomplete="false">
											<div class="form-group">
												<label for="s-email" class="col-sm-4 control-label">Email</label>
												<div class="col-sm-4">
													<input type="text" id="s-email" class="form-control"
														placeholder="Email address" autofocus="autofocus">
												</div>
											</div>

											<div class="form-group">
												<label for="s-password" class="col-sm-4 control-label">Password</label>
												<div class="col-sm-4">
													<input type="password" id="s-password" class="form-control"
														placeholder="Password">
												</div>
											</div>
											<div class="form-group">
												<label for="s-repass" class="col-sm-4 control-label">Re-password</label>
												<div class="col-sm-4">
													<input type="password" id="s-repass" class="form-control"
														placeholder="Re-input password">
												</div>
											</div>
											<div class="form-group">
												<label for="s-name" class="col-sm-4 control-label">Name</label>
												<div class="col-sm-4">
													<input type="password" id="s-name" class="form-control"
														placeholder="Name">
												</div>
											</div>
											<div class="form-group">
												<label for="s-phone" class="col-sm-4 control-label">Phone
													number</label>
												<div class="col-sm-4">
													<input type="tel" id="s-phone" class="form-control"
														placeholder="Phone number">
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-offset-4 col-sm-3">
													<button id="btn-add" class="btn btn-default btn-block">Add
														this user</button>
												</div>
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>
					</div>
				</td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td>1</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-success glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-default glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>2</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-default glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-warning glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>3</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-success glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-default glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>4</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-success glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-default glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>5</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-default glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-warning glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>6</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-default glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-warning glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>7</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-success glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-default glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>8</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-success glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-default glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>9</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-success glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-default glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>10</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-success glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-default glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>11</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-success glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-default glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>12</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-success glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-default glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>13</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-success glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-default glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
			<tr>
				<td>14</td>
				<td>thanhhcse61279@fpt.edu.vn</td>
				<td>Huynh Cong Thanh</td>
				<td>01687548624</td>
				<td>2016/03/01</td>
				<td>Admin</td>
				<td>
					<div class="btn-group" role="group">
						<button class="btn btn-sm btn-success glyphicon glyphicon-ok"></button>
						<button class="btn btn-sm btn-default glyphicon glyphicon-remove"></button>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<div class="clearfix"></div>
