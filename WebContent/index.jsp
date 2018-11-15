<%@ page language="java" import="java.util.*,com.example.dao.DbUtil,java.sql.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>滁州旅游</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body class="bg1">
	<div id="id">
    <%
    	request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
    	String sql = "SELECT * FROM tb_users where fd_username='"+username+"' and fd_password='"+password+"'";
		ResultSet rs = null;
		rs = DbUtil.executeQuery(sql);
		try{
			if(rs.next()){
				out.print("Hello " + username);
			}else{
				out.print("Please login ");
			}
			DbUtil.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
     %>
	</div>
	<form method="post" action="check.jsp">
		<input type="text" name="msg" class="inputmsg1" placeholder="请输入查询景点序号"><input type="submit" class="inputbtn1" value="查询">
	</form>
	<div class="main">
	    <%
	    	request.setCharacterEncoding("utf-8");
	    	String sqlQuery = "SELECT * FROM tb_scene";
			ResultSet rr = null;
			rr = DbUtil.executeQuery(sqlQuery);
			try{
				while(rr.next()){%>		
					<div class="page">
						<a href="<%= rr.getString("Slink") %>"><img src="<%= rr.getString("Spic") %>" /></a>
						<p><h4><%= rr.getString("Sname") %></h4><%= rr.getString("Smsg") %></p>
					</div>
				<%}
				DbUtil.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
	     %>
	</div>
</body>
</html>