


<%@ include file="links.jsp" %> 

<div class="mb4" >
 <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.jsp">
                Lecture Planning
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    

                    
                    <li>
				<a href="ViewStudentdata2.jsp">View Details</a>
					   </li>
                    <li >
			<a href="studentviewsyllabusdata.jsp">View Syllabus</a>
				  
                    </li>
                    <li >
			<a href="addfeedbackpage.jsp">Add Feedback</a>
                    </li>
                     
                    <li >
				
                    
                     <li class="dropdown">
					       <a class="dropdown-toggle" data-toggle="dropdown" href="#">MyAccount
					       	<span class="caret"></span></a>
					       	<ul class="dropdown-menu">
			 <li>	<a href="studentchangepasswordpage.jsp">Change Password</a></li>
				 				<li ><a href="homepage.jsp">Logout</a></li>
     
      						 </ul>
    				</li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

</div>
<br><br><br><br>

<%@ include file="footer.jsp" %>


