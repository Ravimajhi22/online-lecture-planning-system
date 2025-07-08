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

String fullname=request.getParameter("fullname");
String password=request.getParameter("password");
String email=request.getParameter("email");
long mobile=Long.parseLong(request.getParameter("mobile"));
String qualification=request.getParameter("qualification");
String userid=request.getParameter("userid");

try
{
	
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from faculty where Userid='"+userid+"'");
	if(rs.next()){
		//User id already exists
		%>
		<script>alert("User id already exists");</script>
		<jsp:include page="facultyregistrationpage.jsp"/>
		
		<% 
	}
	else{
	
	
	
	PreparedStatement ps=con.prepareStatement("insert into faculty(Fullname,Password,Email,Mobile,Qualification,Userid,status) values(?,?,?,?,?,?,0)");
	
	
	ps.setString(1, fullname);
	ps.setString(2, password);
	ps.setString(3, email);
	ps.setLong(4, mobile);
	ps.setString(5, qualification);
	ps.setString(6, userid);
	
	int n= ps.executeUpdate();
	if(n==1)
	{
	%>
	<script>alert("Registered sucessfully");</script>
	<jsp:include page="Facultypage.jsp"/>
	<%
	}
	else
		%>
			<script>alert("Registration not  sucessfully done");</script>

			<jsp:include page="facultyregistrationpage.jsp"/>
		<% 	
			
	con.close();
}
}
catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>