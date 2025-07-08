



<%@include file="mainmenu.jsp" %>
<br><br><br>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Admin Login </div>
  <form action="Adminpagedata.jsp" method="post" >
  <div class="form-group">
    <label class="label-control">User ID</label>
    <input type="text" name="userid" class="form-control" required>
  </div>

  <div class="form-group">
    <label class="label-control">Password</label>
    <input type="password" name="password" class="form-control" required>
  </div>
  
  <input type="submit" class="btn btn-primary btn-block" value="Login">
  </form>
  </div>
  </div>
  
  <div class="col-md-4"></div>
</div>
</div>
<%@ include file="footer.jsp" %>
