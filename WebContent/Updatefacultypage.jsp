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
	ResultSet rs=st.executeQuery("select * from faculty where Id="+id);
	int count=0; 
	while(rs.next()) 
	{
		int id1=rs.getInt(1);
		String fname=rs.getString(2);
		String email=rs.getString(4);
		long mobile=rs.getLong(5);
		String qualification=rs.getString(6);
		
		
		
%>

<%@include file="Facultymainmenu.jsp" %>
<br><br><br>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Update Syllabus</div>
  <form action="Updatefacultypagedata.jsp"  method="post" >
 
 
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
    <label class="label-control">Faculty Qualification</label>
    <input type="text" name="qualification" class="form-control" value="<%= qualification%>" required>
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