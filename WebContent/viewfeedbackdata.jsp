
<%@ include file="Adminmainmenu.jsp" %>
<br><br><br><br><br>

<div class="container-fluid"> 
<br><br><br><br><br><br>

<%@ include file="connect.jsp" %>
<div class="container">
<div class="h3 text-center">VIEW FEEDBACK DETAILS</div>
<div class="table-responsive">
<%

try
{
	String userid=session.getAttribute("userid").toString();

	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from addfeedback");
	int count=0;
	out.println("<table class='table table-bordered'>");
	out.println("<tr>"+"<th>"+"Id"+"</th>"+"<th>"+"Facultyid"+"</th>"+"<th>"+"Subject"+"</th>"+"<th>"+"Feedback"+"</th>"+"<th>"+"Rating"+"</th>"+"</tr>");

	while(rs.next()) 
	{
		count++;
		out.println("<tr>");
		out.println("<td>"+rs.getString(1)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+ rs.getString(2)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5)+"</td>");
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

