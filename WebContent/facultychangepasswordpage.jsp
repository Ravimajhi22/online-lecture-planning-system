

<%@include file="Facultymainmenu.jsp" %>
<br><br><br>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well"><br><br><br>
  <div class="text-center h3 text-uppercase">Change Password</div>
  <form action="facultychangepassworddata.jsp" method="post" >
  <div class="form-group">
    <label class="label-control">Enter Old Password</label>
    <input type="text" name="old" class="form-control" required>
  </div>

  <div class="form-group">
    <label class="label-control">Enter New Password</label>
    <input type="password" name="new" class="form-control" required>
  </div>
  
  <input type="submit" class="btn btn-primary btn-block" value="Change">
  
  </form>
  </div>
  </div>
  <div class="col-md-4"></div>
</div>
</div>
<%@ include file="footer.jsp" %>
