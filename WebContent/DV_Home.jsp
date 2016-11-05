<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<link rel="stylesheet" href="chosen/chosen.css" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"
	type="text/javascript"></script>
<script src="chosen/chosen.jquery.js" type="text/javascript"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	function onClickTab(url) {
		var xhttp;
		if (window.XMLHttpRequest) {
			// code for modern browsers
			xhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				document.getElementById("demo").innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", url, true);
		xhttp.send();
	}
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
									<img alt="img-responsive" src="hinhanh/logodoan1.png"
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
								<li><a href="JWD_Home.jsp"><span
										class="glyphicon glyphicon-home"></span> Trang chủ</a></li>
								<li><a
									href="https://www.facebook.com/doantruongdhsuphamkythuat/?fref=ts">Giới
										thiệu</a></li>
								<li><a href="LogoutServlet"><span
										class="glyphicon glyphicon-log-out"></span> Logout</a></li>


							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
					<div class="col-md-3">
						<a href="#" class="list-group-item list-group-item-info"><td
							width="40"><p align="left">
									<img src="hinhanh/home.png" width="24" height="24"><b>Trang
										của bạn</b>
								</p></td></a> <a onclick="onClickTab('DV_ThongTinDV.jsp');"
							class="list-group-item list-group-item-info"><td width="40"><p
									align="left">
									<img src="hinhanh/user.png" width="24" height="24"><b>Thông
										tin cá nhân</b>
								</p></td></a> <a onclick="onClickTab('DV_DSHDDaThamGia.jsp');"
							class="list-group-item list-group-item-info"><td width="40"><p
									align="left">
									<img src="hinhanh/details.png" width="24" height="24"><b>Danh
										sách hoạt động đã tham gia</b>
								</p></td></a> <a onclick="onClickTab('DV_DiemRLuyen.jsp');"
							class="list-group-item list-group-item-info"><td width="40"><p
									align="left">
									<img src="hinhanh/BHScore.png" width="24" height="24"><b>Điểm
										rèn luyện</b>
								</p></td></a> <a onclick="onClickTab('DV_CTXH.jsp');"
							class="list-group-item list-group-item-info"><td width="40"><p
									align="left">
									<img src="hinhanh/details (1).png" width="24" height="24"><b>Điểm
										công tác xã hội</b>
								</p></td></a> <a href="DangKy_HD_DV.jsp"
							class="list-group-item list-group-item-info"><td width="40"><p
									align="left">
									<img src="hinhanh/details.png" width="24" height="24"><b>Danh
										Sách Hoạt Động</b>
								</p></td></a> <a href="JWD_Home.jsp"
							class="list-group-item list-group-item-info"><td width="40"><p
									align="left">
									<img src="hinhanh/accept.png" width="24" height="24"><b>Thoát</b>
								</p></td></a>
					</div>
					<div class="col-md-9">
						<div id="demo"></div>
					</div>



				</div>
			</div>

		</div>
	</div>
</body>
</html>






