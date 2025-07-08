
<%@ include file="Adminmainmenu.jsp" %>
<br><br><br><br><br>

<div class="container-fluid"> 
<br><br><br><br>

<%@ include file="connect.jsp" %>
<div class="container">
<div class="h3 text-center">VIEW FACULTY DETAILS</div>
<div class="table-responsive">
<%

try
{
	Statement st=con.createStatement();              
	ResultSet rs=st.executeQuery("select * from faculty");                    
	int count=0;
	out.println("<table class='table table-bordered'>");
	out.println("<tr>"+"<th>"+"Id"+"</th>"+"<th>"+"Full Name"+"</th>"+"<th>"+"Email"+"</th>"+"<th>"+"Mobile"+"</th>"+"<th>"+"Qualification"+"</th>"+"<th>"+"User Id"+"</th>"+"<th>"+"Status"+"</th>"+"<th>"+"Delete"+"</th>"+"<th>"+"Accept"+"</th>"+"<th>"+"Reject"+"</th>"+"</tr>");

	while(rs.next()) 
	{
		count++;
		out.println("<tr>");
		out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getLong(5)+"</td>"+"<td>"+ rs.getString(6)+"</td>"+"<td>"+rs.getString(7)+"</td>"+"<td>"+rs.getString(8)+"</td>");
		out.println("<td>"+"<a class='btn btn-danger'<a onclick='return validate();' href='deletefacultydata.jsp?Id="+rs.getInt(1)+"'>Delete</a>"+"</td>");
		out.println("<td>"+"<a class='btn btn-success' href='facultystatus.jsp?Id="+rs.getInt(1)+"'>Accept</a>"+"</td>");
		out.println("<td>"+"<a class='btn btn-danger' href='facultyrejectstatus.jsp?Id="+rs.getInt(1)+"'>Reject</a>"+"</td>");

		out.println("</tr>");
	}
	out.println("</table>");
	
	
	if(count==0) {
		System.out.println("no records found");
	}
	
	st.close();
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
