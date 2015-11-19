<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Phòng Tổ Chức Cán Bộ</title>
	<meta name="description" content="Flat UI Kit Free is a Twitter Bootstrap Framework design and Theme, this responsive framework includes a PSD and HTML version."/>

	<meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">

	<!-- Loading Bootstrap -->
	<link href="css/Flat-UI-master/dist/css/vendor/bootstrap.min.css" rel="stylesheet">

	<!-- Loading Flat UI -->
	<link href="css/Flat-UI-master/dist/css/flat-ui.css" rel="stylesheet">
	<link href="css/Flat-UI-master/docs/assets/css/demo.css" rel="stylesheet">
	<link rel="shortcut icon" href="img/favicon.ico">
	<script src="https://code.jquery.com/jquery.js"></script>
</head>

<body>
	<div class="container">
		<div class="background-color:f2ff23">
		<a href="http://hcmute.edu.vn"><img src="images/banner.png"></a>
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
							<li><a href="admin_panel.html"><img src="images/avatar.png" width="30" height="30"><s:property value="TenGV"/></a></li>
							<li><a href="login.html"><img src="images/log-out.png" width="28" height="28">Thoát</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
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
			<div class="container">
				<div class="col-md-10 col-md-offset-1">
					<table class="table table-bordered table-condensed table-hover">
						<thead>
							<tr class="btn-success">
								<td>STT</td>
								<td>Mục Tiêu</td>
								<td>Điểm KPI</td>
								<td>Chỉ Tiêu Đăng Kí</td>
								<td>Kết Quả Thực Hiện</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
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
							</tr>
							<tr>
								<td>3</td>
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
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<a href="http://hcmute.edu.vn"><img src="images/footer.png"></a>
	</div>
</body>
</html>