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
String course=request.getParameter("course");
int year=Integer.parseInt(request.getParameter("year"));
String stream=request.getParameter("stream");
String userid=request.getParameter("userid");
String semister=request.getParameter("semister");

try
{
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from student where Userid='"+userid+"'");
	if(rs.next()){
		//User id already exists
		%>
		<script>alert("User id already exists");</script>
		<% 
	}
	else{
	
	PreparedStatement ps=con.prepareStatement("insert into student(Fullname,Password,Email,Mobile,Course,Year,Stream,Userid,semister,status) values(?,?,?,?,?,?,?,?,?,0)");
	
	
	ps.setString(1, fullname);
	ps.setString(2, password);
	ps.setString(3, email);
	ps.setLong(4, mobile);
	ps.setString(5, course);
	ps.setInt(6, year);
	ps.setString(7, stream);
	ps.setString(8, userid);
	ps.setString(9, semister);

	int n= ps.executeUpdate();
	if(n==1)
	{
	%>
			<script>alert("Registration sucessfully done");</script>
	
	<jsp:include page="Studentpage.jsp"/>
	<%
	}
	else
		%>
		<script>alert("Registration not  sucessfully done");</script>

	<jsp:include page="Studentpage.jsp"/>
	<% 	
}
}
catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>