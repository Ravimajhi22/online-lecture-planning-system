
<%@ include file="Studentmainmenu.jsp" %>
<br><br><br><br><br>

<div class="container-fluid"> 
<br><br>

<%@ include file="connect.jsp" %>
<div class="container">
<div class="h3 text-center">VIEW DETAILS</div>
<div class="table-responsive">
<%
String userid=session.getAttribute("userid").toString();
try
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from student where Userid='"+userid+"'");
	int count=0;
	out.println("<table class='table table-bordered'>");
	out.println("<tr>"+"<th>"+"Id"+"</th>"+"<th>"+"Full Name"+"</th>"+"<th>"+"Email"+"</th>"+"<th>"+"Mobile"+"</th>"+"<th>"+"Course"+"</th>"+"<th>"+"Year"+"</th>"+"<th>"+"Stream"+"</th>"+"<th>"+"User Id"+"</th>"+"<th>"+"Semister"+"</th>"+"<th>"+"Update"+"</th>"+"</tr>");

	while(rs.next()) 
	{
		count++;
		out.println("<tr>");
		out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getLong(5)+"</td>"+"<td>"+ rs.getString(6)+"</td>"+"<td>"+ rs.getInt(7)+"</td>"+"<td>"+ rs.getString(8)+"</td>"+"<td>"+rs.getString(9)+"</td>"+"<td>"+rs.getString(10)+"</td>");
		out.println("<td>"+"<a class='btn btn-danger' href='Updatestudentpage.jsp?Id="+rs.getInt(1)+"'>Update</a>"+"</td>");
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


</div>
</div>
</div>

<%@ include file="footer.jsp" %>