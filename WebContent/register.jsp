<%@ page language="java" import="java.util.*,com.example.dao.DbUtil,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body class="bg">
    <form id="userForm" class="form" name="user" method="post" action="login.jsp">
    	<h3>注册界面</h3>
    	<input type="text" id="txtUser" name="username" class="inputmsg" placeholder="请输入姓名"><br>
    	<input type="password" id="txtPwd" name="password" class="inputmsg" placeholder="请输入密码"><br>
    	<input type="password" id="txtRpt" name="pwdrepeat" class="inputmsg" placeholder="请确认密码"><br>
    	<input type="submit" name="submit" class="inputbtn" value="注册">
    	<input type="reset" name="reset" class="inputbtn" value="重置">
    </form>
  </body>
</html>
