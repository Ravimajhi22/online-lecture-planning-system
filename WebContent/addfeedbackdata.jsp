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
String title=request.getParameter("title");
String fid=request.getParameter("fid");
String feedback=request.getParameter("feedback");
String rating=request.getParameter("rating");

String userid=session.getAttribute("userid").toString();

try
{
	
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from addfeedback where studentid='"+userid+"' and Facultyid='"+fid+"' and Title='"+title+"'");
	if(rs.next()){
		//User id already exists
		%>
		<script>alert("already Feedback given");</script>
			<jsp:include page="addfeedbackpage.jsp"/>
		
		<% 
	}
	else{
	

	
	
	
	PreparedStatement ps=con.prepareStatement("insert into addfeedback(Title, Facultyid,Feedback,rating,studentid) values(?,?,?,?,?)");
	
	ps.setString(1, title);
	ps.setString(2, fid);
	ps.setString(3, feedback);
	ps.setString(4, rating);
	ps.setString(5,userid);
		
	int n= ps.executeUpdate();
	if(n==1)
	{
		out.println("records inserted");
	%>
	<script>alert("Add feedback sucessfully");</script>
	<jsp:include page="addfeedbackpage.jsp"/>
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