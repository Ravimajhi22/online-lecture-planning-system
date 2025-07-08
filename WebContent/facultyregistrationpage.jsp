


<%@include file="mainmenu.jsp" %>
<br><br><br>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Faculty Registration</div>
  
  <form action="Facultypagedata.jsp" method="post" >
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
    <label class="label-control">Enter Qualification</label>
    <input type="text" name="qualification" class="form-control" required>
  </div>
    
  <div class="form-group">
    <label class="label-control">Enter User Id</label>
    <input type="text" name="userid" class="form-control" required>
  </div>
  
  <input type="submit" class="btn btn-primary btn-block" value="Register">
 
  </form>
  </div>
  </div>
  <div class="col-md-4"></div>
</div>
</div>
<%@ include file="footer.jsp" %>
