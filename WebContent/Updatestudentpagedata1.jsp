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
int id=Integer.parseInt(request.getParameter("id"));
String fullname=request.getParameter("fullname");
String email=request.getParameter("email");
long mobile=Long.parseLong(request.getParameter("mobile"));
String course=request.getParameter("course");
String year=request.getParameter("year");
String stream=request.getParameter("stream");
try
{
	PreparedStatement ps=con.prepareStatement("update student set Fullname=?, Email=?, Mobile=?,Course=?, Year=?, Stream=? where Id=?");
	ps.setString(1, fullname);
	ps.setString(2, email);
	ps.setLong(3, mobile);
	ps.setString(4, course);
	ps.setString(5, year);
	ps.setString(6, stream);
	ps.setInt(7, id);
	
	int n= ps.executeUpdate();
	if(n==1)
	{
	%>
	<script>alert("updated sucessfully")</script>
	<jsp:include page="ViewStudentdata.jsp"/>
	<%
	}
	else
	{
		out.println("Enter correct Id");
		%>
		<jsp:include page="Updatestudentpage1.jsp"/>
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