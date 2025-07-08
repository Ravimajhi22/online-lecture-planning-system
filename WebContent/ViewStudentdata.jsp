<%@ include file="Adminmainmenu.jsp" %>

<br><br><br><br><br>

<div class="container-fluid"> 
<br><br>

<%@ include file="connect.jsp" %>
<div class="container">
<div class="h3 text-center">VIEW STUDENT DETAILS</div>
<div class="table-responsive">

<table class='table table-bordered'>
<tr>
<td>
<form action="ViewStudentdata.jsp" method="post">
 <label class="label-control">Enter Your Course</label>
    <select name="course" class="form-control" >
    	<option value="Btech">Btech</option>
    	<option value="Mtech">Mtech</option>
    	<option value="Mca">Mca</option> 
    </select>
    </td>
    
    <td>
        <label class="label-control">Enter year</label>
    
     <select name="year" class="form-control" >
    	<option value="1">1</option>
    	<option value="2">2</option>
    	<option value="3">3</option> 
    	<option value="4">4</option> 
    	
    </select>
  </td>
  
  <td>
      <label class="label-control">Enter Stream</label>
  
  <select name="stream" class="form-control" >
    	<option value="cse">cse</option>
    	<option value="EEE">EEE</option>
    	<option value="Ece">Ece</option> 
    </select>
    </td>
  
  <td>
      <label class="label-control">Enter Semister</label>
  
   <select name="semister" class="form-control">
    	<option value="1">1</option>
    	<option value="2">2</option>
    	<option value="3">3</option>
    	<option value="4">4</option>
    	<option value="5">5</option>
    	<option value="6">6</option>
    	 <option value=7">7</option>
    	 <option value="8">8</option>
    	 	    
    </select>
  </td>
  <td>
  
  <input type="submit" class="btn btn-primary btn-block center" value="Search">
  
  <br>
  <a href="ViewStudentdata.jsp" class="btn btn-primary btn-block center">View All</a>
  </td>
  
  </tr>
  </form>
  </table>
  
<%

try
{

	Statement st=con.createStatement();

	ResultSet rs=null;
	if(request.getMethod().equalsIgnoreCase("POST")){
	String course=request.getParameter("course");
	int year=Integer.parseInt(request.getParameter("year"));
	String stream=request.getParameter("stream");
	int semister=Integer.parseInt(request.getParameter("semister"));


		
		
		
		 rs=st.executeQuery("select * from student where Course='"+course+"' and Year='"+year+"' and Stream='"+stream+"' and semister='"+semister+"'");   

	}
	else{
		
	 rs=st.executeQuery("select * from student");   
	}
	
	int count=0;
	out.println("<table class='table table-bordered'>");
	out.println("<tr>"+"<th>"+"Id"+"</th>"+"<th>"+"Full Name"+"</th>"+"<th>"+"Email"+"</th>"+"<th>"+"Mobile"+"</th>"+"<th>"+"Course"+"</th>"+"<th>"+"Year"+"</th>"+"<th>"+"Stream"+"</th>"+"<th>"+"User Id"+"</th>"+"<th>"+"Semister"+"</th>"+"<th>"+"Status"+"</th>"+"<th>"+"Delete"+"</th>"+"<th>"+"Accept"+"</th>"+"<th>"+"Reject"+"</th>"+"</tr>");

	while(rs.next()) 
	{
		count++;
		out.println("<tr>");
		out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getLong(5)+"</td>"+"<td>"+ rs.getString(6)+"</td>"+"<td>"+ rs.getInt(7)+"</td>"+"<td>"+ rs.getString(8)+"</td>"+"<td>"+rs.getString(9)+"</td>"+"<td>"+rs.getString(10)+"</td>"+"<td>"+rs.getString(11)+"</td>");
		out.println("<td>"+"<a class='btn btn-danger'<a onclick='return validate();' href='deletestudentdata.jsp?Id="+rs.getInt(1)+"'>Delete</a>"+"</td>");
		out.println("<td>"+"<a class='btn btn-success' href='studentstatus.jsp?Id="+rs.getInt(1)+"'>Accept</a>"+"</td>");
		out.println("<td>"+"<a class='btn btn-danger' href='studentrejectstatus.jsp?Id="+rs.getInt(1)+"'>Reject</a>"+"</td>");

		out.println("</tr>");
	}
	out.println("</table>");
	
	
	if(count==0) {
		out.println("no records found");
	}
	
	
	st.close();
	con.close();
	
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
<script>
function validate(){
	if(confirm("do you want to delete")){
		return true;
	}
	else{
		return false;
	}
}
</script>
</div>
</div>
</div>

<%@ include file="footer.jsp" %>