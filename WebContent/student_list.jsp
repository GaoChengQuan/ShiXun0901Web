<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css"/>
	</head>
	<body>
		<!--导航栏 begin-->
		<nav class="navbar navbar-default">
		  <div class="container">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#">教务管理系统</a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="#">学生管理</a></li>
		        <li><a href="#">班级管理</a></li>
		        <li><a href="#">课程管理</a></li>
		        <li><a href="#">教务管理</a></li>
		      </ul>
		      
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="#">Link</a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="#">Action</a></li>
		            <li><a href="#">Another action</a></li>
		            <li><a href="#">Something else here</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="#">Separated link</a></li>
		          </ul>
		        </li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
		<!--导航栏 end-->
		
		<!--中间内容部分 begin-->
		<div class="container">
			<div class="row">
				<!--左边占12份中的2份-->
				<div class="col-md-2">
					<div class="list-group">
					  <a href="#" class="list-group-item active">学生管理</a>
					  <a href="#" class="list-group-item">学生搜索</a>
					  <a href="#" class="list-group-item">学生添加</a>
					</div>
				</div>
				<!--左边占12份中的10份-->
				<div class="col-md-10">
					<ul class="nav nav-tabs">
					  <li role="presentation" class="active"><a href="#">学生管理</a></li>
					  <li role="presentation"><a href="#">学生搜索</a></li>
					  <li role="presentation"><a href="#">学生添加</a></li>
					</ul>
					<!-- jsp脚本 -->
					<%
						ArrayList<Student> list = request.getAttribute("list");
					%>
					<table class="table table-bordered table-hover table-condensed">
						<tr class="success">
							<td>id</td>
							<td>名字</td>
							<td>年龄</td>
							<td>性别</td>
							<td>地址</td>
						</tr>
						<tr>
							<td>1</td>
							<td>张三</td>
							<td>20</td>
							<td>男</td>
							<td>青岛</td>
						</tr>
						<tr>
							<td>1</td>
							<td>张三</td>
							<td>20</td>
							<td>男</td>
							<td>青岛</td>
						</tr>
						<tr>
							<td>1</td>
							<td>张三</td>
							<td>20</td>
							<td>男</td>
							<td>青岛</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<!--中间内容部分 end-->
		
		
	</body>
</html>