<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
int id=Integer.parseInt(request.getParameter("id"));

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lectureplanning","root","admin");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from addsyllabus where id="+id);
	int count=0; 
	while(rs.next()) 
	{
		//int id1=rs.getInt(4);
		String week=rs.getString(1);
		String date=rs.getString(2);
		String desc=rs.getString(3);
		int id1=rs.getInt(4);
		String fname=rs.getString(5);
		String subject=rs.getString(6);
		String syllabus=rs.getString(7);
		String duration=rs.getString(8);
		String course=rs.getString(9);
		String stream=rs.getString(10);
		int year=rs.getInt(11);
		int sem=rs.getInt(12);
		String status=rs.getString(13);
		
%>
	


<%@include file="Facultymainmenu.jsp" %>
<br><br><br>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Update Syllabus</div>
  <form action="updatesyllabusdata1.jsp" method="post" >
  <div class="form-group">
    <label class="label-control">Select Week Day</label>
   
<select name="week" class="form-control" required>
<option value="-1">WEEK</option>
<option value="Monday">Monday</option>
<option value="Tuesday">Tuesday</option>
<option value="Wednesday">Wednesday</option>
<option value="Thursday">Thursday</option>
<option value="Friday">Friday</option>
<option value="Saturday">Saturday</option>
<option value="Sunday">Sunday</option>
</select>
    
  </div>
  

  <div class="form-group">
    <label class="label-control">Enter Date</label>
    <input type="text" name="date" class="form-control"  value="<%= date%>"  required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Description</label>
    <input type="text" name="description" class="form-control" value="<%= desc%>" required>
  </div>
  
  
  <div class="form-group">
    <label class="label-control">Enter Id</label>
    <input type="text" name="id1" class="form-control"  value="<%= id1%>"  readonly>
  </div>
  
  <div class="form-group">
    <label class="label-control">Faculty Name</label>
    <input type="text" name="fname" class="form-control" value="<%= fname%>" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Subject</label>
    <input type="text" name="subject" class="form-control" value="<%= subject%>" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Syllabus</label>
    <input type="text" name="syllabus" class="form-control" value="<%= syllabus%>" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Duration</label>
    <input type="text" name="duration" class="form-control" value="<%= duration%>" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Course</label>
    <input type="text" name="course" class="form-control" value="<%= course%>" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Stream</label>
    <input type="text" name="stream" class="form-control" value="<%= stream%>" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Year</label>
    <input type="text" name="year" class="form-control" value="<%= year%>" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Semister</label>
    <input type="text" name="sem" class="form-control" value="<%= sem%>" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Status</label>
    <input type="text" name="status" class="form-control" value="<%= status%>" required>
  </div>
  
  <input type="submit" class="btn btn-primary btn-block" value="Update">
 
  </form>
  </div>
  </div>
  <div class="col-md-4"></div>
</div>
</div>
<%@ include file="footer.jsp" %>



<%
		
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

</body>
</html>