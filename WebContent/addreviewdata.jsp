<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="connect.jsp" %>
<%
String studentid=session.getAttribute("userid").toString();

String reivew=request.getParameter("review");
String sylid=request.getParameter("sylid");
String facultyid=request.getParameter("facultyid");
String status=request.getParameter("status");


try
{
	
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from review where Studentid='"+studentid+"' and facultyid='"+facultyid+"' and Sid='"+sylid+"'");
	if(rs.next()){
		%>
		<script>alert("already Feedback given");</script>
	<jsp:include page="studentviewsyllabusdata.jsp"/>
		
		<% 
	}
	else{
	

	PreparedStatement ps=con.prepareStatement("insert into review(Studentid,Sid, Review,status,facultyid) values(?,?,?,?,?)");
	
	ps.setString(1, studentid);
	ps.setString(2, sylid);
	ps.setString(3, reivew);
	ps.setString(4, status);
	ps.setString(5,facultyid);

	
			
	int n= ps.executeUpdate();
	if(n==1)
	{
	%>
	<script>alert("insert sucessfully");</script>
	<jsp:include page="studentviewsyllabusdata.jsp"/>
	<%
	}
	else
		out.println("records not inserted");
		
	con.close();
}
}
catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>