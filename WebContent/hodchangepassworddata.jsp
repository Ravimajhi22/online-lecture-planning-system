<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="connect.jsp" %>
<%
String old=request.getParameter("old");
String new1=request.getParameter("new");

try
{

	PreparedStatement ps=con.prepareStatement("update hod set Password=? where Password=?");
	ps.setString(1, new1);
	ps.setString(2, old);
	int n= ps.executeUpdate();
	
	if(n==1)
	{
		
	%>
		<script>alert("password change sucessfully");</script>
	
	<jsp:include page="home.jsp"/>
	<%
	}
	else
	{
		out.println("enter correct passwrod");
		%>
		<jsp:include page="hodchangepasswordpage.jsp"/>
		<%
	}
		
	con.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>