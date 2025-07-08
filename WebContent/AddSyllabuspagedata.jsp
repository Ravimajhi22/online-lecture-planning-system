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
String week=request.getParameter("week");
String date=request.getParameter("date");
String fname=request.getParameter("fname");
String subject=request.getParameter("subject");
String syllabus=request.getParameter("syllabus");
String duration=request.getParameter("duration");
String course=request.getParameter("course");
String stream=request.getParameter("stream");
int year=Integer.parseInt(request.getParameter("year"));
int sem=Integer.parseInt(request.getParameter("sem"));

try
{
	PreparedStatement ps=con.prepareStatement("insert into addsyllabus(weekday,dateofclass,facultyname,subject,syllabus,duration,course,stream,year,semister) values(?,?,?,?,?,?,?,?,?,?)");
	
	ps.setString(1, week);
	ps.setString(2, date);
	ps.setString(3, fname);
	ps.setString(4, subject);
	ps.setString(5, syllabus);
	ps.setString(6, duration);
	ps.setString(7, course);
	ps.setString(8, stream);
	ps.setInt(9, year);
	ps.setInt(10, sem);
		
	int n= ps.executeUpdate();
	if(n==1)
	{
	%>
	<script>alert("Syllabus add sucessfully");</script>
	<jsp:include page="ViewSyllabusdata.jsp"/>
	<%
	}
	else
		out.println("records not inserted");
		
	con.close();
}
catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>