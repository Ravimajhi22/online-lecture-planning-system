<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="connect.jsp" %>
<%
int id=Integer.parseInt(request.getParameter("id"));
try {
	
	
	PreparedStatement ps=con.prepareStatement("delete from addsyllabus where id=?");
	ps.setInt(1, id);  
	
	
	int n= ps.executeUpdate();   
	if(n==1)
	{
		
	%>
		<script>alert("delete sucessfully");</script>
	
	<jsp:include page="ViewSyllabusdata.jsp"/>
	<%
	}
	else
	{
		
	%>
	
	<%
	}
}
catch(Exception e) {
	e.printStackTrace();
}  
%>
</body>
</html>