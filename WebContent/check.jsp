<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>check.jsp</title>
</head>
<body>
    <%
    	response.setCharacterEncoding("utf-8");
		String msg = request.getParameter("msg");
		if("1".equals(msg)){
			response.sendRedirect("page/lys.jsp");
		}else if("2".equals(msg)){
			response.sendRedirect("page/zwt.jsp");
		}else if("3".equals(msg)){
			response.sendRedirect("page/hps.jsp");
		}else if("4".equals(msg)){
			response.sendRedirect("page/xxt.jsp");
		}else if("5".equals(msg)){
			response.sendRedirect("page/rq.jsp");
		}else if("6".equals(msg)){
			response.sendRedirect("page/ysc.jsp");
		}else{
			response.sendRedirect("index.jsp");
		}
     %>
</body>
</html>