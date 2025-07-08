
<%@include file="mainmenu.jsp" %>
<br><br><br>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Student Registration</div>
  <form action="Studentpagedata.jsp" method="post" >
  <div class="form-group">
    <label class="label-control">Enter Full Name</label>
    <input type="text" name="fullname" class="form-control" required>
  </div>

  <div class="form-group">
    <label class="label-control">Enter Password</label>
    <input type="text" name="password" class="form-control" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter Email</label>
    <input type="email" name="email" class="form-control" required>
  </div>
  
 <div class="form-group">
    <label class="label-control">Enter Mobile Number</label>
    <input type="text" name="mobile" class="form-control" pattern="[6-9]{1}[0-9]{9}" 
       title="Phone number with 7-9 and remaing 9 digit with 0-9" required>
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
    <label class="label-control">Enter Year of Studying</label>
    <select name="year" class="form-control" >
    	<option value="1">1</option>
    	<option value="2">2</option>
    	<option value="3">3</option> 
    	<option value="4">4</option> 
    	
    </select>
  
     <div class="form-group">
    <label class="label-control">Enter Stream</label>
    <select name="stream" class="form-control" >
    	<option value="cse">cse</option>
    	<option value="EEE">EEE</option>
    	<option value="Ece">Ece</option> 
    </select>
  </div>
  
  <div class="form-group">
    <label class="label-control">Enter User Id</label>
    <input type="text" name="userid" class="form-control" required>
  </div>
  
   </div>  
   <div class="form-group">
    <label class="label-control">Enter Semister</label>
    <select name="semister" class="form-control">
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
  
  <input type="submit" class="btn btn-primary btn-block" value="Register">
 
  </form>
  </div>
  </div>
  <div class="col-md-4"></div>
</div>
</div>
<%@ include file="footer.jsp" %>
