<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
int id=Integer.parseInt(request.getParameter("Id"));

try
{
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from student where Id="+id);
	int count=0; 
	while(rs.next()) 
	{
		int id1=rs.getInt(1);
		String fname=rs.getString(2);
		String email=rs.getString(4);
		long mobile=rs.getLong(5);
		String course=rs.getString(6);
		int year=rs.getInt(7);
		String stream=rs.getString(8);
		
%>


<%@include file="Studentmainmenu.jsp" %>
<br><br><br>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Update Syllabus</div>
  <form action="Updatestudentpagedata.jsp"  method="post" >
 
 
  <div class="form-group">
    <label class="label-control">Enter Id</label>
    <input type="text" name="id" class="form-control"  value="<%= id1%>"  readonly>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Full Name</label>
    <input type="text" name="fullname" class="form-control"  value="<%=fname %>" required>
  </div>

  <div class="form-group">
    <label class="label-control">Enter Email</label>
    <input type="email" name="email" class="form-control"  value="<%= email%>"  required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Mobile Number</label>
    <input type="text" name="mobile" class="form-control" value="<%= mobile%>" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Course</label>
    <input type="text" name="course" class="form-control" value="<%= course%>" required>
  </div>
  
  
  <div class="form-group">
    <label class="label-control">Enter Year</label>
    <input type="text" name="year" class="form-control" value="<%= year%>" required>
  </div>
  
  
  <div class="form-group">
    <label class="label-control">Enter Stream</label>
    <input type="text" name="stream" class="form-control" value="<%= stream%>" required>
  </div>
  
  
   <div class="form-group">
    <label class="label-control">Enter Semister</label>
    <select name="semister" class="form-control">
    	<option value="1">1</option>
    	<option value="2">2</option>
    	<option value="3">3</option>
    	<option value="4">4</option>
    	<option value="5">5</option>
    	<option value="6">6</option>
    	 <option value="7">7</option>
    	 <option value="8">8</option>
    	 	    
    </select>
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