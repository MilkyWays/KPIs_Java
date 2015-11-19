<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Giảng Viên</title>
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
	<div class="container" border="border-color:#00ff00">
		<a href="http://hcmute.edu.vn"><img src="images/banner.png"></a>
		<h3 class="demo-panel-title"></h3>
		<div class="row demo-row">
			<div class="col-xs-12">
				<nav class="navbar navbar-inverse navbar-embossed" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-01">
							<span class="sr-only">Toggle navigation</span>
						</button>
						<a class="navbar-brand" href="#"><s:property value="ViTri"/></a>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="Trưởng Khoa.html"><img src="images/avatar.png" width="30" height="30"><s:property value="TenGV"/></a></li>
							<li><a href="login.html"><img src="images/log-out.png" width="30" height="30">Thoát</a></li>
						</ul>
					</div>
				</nav><!-- /navbar -->
			</div>
		</div> <!-- /row -->

		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#table1">Đăng Kí</a></li>
			<li><a data-toggle="tab" href="#table2">Xem Điểm</a></li>
		</ul>
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
						<div class="panel-heading">Thông Tin - Thời gian đăng kí : 17/11/2015 - 30/11/2015  </div>
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
							<h1></h1>
							<table class="table table-bordered" border="border-color:#00ff00">
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
			</div>
			<a href="http://hcmute.edu.vn"><img src="images/footer.png"></a>
		</div>
	</div>
</body>