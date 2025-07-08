
<%@ include file="connect.jsp" %>

<%@include file="Adminmainmenu.jsp" %>
<br><br><br>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well"><br><br><br><br>
  <div class="text-center h3 text-uppercase">Add Syllabus</div>
  
  
  <form action="AddSyllabuspagedata.jsp" method="post" >
  <div class="form-group">
    <label class="label-control">Select Week Day</label>
   
<select name="week" class="form-control" required>
<option value="Monday">Monday</option>
<option value="Tuesday">Tuesday</option>
<option value="Wednesday">Wednesday</option>
<option value="Thursday">Thursday</option>
<option value="Friday">Friday</option>
<option value="Saturday">Saturday</option>
</select>
    
  </div>

  <div class="form-group">
    <label class="label-control">Enter Date</label>
    <input type="date" name="date" class="form-control" required>
  </div>
  
    
  <div class="form-group">
      <label class="label-control">Select faculty id</label>
  
   <select name="fname" class="form-control">
							<%
								try
								{
									Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select Userid from faculty");
									while(rs.next()) 
									{
										out.println("<option>"+rs.getString(1)+"</option>");
										
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
    <input type="text" name="subject" class="form-control" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Syllabus</label>
    <input type="text" name="syllabus" class="form-control" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Duration</label>
    <select name="duration" class="form-control">
    	<option value="1-hour">1h</option>
    	<option value="2-hour">2h</option>
    	<option value="3-hour">3h</option>
    	<option value="4-hour">4h</option>
    	<option value="5-hour">5h</option>
    	 
    </select>
  </div>
  
   <div class="form-group">
    <label class="label-control">Enter Your Course</label>
    <select name="course" class="form-control" >
    	<option value="Btech">Btech</option>
    	<option value="Mtech">Mtech</option>
    	<option value="Mca">Mca</option> 
    </select>
  </div> 
   
   <div class="form-group">
    <label class="label-control">Enter Stream</label>
    <select name="stream" class="form-control" >
    	<option value="cse">cse</option>
    	<option value="EEE">EEE</option>
    	<option value="Ece">Ece</option> 
    </select>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Year</label>
    <select name="year" class="form-control" >
    	<option value="1">1</option>
    	<option value="2">2</option>
    	<option value="3">3</option> 
    	<option value="4">4</option> 
    	
    </select>
  </div>  
   <div class="form-group">
    <label class="label-control">Enter Semister</label>
    <select name="sem" class="form-control">
    	<option value="1">1</option>
    	<option value="2">2</option>
    	<option value="3">3</option>
    	<option value="4">4</option>
    	<option value="5">5</option>
    	<option value="6">6</option>
    	 <option value="7">7</option>
    	 <option value="8">8</option>
    	 	    
    </select>
  </div>
  
  
  
  <input type="submit" class="btn btn-primary btn-block" value="Add">
 
  </form>
  </div>
  </div>
  <div class="col-md-4"></div>
</div>
</div>
<%@ include file="footer.jsp" %>
