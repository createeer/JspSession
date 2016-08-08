<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'session2.jsp' starting page</title>
    
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
  	
   
    
    <h1>SESSION @2</h1><hr>
    session创建时间：<%=sdf.format(creatd)%><br>
    sessionID:<%=session.getId() %><br>
   <%=session.getAttribute("username") %><br>
   <%
   String[] str = session.getValueNames();	
   for(int i=0;i<str.length;i++)
   	out.println(str[i] + "&nbsp;&nbsp;");
    %>
  </body>
</html>
