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
String desc=request.getParameter("desc");
int id=Integer.parseInt(request.getParameter("id1"));
String fname=request.getParameter("fname");
String subject=request.getParameter("subject");
String syllabus=request.getParameter("syllabus");
String duration=request.getParameter("duration");
String course=request.getParameter("course");
String stream=request.getParameter("stream");
int year=Integer.parseInt(request.getParameter("year"));
int sem=Integer.parseInt(request.getParameter("sem"));
String status=request.getParameter("status");

try
{
	
	PreparedStatement ps=con.prepareStatement("update addsyllabus set weekday=?, dateofclass=?, description=?,facultyname=?,subject=?,syllabus=?,duration=?,course=?,stream=?,year=?,semister=?, status=?  where id=?");
	ps.setString(1, week);
	ps.setString(2, date);
	ps.setString(3, desc);
	ps.setString(4, fname);
	ps.setString(5, subject);
	ps.setString(6, syllabus);
	ps.setString(7, duration);
	ps.setString(8, course);
	ps.setString(9, stream);
	ps.setInt(10, year);
	ps.setInt(11, sem);
	ps.setString(12, status);
	ps.setInt(13, id);
	
	int n= ps.executeUpdate();
	if(n==1)
	{
			
	%>
			<script>alert("updated sucessfully");</script>
	
	<jsp:include page="ViewSyllabusdata2.jsp"/>
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