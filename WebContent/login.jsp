<%@ page language="java" import="java.util.*,com.example.dao.DbUtil,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body class="bg">
    <%
    	request.setCharacterEncoding("utf-8");
    	String username = request.getParameter("username");
    	String password = request.getParameter("password");
    	String sql = "INSERT INTO tb_users(fd_username,fd_password) VALUES(?,?)";
    	
    	int result = 0;
    	try{
    		PreparedStatement ps = DbUtil.executePreparedStatement(sql);
    		ps.setString(1,username);
    		ps.setString(2, password);
    		result = ps.executeUpdate();
    		ps.close();
    	}catch(SQLException e){
    		e.printStackTrace();
    	}
     %>
    <form id="userForm" class="form" name="user" method="post" action="index.jsp">
    	<h3>登录界面</h3>
    	<input type="text" name="username" class="inputmsg" id="txtUser" placeholder="请输入用户名"><br>
    	<input type="password" name="password" class="inputmsg" id="txtPwd" placeholder="请输入密码"><br>
    	<input type="submit" name="submit" class="inputbtn" value="登录">
    	<input type="reset" name="reset" class="inputbtn" value="重置">
    </form>
  </body>
</html>
