<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
<script src="//code.jquery.com/jquery-1.11.0.min.js">
	
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js">
	
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="TT_top">
							<div class="TT_logo">
								<div class="anh_logo">
									<img alt="img-responsive"
										src="E:\github\JWD_Monday\WEB-hinhanh\logodoan1.png"
										width="150px" height="150px" align="left">
								</div>
								<div class="name-ute">
									<h2 style="color: black">ĐOÀN TRƯỜNG ĐẠI HỌC</h2>
									<h1 style="color: black">
										<b>SƯ PHẠM KỸ THUẬT TP.HCM</b>
									</h1>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-inverse">
					<div class="container-fluid">
						<div class="collapse navbar-collapse" id="myNavbar">
							<ul class="nav navbar-nav">
								<li><a
									href="file:///E:/github/JWD_Monday/WEB_Nhom11/JWD_Home.html"><span
										class="glyphicon glyphicon-home"></span> Trang chủ</a></li>
								<li><a
									href="https://www.facebook.com/doantruongdhsuphamkythuat/?fref=ts">Giới
										thiệu</a></li>
								<li><a href="#"><span
										class="glyphicon glyphicon-question-sign"></span> Hỗ trợ</a></li>
								<li><a href="#"><span
										class="glyphicon glyphicon-envelope"></span> Tin nhắn</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<form class="navbar-form navbar-right" role="search">
					<input type="text" id="q" value="" placeholder="Search">
					<div id="result"></div>
				</form>
				<script language="javascript">
					// Delay the keyup event for jquery ajax
					$(document).ready(function() {
						// Khai báo đối tượng timeout để dùng cho hàm
						// clearTimeout
						var timeout = null;

						// Sự kiện keyup
						$('#title').keyup(function() {
							// Xóa đi những gì ta đã thiết lập ở sự kiện 
							// keyup của ký tự trước (nếu có)
							clearTimeout(timeout);

							// Sau khi xóa thì thiết lập lại timeout
							timeout = setTimeout(function() {
								// Lấy nội dung search
								var data = {
									title : $('#title').val()
								};

								// Gửi ajax search
								$.ajax({
									type : 'get',
									dataType : 'text',
									data : data,
									url : 'result.php',
									success : function(result) {
										$('#result').html(result);
									}
								});
							}, 500);
						});
					});
				</script>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
					<div class="col-md-10">
						<div id="main" ng-app="demoApp" ng-controller="RegisterCtrl">
							<!--- ng-app="demoApp" tên moduel mà chúng ta đặt để Angular JS quản lý, RegisterCrtl là controller sẽ quản lý application-->
							<form action="LoginServlet" method="post">
								<form class="form-horizontal" name="form" ng-submit="register()"
									novalidate>
									<!---novalidate sẽ tắt chế độ validate mặc định của trình duyệt, ng-submit="register()" là tên hàm thực thi khi form submit -->
									<div class="form-group">

										<div ng-show="success" class="text-success text-center">You
											have successfully logged in!</div>
									</div>
									<div class="col-md-9 col-md-offset-2">
										<div class="modal-body">


											<label class="radio-inline"><input type="radio" value="radio1"
												name="optradio">Đoàn viên</label> <label
												class="radio-inline"><input type="radio"
												name="optradio">Cán bộ Đoàn khoa</label> <label
												
												class="radio-inline"><input type="radio"
												name="optradio">Admin</label>

										</div>
									</div>
									<div class="form-group">
										<label for="username" class="col-xs-3 control-label required">
											Username </label>

										<div class="col-xs-9">
											<input name="username" type="text" class="form-control"
												placeholder="Username" ng-model="username" ng-minlength="6"
												ng-maxlength="30" required> <i
												class="fa fa-check text-success"
												ng-show="form.username.$dirty && form.username.$valid">
											</i>

											<div ng-show="form.username.$dirty && form.username.$invalid"
												class="text-danger">
												<span class="glyphicon glyphicon-ok"></span> <i
													class="fa fa-times text-danger"></i> <span
													ng-show="form.username.$error.required"> Username
													isn't empty </span> <span ng-show="form.username.$error.minlength">
													Username must be longer than 6 characters </span> <span
													ng-show="form.username.$error.maxlength"> Username
													must ne shorter than 30 characters </span>

											</div>
										</div>
									</div>
									<div class="form-group">
										<label for="password" class="col-xs-3 control-label required">Password</label>
										<div class="col-xs-9">
											<input name="password" ng-model="password" type="password"
												value="" class="form-control" placeholder="Password"
												ng-minlength="6" ng-maxlength="13" required> <i
												class="fa fa-check text-success"
												ng-show="form.password.$dirty && form.password.$valid"></i>
											<div ng-show="form.password.$dirty && form.password.$invalid"
												class="text-danger">
												<i class="fa fa-times text-danger"></i> <span
													ng-show="form.password.$error.required">Password
													isn't empty</span> <span ng-show="form.password.$error.minlength">Password
													must be 6 characters</span> <span
													ng-show="form.password.$error.maxlength">Password
													must be 13 characters</span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label for="email" class="col-xs-3 control-label required">Email</label>
										<div class="col-xs-9">
											<input name="email" type="email" class="form-control"
												placeholder="Email" ng-model="email" autocomplete="off"
												required> <i class="fa fa-check text-success"
												ng-show="form.email.$dirty && form.email.$valid"></i>
											<div ng-show="form.email.$dirty && form.email.$invalid"
												class="text-danger">
												<i class="fa fa-times text-danger"></i> <span
													ng-show="form.email.$error.required">You don't enter
													your email adrdess</span> <span ng-show="form.email.$error.email">Malformed
													email</span>
											</div>
										</div>

									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-5 col-md-offset-3">
												<div class="checkbox">
													<label> <input type="checkbox" value="remember-me">
														Remember me
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-3 col-xs-9">
											<button type="submit" class="btn btn-primary">
												Login <i class="fa fa-sign-in"></i>
											</button>
											<button class="btn btn-primary" data-dismiss="modal">Close</button>
										</div>
									</div>
								</form>
							</form>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					var demoApp = angular.module('demoApp', []).controller(
							"RegisterCtrl", [ '$scope', function($scope) {
								$scope.success = false;
								$scope.register = function() {
									$scope.success = true;
								}
							} ]);
				</script>
			</div>
		</div>
	</div>
</body>
</html>