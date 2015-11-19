<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>   
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Admin</title>
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
	<style>
		body{
			background-image: url("background1.jpg");
			background-repeat: no-repeat;
			background-attachment: fixed;
			background-position: center;
			background-size: cover;
		}
	</style>


</head>

<body> 		
	<div class="container">
		<img src="images/banner.png">
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
							<li><a href="gian_vien.html"><img src="images/avatar.png" width="25" height="25"><s:property value="TenGV"/></a></li>
							<li><a href="login.html"><img src="images/log-out.png" width="28" height="28">Thoát</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<!-- Menu -->
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#home">Cấp Tài Khoản</a></li>
			<li><a data-toggle="tab" href="#menu1">Tạo Đợt Đăng Kí</a></li>
		</ul>

		<div class="tab-content">
			<!-- Create Account -->
			<div id="home" class="tab-pane fade in active">
				<div class="panel panel-info">
					<h1></h1>
					<div class="panel-heading">Thông Tin</div>
					<div class="panel-body">
						<form action="form-action" class="form-horizontal" role="form" method="post">
						<div class="form-group">
								<label for="id_teach" class="control-label col-sm-2">
									MSGV: 
								</label>
								<div class="col-sm-5">
									<input name="msgv" type="text" class="form-control" id="id_teach" placeholder="Nhập mã số giảng viên">
								</div>      
							</div>       
							<div class="form-group">
								<label class="control-label col-sm-2" for="name">Tên:</label>
								<div class="col-sm-5">
									<input name="hoten" type="text" class="form-control" id="name" placeholder="Nhập họ và tên">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="name">Email:</label>
								<div class="col-sm-5">
									<input name="email" type="email" class="form-control" id="name" placeholder="Nhập họ và tên">
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-sm-2" for="faculty">Khoa: </label>
								<div class="col-sm-5">
									<select class="form-control" name="makhoa" id="falculty">
										<option value="fit">Công Nghệ Thông Tin</option>
										<option value="feee">Điện-Điện Tử</option>
										<option value="fff">Ngoại Ngữ</option>
										<option value="fhq">Xây Dựng Cơ Học và Ứng Dụng</option>
										<option value="fhq">Công Nghệ May & Thiết Kế Thời Trang</option>
										<option value="fhq">Cơ Khí Chế Tạo Máy</option>
										<option value="fhq">Cơ Khí Động Lực</option>
										
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="bo_mon">Bộ Môn:</label>
								<div class="col-sm-5">
									<select name="bomon" class="form-control" id="bo_mon" >
										<option value="software">Công Nghệ Phần Mềm</option>
										<option value="network">Netword</option>
										<option value="base_it">Cơ Lý Thuyết</option>
										<option value="sys_info">Bảo Mật Thông Tin</option> 
									</select>
								</div>
							</div>  
							<div class="form-group">
								<label class="control-label col-sm-2" for="positon">Chức Vụ:</label>
								<div class="col-sm-5">
									<select name="maquyen" class="form-control" id="position">
										<option value="Dean">Trưởng Khoa</option>
										<option value="BR">Ban Giám Hiệu</option>
										<option value="lecturer">Giảng Viên</option>
										<option value="dept">Phòng Tổ Chức Cán Bộ</option>   
									</select>
								</div>
							</div>							 
							     
							<div class="form-group">
								<label class="control-label col-sm-2" for="boss">Cấp Trên: </label>
								<div class="col-sm-5">
									<select name="macaptren" class="form-control"  id="boss">
										<option value="123">Đặng Thanh Dũng</option>
										<option value="12345">Đỗ Văn Dũng</option>
									</select>
								</div>   
							</div>
							<div class="form-group">   
								<div class="col-xs-offset-2">
									<div class="btn-group btn-group-justified">
										<div class="button-group">
											<button type="button" onclick="btnAdd()" class="btn btn-info">Thêm</button>       
											<button type="button" onclick="btnChange()" class="btn btn-info">Chỉnh Sữa</button>          
											<button type="button" onclick="btnDelete()" class="btn btn-info">Xoá</button>            
											<button type="submit" class="btn btn-info">Lưu</button>       
											<button type="button" onclick="btnCanel()" class="btn btn-info">Cancel</button> 
										</div>                 
									</div>
								</div>              
							</div>
						</form>       
					</div>
					<table class="table table-bordered table-hover">
						<thead>
							<tr class="btn-success" border="btn-success">
								<th>STT</th>
								<th>Tên</th>
								<th>MSGV</th>
								<th>Khoa</th>
								<th>Tên Đăng Nhập</th>
								<th>Chức Vụ</th>
								<th>Cấp Trên</th>
							</tr>
						</thead>
						<tr>
							<td>1</td>
							<td>Nguyễn Thanh An</td>
							<td>13110031</td>
							<td>Công Nghệ Thông Tin</td>
							<td>ThanhAn</td>
							<td>Giảng Viên</td>
							<td>Đặng Thanh Dũng</td>
						</tr>							

					</table>
				</div>  
			</div>
			<!-- Tạo biểu mẫu -->
			<div id="menu1" class="tab-pane fade">
			
				<form action="form-account" method="POST" role="form">
				<div class="panel panel-info">
					
					<div class="panel-heading">Thông Tin</div>
					<div class="form-group">   
						<div class="btn-group btn-group-justified">
							<div class="button-group">
								<h1></h1>
								<label class="control-label col-md-3" for="name">Mã đợt đăng kí:</label>
								<div class="col-md-8">
									<p><input type="text" class="form-control" id="name" placeholder="Nhập mã đợt đăng kí"/></p>
								</div>
								<label class="control-label col-md-3" for="name">Ngày bắt đầu:</label>
								<div class="col-md-8">
									<p><input type="text" class="form-control" id="name" placeholder="Nhập ngày bắt đầu"/></p>
								</div>
								<label class="control-label col-md-3" for="name">Ngày kết thúc:</label>
								<div class="col-md-8">
									<p><input type="text" class="form-control" id="name" placeholder="Nhập ngày kết thúc"/></p>
								</div>
								<label class="control-label col-md-3" for="name">Ngày bắt đầu duyệt:</label>
								<div class="col-md-8">
									<p><input type="text" class="form-control" id="name" placeholder="Nhập ngày bắt đầu duyệt"/></p>
								</div>
								<label class="control-label col-md-3" for="name">Ngày kết thúc duyệt:</label>
								<div class="col-md-8">
									<p><input type="text" class="form-control" id="name" placeholder="Nhập ngày kết thúc duyệt"/></p>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">   
						<div class="col-xs-offset-2">
							<div class="btn-group btn-group-justified">
								<div class="button-group">
									<button type="button" onclick="btnAdd()" class="btn btn-info">Thêm</button>       
									<button type="button" onclick="btnChange()" class="btn btn-info">Chỉnh Sữa</button>          
									<button type="button" onclick="btnDelete()" class="btn btn-info">Xoá</button>            
									<button type="submit" class="btn btn-info">Lưu</button>       
									<button type="button" onclick="btnCanel()" class="btn btn-info">Cancel</button> 
								</div>                 
							</div>
						</div>              
					</div>
			
					<table class="table table-bordered table-hover">
						<thead>
							<tr class="btn-success" border="btn-success">
								<th>STT</th>
								<th>Mã đợt đăng kí</th>
								<th>Ngày bắt đầu</th>
								<th>Ngày kết thúc</th>
								<th>Ngày bắt đầu duyệt</th>
								<th>Ngày kết thúc duyệt</th>
								<th>Link chỉnh sửa</th>
							</tr>
						</thead>
						<tr>
							<td>1</td>
							<td>HK1_2015_2016</td>
							<td>01/12/2015</td>
							<td>30/12/2015</td>
							<td>15/01/2016</td>
							<td>30/01/2016</td>
							<td>Click here</td>
						</tr>							
					</table>
				</div>  
			</div>
		</div>
		<a href="http://hcmute.edu.vn"><img src="images/footer.png"></a>
	</div>
</body>
</html>