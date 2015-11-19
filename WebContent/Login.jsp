<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>     
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Login</title>
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
    <a href="http://hcmute.edu.vn"><img src="images/banner.png"></a>
  </div>
  
  <div class="container">
    <div class="login">
      <div class="login-screen">
        <div class="">
          <img src="" alt="" />
          <h4><small></small></h4>
        </div>

        <div class="login-form">
        <form action="login" method="get" accept-charset="utf-8">         
        
          <div class="form-group">
            <input name="username" type="text"  class="form-control login-field" value="" placeholder="Enter your name" id="login-name" />
            <label class="login-field-icon fui-user" for="login-name"></label>
          </div>

          <div class="form-group">
            <input name="password" type="password" class="form-control login-field" value="" placeholder="Password" id="login-pass" />
            <label class="login-field-icon fui-lock" for="login-pass"></label>
          </div>

          <input class="btn btn-primary btn-lg btn-block" type="submit">Log in</input>
          
          <a class="login-link" href="#">Lost your password?</a>
          </form>
        </div>
      </div>
    </div>

  </body>

    