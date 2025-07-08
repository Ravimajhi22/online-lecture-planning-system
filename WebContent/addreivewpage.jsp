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
String id=request.getParameter("id");

try
{
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from addsyllabus where id='"+id+"'");
	int count=0; 
	while(rs.next()) 
	{
		//int id1=rs.getInt(4);
		String id1=rs.getString(4);
		String sylid = rs.getString(3);
%>


<%@include file="Studentmainmenu.jsp" %>
<br><br><br><br><br>
<div class="container-fluid">
<div class="row mt-5">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Add Review</div>
  <form action="addreviewdata.jsp" method="post" >
  
  <div class="form-group">
    <label class="label-control">Enter Review</label>
    <input type="text" name="review" class="form-control" required>
  </div>
  
   <div class="form-group">
    <label class="label-control">Status: Does syllabus completed ontime?</label>
    <select name="status" class="form-control" required>
    <option>Yes</option>
    <option>No</option>
    </select>
  </div>

  <div class="form-group">
    <label class="label-control">Enter Faculty Id</label>
    <input type="text" name="facultyid" class="form-control" value="<%= id1 %>" readonly>
  </div>
  
  
  <div class="form-group">
    <label class="label-control">Enter Syllabus Id</label>
    <input type="text" name="sylid" class="form-control" value="<%= sylid %>" readonly>
  </div>
  
  
  <input type="submit" class="btn btn-primary btn-block" value="Add Review">
  
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