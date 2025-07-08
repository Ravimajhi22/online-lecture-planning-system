

<%@include file="Studentmainmenu.jsp" %>
    <%@ include file="connect.jsp" %>

<br><br><br>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Add Feedback</div>
  <form action="addfeedbackdata.jsp" method="post" >
 

  <div class="form-group">
      <label class="label-control">Select Faculty Id</label>
  
   <select name="fid" class="form-control">
							<%
								try
								{
									Statement st=con.createStatement();
									 ResultSet rs=st.executeQuery("select Userid from faculty");
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
    <input type="text" name="title" class="form-control" required>
  </div>
   <div class="form-group">
    <label class="label-control">Enter Feedback</label>
    <input type="text" name="feedback" class="form-control" required>
  </div>
  
   <div class="form-group">
    <label class="label-control">Enter Rating</label>
    <select name="rating" class="form-control">
    	<option value="1">1</option>
    	<option value="2">2</option>
    	<option value="3">3</option>
    	<option value="4">4</option>
    	<option value="5">5</option>
    	
    	 	    
    </select>
  </div>
  
  <input type="submit" class="btn btn-primary btn-block" value="Add Feedback">
  
  </form>
  </div>
  </div>
  <div class="col-md-4"></div>
</div>
</div>
<%@ include file="footer.jsp" %>
