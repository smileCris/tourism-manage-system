<%@ page language="java" import="java.util.*,com.example.dao.DbUtil,java.sql.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>皇甫山</title>
<link rel="stylesheet" type="text/css" href="../styles.css">
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Ct4xKHXB9X1LQObQ4fw2zdIZS845lzPQ"></script>
</head>
<body class="bg1">
	<div class="detail">	
	    <%
	    	request.setCharacterEncoding("utf-8");
	    	String sqlQuery = "SELECT * FROM tb_detail where title='滁州皇甫山简介'";
			ResultSet rs = null;
			rs = DbUtil.executeQuery(sqlQuery);
			try{		
				if(rs.next()){%>		
					<h3><%= rs.getString("title") %></h3><hr>
					<u><b><%= rs.getString("littleT1") %></b></u>
					<%= rs.getString("detail1") %>
					<u><b><%= rs.getString("littleT2") %></b></u><br>
					<%= rs.getString("detail2") %>
				<%}else{
					out.print("连接出错... ");
				}
				DbUtil.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
	    %>
	    <div id="allmap"></div>
	</div>
	<script type="text/javascript">
		// 百度地图API功能
		var map = new BMap.Map("allmap");            
		map.centerAndZoom("滁州",12);           
		//单击获取点击的经纬度
		map.addEventListener("click",function(e){
			alert(e.point.lng + "," + e.point.lat);
		});
	</script>
</body>
</html>