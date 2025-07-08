
<%@ include file="Studentmainmenu.jsp" %>
<br><br><br><br><br>

<div class="container-fluid"> 
<br><br>

<%@ include file="connect.jsp" %>
<div class="container">
<div class="h3 text-center">VIEW SYLLABUS</div>
<div class="table-responsive">
<%

String userid=session.getAttribute("userid").toString();



try
{
	
	
	
	Statement st=con.createStatement();
	String course=null,stream=null,year=null,semister=null;
	
	ResultSet rs1=st.executeQuery("select * from student where Userid='"+userid+"'");
	if(rs1.next()){
		course=rs1.getString(6);
		stream=rs1.getString(8);
		year=rs1.getString(7);
		semister=rs1.getString(10);

	}

	
	ResultSet rs=st.executeQuery("select * from addsyllabus where course='"+course+"' and stream='"+stream+"' and year='"+year+"' and semister='"+semister+"'");
	int count=0;
	out.println("<table class='table table-bordered'>");
	out.println("<tr>"+"<th>"+"Week Day"+"</th>"+"<th>"+"Date Of Class"+"</th>"+"<th>"+"Faculty id"+"</th>"+"<th>"+"Subject"+"</th>"+"<th>"+"Syllabus"+"</th>"+"<th>"+"Duration"+"</th>"+"<th>"+"Course"+"</th>"+"<th>"+"Stream"+"</th>"+"<th>"+"Year"+"</th>"+"<th>"+"Semister"+"</th>"+"<th>"+"Review"+"</th>"+"</tr>");

	while(rs.next()) 
	{
		count++;
		out.println("<tr>");
		out.println("<td>"+rs.getString(1)+"</td>"+"<td>"+ rs.getString(2)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5)+"</td>"+"<td>"+rs.getString(6)+"</td>"+"<td>"+rs.getString(7)+"</td>"+"<td>"+rs.getString(8)+"</td>"+"<td>"+rs.getString(9)+"</td>"+"<td>"+rs.getString(10)+"</td>"+"<td>"+rs.getString(11)+"</td>");
		out.println("<td>"+"<a class='btn btn-primary' href='addreivewpage.jsp?id="+rs.getString(3)+"'>Review</a>"+"</td>");

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
%></div>
</div>
</div>
<%@ include file="footer.jsp" %>
