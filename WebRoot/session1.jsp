<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'session1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
  	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd - HH-mm-ss");
  	Date creatd=new Date(session.getCreationTime());
   %>
    basePath=<%=basePath %>
    <br>bath = <%=path %><hr>
    <h1>SESSION</h1><hr>
    session创建时间：<%=sdf.format(creatd)%><br>
    sessionID:<%=session.getId() %><br>
   <%=session.getAttribute("username") %><br>
   <a href="session2.jsp">跳转到session2.jsp</a>
   <%
   session.setAttribute("name", "ming");
   session.setAttribute("age", "38");
   //session.setMaxInactiveInterval(10);
    %>
    <%session.invalidate();//销毁一个session %>
  </body>
</html>
