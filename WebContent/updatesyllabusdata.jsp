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
//int id=Integer.parseInt(request.getParameter("id"));
String week=request.getParameter("week");
String date=request.getParameter("date");
String id=request.getParameter("id1");
String fname=request.getParameter("fname");
String subject=request.getParameter("subject");
String syllabus=request.getParameter("syllabus");
String duration=request.getParameter("duration");
String course=request.getParameter("course");
String stream=request.getParameter("stream");
String year=request.getParameter("year");
String sem=request.getParameter("sem");

try
{
	
	PreparedStatement ps=con.prepareStatement("update addsyllabus set weekday=?, dateofclass=?,facultyname=?,subject=?,syllabus=?,duration=?,course=?,stream=?,year=?,semister=?  where id=?");
	ps.setString(1, week);
	ps.setString(2, date);
	ps.setString(3, fname);
	ps.setString(4, subject);
	ps.setString(5, syllabus);
	ps.setString(6, duration);
	ps.setString(7, course);
	ps.setString(8, stream);
	ps.setString(9, year);
	ps.setString(10, sem);
	ps.setString(11, id);
	
	int n= ps.executeUpdate();
	if(n==1)
	{
			
	%>
			<script>alert("updated sucessfully");</script>
	
	<jsp:include page="ViewSyllabusdata.jsp"/>
	<%
	}
	else
	{
		out.println("Enter correct Id");
		%>
		
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