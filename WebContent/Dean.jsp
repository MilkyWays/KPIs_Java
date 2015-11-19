<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Trưởng Khoa</title>
	<meta name="description" content="Flat UI Kit Free is a Twitter Bootstrap Framework design and Theme, this responsive framework includes a PSD and HTML version."/>

	<meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">

	<!-- Loading Bootstrap -->
	<link href="css/Flat-UI-master/dist/css/vendor/bootstrap.min.css" rel="stylesheet">

	<!-- Loading Flat UI -->
	<link href="css/Flat-UI-master/dist/css/flat-ui.css" rel="stylesheet">
	<link href="css/Flat-UI-master/docs/assets/css/demo.css" rel="stylesheet">
	<link rel="shortcut icon" href="img/favicon.ico">
	<script src="https://code.jquery.com/jquery.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body> 		
	<div class="container">
		<img src="images/banner.png">
		<h3></h3>
		<div id="header">
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>                        
						</button>
						<a class="navbar-brand" href="#"><s:property value="ViTri"/></a>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="Hieu Truong.html"><img src="images/avatar.png" width="25" height="25"><s:property value="TenGV"/></a></li>
							<li><a href="login.html"><img src="images/log-out.png" width="28" height="28">Thoát</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>

		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#table1">Đăng Kí</a></li>
			<li><a data-toggle="tab" href="#table2">Xem Điểm</a></li>
			<li><a data-toggle="tab" href="#table3">Duyệt</a></li>
		</ul>
		<h2></h2>
		<div class="tab-content">
			<div id="table1" class="tab-pane fade in active">
				<div id="table1">
					<form class="form-horizontal">
						<div class="form-group">
							<h1></h1>
							<label class="col-md-4 form-label" for="group_target">Nhóm mục tiêu:</label>
							<div class="col-sm-3">
								<select class="form-control" >
									<option value="teaching">Giảng Dạy</option>
									<option value="research">Nghiên Cứu Khoa Học</option>
									<option value="serve">Phục Vụ</option>
								</select>
							</div>      
						</div>
					</form>	

					<div class="panel panel-info">
						<div class="panel-heading">Thông Tin - Thời Gian Đăng Kí: 17/11/2015 - 30/11/2015</div>
						<div class="panel-body">
							<form class="form-horizontal" role="form" >
								<div class="row">
									<div class="col-sm-8">
										<div class="form-group">
											<label class="control-label col-md-3" for="name">Mục tiêu chi tiết</label>
											<div class="col-md-8">
												<input type="text" class="form-control" id="name" placeholder="Nhập nội dung chi tiết các mục tiêu">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3" for="point_max">Điểm KPI Tối Đa </label>
											<div class="col-md-8">
												<input type="text" class="form-control" id="name" placeholder="Nhập điểm KPI Max ">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3" for="bo_mon">Chỉ tiêu đăng ký</label>
											<div class="col-md-8">
												<input type="text" class="form-control" id="name" placeholder="Để trống ô này" disabled>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-3" for="positon">Kết quả thực hiện HK1 </label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="name" placeholder="Để trống ô này" disabled>
											</div>
										</div>    
										<div class="form-group">
											<label class="control-label col-md-3" for="object">Kết quả thực hiện cả năm</label>
											<div class="col-md-8">          
												<input type="text"  class="form-control" id="object" placeholder="Để trống ô này" disabled>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3" for="object">Tự Đánh Giá</label>
											<div class="col-md-8">          
												<input type="text"  class="form-control" id="object" placeholder="Để trống ô này" disabled>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3" for="object">Đánh giá từ cấp trên</label>
											<div class="col-md-8">          
												<input type="text"  class="form-control" id="object" placeholder="Để trống ô này" disabled>
											</div>
										</div>   
										<div class="form-group">   
											<div class="col-md-offset-2">
												<div class="btn-group btn-group-justified">
													<div class="button-group">
														<button type="button" onclick="btnAdd()" class="btn btn-success">Thêm</button>       
														<button type="button" onclick="btnChange()" class="btn btn-success">Chỉnh Sữa</button>          
														<button type="button" onclick="btnDelete()" class="btn btn-success">Xoá</button> 
														<button type="button" onclick="btnSave()" class="btn btn-success">Lưu</button>       
														<button type="button" onclick="btnCanel()" class="btn btn-success">Huỷ</button>           

													</div>                 
												</div>
											</div>           
										</div>
									</div>								
								</div>
							</form>
						</div>
						<div class="">
							<table class="table table-bordered table-hover">
								<thead>
									<tr class="btn-info">
										<th>STT</th>
										<th>Mục tiêu chi tiết</th>
										<th>Điểm KPI Max</th>
										<th>Chỉ tiêu đăng ký</th>
										<th>Kết quả thực hiện HKI</th>
										<th>Kết quả thực hiện cả năm</th>

									</tr>
								</thead>
								<tr>
									<td>1</td>
									<td>Đề tài NCKH, Hướng dẫn SV NCKH
									</td>
									<td>20
									</td>
									<td>
									</td>
									<td>
									</td>
									<td>
									</td>
								</tr>
							</table>
						</div>  
					</div>  
				</div>
			</div>



			<div id="table2" class="tab-pane fade">
				<div id="table2">
					<div class="container">
						<table class="table table-striped" border="btn-success">
							<thead>
								<tr class="btn-success">
									<td>STT</td>
									<td>MSGV</td>
									<td>Giảng Dạy</td>
									<td>Nghiên Cứu Khoa Học</td>
									<td>Phục Vụ</td>
									<td>Điểm TB</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>2</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>3</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>4</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>



			<div id="table3" class="tab-pane fade">
				<form class="navbar-form active navbar-right" action="#table1" role="search">
					<div class="form-group">
						<div class="input-group">
							<input class="form-control" id="navbarInput-01" type="search" placeholder="Search">
							<span class="input-group-btn">
								<button type="submit" class="btn"><span class="fui-search"></span></button>
							</span>
						</div>
					</div>
				</form>
				<div class="row">
					<div class="col-md-6 col-md-offset-2">
						<form class="form-horizontal">
							<div class="form-group">
								<label class="col-md-5 control-label">Tìm Kiếm Theo: </label>
								<div class="col-md-5">
									<select class="form-control">
										<option value="Tên">Tên</option>
										<option value="Khoa">Khoa</option>
										<option value="Mã Số Giảng Viên">Mã Số Giảng Viên</option>
									</select>
								</div>
							</div>
						</form>
					</div>
				</div>
				<h1>   	</h1> 
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<table class="btn btn-danger">
							<thead class="row">
								<tr>
									<tr><td>Danh Sách Giảng Viên</td></tr>
								</tr>
							</thead>
						</table>
					</div>
				</div>
				<h3></h3>
				<div>
					<!--div class="col-md-8 col-md-offset-2"-->
					<div class="container">
						<table class="table table-bordered table-condensed " >
							<tbody>
								<tr class="btn-success">
									<td class="text-center col-md-1">STT</td>
									<td class="text-center col-md-4">Họ Và Tên</td>
									<td class="text-center col-md-60">Bộ Môn</td>
									<td class="text-center col-md-2">Xác Nhận</td>
								</tr>
								<tr class="table-hover">
									<td>1</td>
									<td>Trần Công Tú</td>
									<td>Nhập Môn Lập Trình</td>
									<td><label class="text-center col-md-1"><a href="#"><img src="tick.png" width="25" height="25"></a></label></td>
								</tr>
								<tr class="table-hover">
									<td>2</td>
									<td>Lê Trần Thi Văn</td>
									<td>Công Nghệ Phần Mềm</td>
									<td><label class="text-center col-md-1"><a href="#"><img src="tick.png" width="25" height="25"></a></label></td>

								</tr>
								<tr class="table-hover">
									<td>3</td>
									<td>Lê Văn Khoan</td>
									<td>Hệ Điều Hành</td>
									<td><label class="text-center col-md-1"><a href="#"><img src="tick.png" width="25" height="25"></a></label></td>

								</tr>
								<tr class="table-hover">
									<td>4</td>
									<td>Nguyễn Minh Đạo</td>
									<td>Lập Trình Windows</td>
									<td><label class="text-center text-center col-md-1"><a href="#"><img src="note.png" width="25" height="25"></a></label></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<a href="http://hcmute.edu.vn"><img src="footer.png"></a>
	</div>		
</body>