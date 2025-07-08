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
int id=Integer.parseInt(request.getParameter("id"));

try
{
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from addsyllabus where id="+id);
	int count=0; 
	while(rs.next()) 
	{
		//int id1=rs.getInt(4);
		String week=rs.getString(1);
		String date=rs.getString(2);
		String id1=rs.getString(3);
		String fname=rs.getString(4);
		String subject=rs.getString(5);
		String syllabus=rs.getString(6);
		String duration=rs.getString(7);
		String course=rs.getString(8);
		String stream=rs.getString(9);
		String year=rs.getString(10);
		String sem=rs.getString(11);
		String status=rs.getString(12);
		
%>
	


<%@include file="Adminmainmenu.jsp" %>
<br><br><br>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Update Syllabus</div>
  <form action="updatesyllabusdata.jsp" method="post" >
  <div class="form-group">
    <label class="label-control">Select Week Day</label>
   
<select name="week" class="form-control" required>
<option value="Monday">Monday</option>
<option value="Tuesday">Tuesday</option>
<option value="Wednesday">Wednesday</option>
<option value="Thursday">Thursday</option>
<option value="Friday">Friday</option>
<option value="Saturday">Saturday</option>
</select>
    
  </div>
  

  <div class="form-group">
    <label class="label-control">Enter Date</label>
    <input type="date" name="date" class="form-control"  value="<%= date%>"  required>
  </div>
  
    
  
  <div class="form-group">
    <label class="label-control">Enter Id</label>
    <input type="text" name="id1" class="form-control"  value="<%= id1%>"  readonly>
  </div>
  
  <div class="form-group">
      <label class="label-control">Select faculty id</label>
  
   <select name="fname" class="form-control">
							<%
								try
								{
									 st=con.createStatement();
									 rs=st.executeQuery("select Userid from faculty");
									while(rs.next()) 
									{
										out.println("<option >"+rs.getString(1)+"</option>");
										
									}
										
									
								}
								catch(Exception e)
								{
									e.printStackTrace();
								}	
								
								%>
								</select>

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
    <label class="label-control">Enter course</label>
    <select name="course" class="form-control">
    	<option value="Btech" <%= (course.equals("Btech")?"selected='selected'":"") %>>Btech</option>
    	<option value="Mtech" <%= (course.equals("Mtech")?"selected='selected'":"") %>>Mtech</option>
    	<option value="Mca" <%= (course.equals("Mca")?"selected='selected'":"") %>>Mca</option>
    	    	
    
    </select>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Stream</label>
    <select name="stream" class="form-control">
    	<option value="cse" <%= (course.equals("cse")?"selected='selected'":"") %>>cse</option>
    	<option value="EEE" <%= (course.equals("EEE")?"selected='selected'":"") %>>EEE</option>
    	<option value="Ece" <%= (course.equals("Ece")?"selected='selected'":"") %>>Ece</option>
    	    	
    
    </select>  
    </div>
    
 <div class="form-group">
    <label class="label-control">Enter Year</label>
    <select name="year" class="form-control" >
    	    	<option value="1" <%= (course.equals("1")?"selected='selected'":"") %>>1</option>
    	    	 <option value="2" <%= (course.equals("2")?"selected='selected'":"") %>>2</option>
    	    	  <option value="3" <%= (course.equals("3")?"selected='selected'":"") %>>3</option>
    	    	  <option value="4" <%= (course.equals("4")?"selected='selected'":"") %>>4</option>
    	
    </select>
  </div>  
  
<div class="form-group">
    <label class="label-control">Enter Semister</label>
    <select name="sem" class="form-control" >
    	    	<option value="1" <%= (course.equals("1")?"selected='selected'":"") %>>1</option>
    	    	 <option value="2" <%= (course.equals("2")?"selected='selected'":"") %>>2</option>
    	    	  <option value="3" <%= (course.equals("3")?"selected='selected'":"") %>>3</option>
    	    	  <option value="4" <%= (course.equals("4")?"selected='selected'":"") %>>4</option>
    	    	   <option value="5" <%= (course.equals("5")?"selected='selected'":"") %>>5</option>
    	    	   <option value="6" <%= (course.equals("6")?"selected='selected'":"") %>>6</option>
    	    	   <option value="7" <%= (course.equals("7")?"selected='selected'":"") %>>7</option>
    	    	   <option value="8" <%= (course.equals("8")?"selected='selected'":"") %>>8</option>
    	
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