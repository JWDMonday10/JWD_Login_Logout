<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
</head>
<body>
<div class="container">
	
	<div class="row">
		<div class="col-md-12">
			<nav class="navbar navbar-inverse"><div class="row">
    <div class="col-md-12">
      <div class="panel panel-default">
          <div class="panel-body">
          <div class="TT_top">
            <div class="TT_logo">
              <div class="anh_logo"><img alt="img-responsive" src="hinhanh/logodoan1.png" width="150px" height="150px" align="left"></div>
                <div class="name-ute">
                  <h2 style="color: black"> ĐOÀN TRƯỜNG ĐẠI HỌC </h2>
                          <h1 style="color: black"><b>SƯ PHẠM KỸ THUẬT TP.HCM</b></h1>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  				<div class="container-fluid">
	 				<div class="collapse navbar-collapse" id="myNavbar">
      					<ul class="nav navbar-nav">
  							<li><a href="#"><span class="glyphicon glyphicon-home"></span> Trang chủ</a></li>
  							<li><a href="https://www.facebook.com/doantruongdhsuphamkythuat/?fref=ts">Giới thiệu</a></li>
  							<li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> Hỗ trợ</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-envelope"></span> Tin nhắn</a></li>
    					</ul>
      					<ul class="nav navbar-nav navbar-right">
        					<li><a href="Form_Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
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
	        $(document).ready(function()
	        {
	            // Khai báo đối tượng timeout để dùng cho hàm
	            // clearTimeout
	            var timeout = null;

	            // Sự kiện keyup
	            $('#title').keyup(function()
	            {
	                // Xóa đi những gì ta đã thiết lập ở sự kiện 
	                // keyup của ký tự trước (nếu có)
	                clearTimeout(timeout);

	                // Sau khi xóa thì thiết lập lại timeout
	                timeout = setTimeout(function ()
	                {
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
	                        success : function (result){
	                            $('#result').html(result);
	                        }
	                    });
	                }, 500);
	            });
	        });
	     	
	        </script>
		</div>
	</div>
	<div class="row">
		<div class="col-md-8">
			<div class=" panel panel-default">
				<div class="panel-body">
					<div id="myCarousel" class="carousel slide">
						<ol class="carousel-indicators">
      						<li class="item1 active"></li>
		      				<li class="item2"></li>
		      				<li class="item3"></li>
		      				<li class="item4"></li>
    					</ol>
    				<div class="carousel-inner" role="listbox">
    					<div class="item active">
        					<img src="hinhanh/xuantinhnguyen_1.jpg" height="110px" width="900px" >
        						<div class="carousel-caption"></div>
      					</div>
						<div class="item">
        					<img src="hinhanh/muahexanh.jpg" height="110px" width="900px">
        						<div class="carousel-caption"></div>
  						</div>
      					<div class="item">
        					<img src="hinhanh/trungthuyeuthuong_1.jpg" height="110px" width="900px">
        						<div class="carousel-caption"></div>
      					</div>
      			 		<div class="item">
	        				<img src="hinhanh/hoithao.jpg" height="110px" width="900px">
	        					<div class="carousel-caption"></div>
  						</div>
					</div>
					<a class="left carousel-control" href="#myCarousel" role="button">
	      				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      				<span class="sr-only">Previous</span>
    				</a>
    				<a class="right carousel-control" href="#myCarousel" role="button">
	      				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      				<span class="sr-only">Next</span>
    				</a>
					</div>
					<script>
						$(document).ready(function(){
		    			$("#myCarousel").carousel();
		    
		    			$(".item1").click(function(){
		        		$("#myCarousel").carousel(0);
					    });
					    $(".item2").click(function(){
					        $("#myCarousel").carousel(1);
					    });
					    $(".item3").click(function(){
					        $("#myCarousel").carousel(2);
					    });
					    $(".item4").click(function(){
					        $("#myCarousel").carousel(3);
					    });
					    
					    // Enable Carousel Controls
					    $(".left").click(function(){
					        $("#myCarousel").carousel("prev");
					    });
					    $(".right").click(function(){
					        $("#myCarousel").carousel("next");
					    });
					});
				</script>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class=" panel panel-default">
				<div class="panel-body">
					<div class="accordion" class="panel-group">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="#" data-toggle="collapse" data-parent="#accordion"><span class="glyphicon glyphicon-tags"></span><b> CÁC TRANG LIÊN KẾT </b></a>
								</h4>
							</div>
						</div>
					</div>
				<div class="list-group">
					<a href="https://www.facebook.com/doantruongdhsuphamkythuat/?fref=ts">
						<img src="hinhanh/logodoan_1.png"></a>
					<a href="https://www.facebook.com/hotrosinhvienspkt/?fref=ts">
						<img src="hinhanh/tranghotro.jpg" width="200" height="200"></a>
				</div>
				</div>
			</div>
		</div>
	</div>
		<div class="row">
			<div class="col-md-4">
  				<div class="panel panel-default">
  					<div class="panel-body">
						<div id="accordion" class="panel-group">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="#" data-toggle="collapse" data-parent="#accordion"><span class="glyphicon glyphicon-bookmark"></span><b> THÔNG BÁO</b></a>
              						</h4>
								</div>
							</div>
						</div>
						<ul style="list-style-type:square">
							<li ><a href="#"> KẾ HOẠCH HOẠT ĐỘNG HỘI TRẠI TRUYỀN THỐNG <small><i><em>Septemper 30, 2016</em></i></small></a>
							</li>
								<img src="hinhanh/hoitrai.jpg" width="200px" height="200px" class="img-responsive" >
							<li><a href="#"> CUỘC THI THIẾT  KẾ THIỆP 20-11: NGÀN LỜI TRI ÂN <small><i>November 20, 2016</i></small></a>
							</li>		
							<li><a href="#"> KẾ HOẠCH THAM GIA CHỦ NHẬT XANH <small><i>October 15, 2016</i></small></a>
							</li>
						</ul>
						<button type="button"  class="btn btn-primary btn-sm pull-left" style="margin-left: 250px">Tất cả</button>
					</div>
				</div>
			</div>
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-body">
					<div id="accordion" class="panel-group">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="#" data-toggle="collapse" data-parent="#accordion"><span class="glyphicon glyphicon-book"></span><b> HOẠT ĐỘNG</b></a>
								</h4>
							</div>
						</div>	
					</div>
					<ul style="list-style-type:square">
					<li>
							<a href="Hoi_Thi_HSSV_Gioi_Nghe.jsp"> HỘI THI HỌC SINH SINH VIÊN GIỎI NGHỀ LẦN 8 NĂM 2016</a>
						</li>
						<img src="hinhanh/gioinghe.jpg" class="img-responsive" width="350px" height="350px">
						<small><i style="color: blue"> March 03, 2016 </i></small>
						<li>
							<a href="Le_Ki_Niem_QT_Phu_Nu.jsp"> LỄ KỈ NIỆM NGÀY THÀNH LẬP PHỤ NỮ 08/3/2016 <small><i>March 08, 2016</i></small></a>
						</li>
						<li>
							<a href="#"> KHỞI ĐỘNG ĐOÀN THANH NIÊN HÀNH ĐỘNG <small><i>April 29, 2016</i></small></a>
						</li>
					</ul>
					<button type="button" class="btn btn-primary btn-sm pull left" style="margin-left: 250px">Tất cả</button>
				</div>
			</div>
			
		</div>
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-body">	
					<div id="accordion" class="panel-group">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="#" data-toggle="collapse" data-parent="#accordion"><span class="glyphicon glyphicon-film"></span><b> VIDEO-HÌNH ẢNH </b></a>
								</h4>
							</div>
						</div>	
					</div>
					<ul style="list-style-type: square">
					<li>
						<a href="#"> HỘI THI HỌC SINH SINH VIÊN GIỎI NGHỀ LẦN 8 NĂM 2016 <small><i>March 08, 2016</i></small></a>
					</li>
					<video width="300" controls>
  						<source src="hinhanh/Trailer Hội thi Học sinh, Sinh viên giỏi nghề lần 8 Năm 2016.mp4" type="video/mp4">
					</video>
					<li>
						<a href="#"> ALBUM ẢNH TRUNG THU YÊU THƯƠNG TẠI NHÀ THIẾU NHI Q.THỦ ĐỨC <small><i>September 10, 2016</i></small></a>
					</li>
					<li>
						<a href="#"> ALBUM ẢNH VỀ CHIẾN DỊCH XUÂN TÌNH NGUYỆN TẠI BÌNH PHƯỚC <small><i>February 15, 2016</i></small></a>
					</li>	
					</ul>
					<button type="button" class="btn btn-primary btn-sm pull-left" style="margin-left: 250px "> Tất cả</button>
				</div>
			</div>
		</div>
	</div>
	<footer class="site-footer">
		<div class="row">
			<div class="col-md-12">
				<div id="accordion" class="panel-group">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<p> Đoàn Trường ĐH Sư phạm Kỹ thuật TP.HCM</p>
								<address> Số 1, Võ Văn Ngân, phường Linh Chiểu, quận Thủ Đức</address>
								<p> Email: doanspkt@gmail.com</p>
							</h4>
						</div>
					</div>
				</div>
			</div>
		</div>			
	</footer>
</div>
</body>
</html>




