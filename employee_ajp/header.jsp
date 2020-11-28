<!DOCTYPE html>
<html lang="en">
    <%
 String dbuserid = (String)session.getAttribute("userid");
            if(dbuserid.equals("admin"))
            {
                
            }
            else
            {
                response.sendRedirect("index.jsp");
            }
 %>
<head>

        <style type="text/css">
        b {
    color: #2f4f4f;
    font-size: 30px;
}
    </style>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Employee Management System</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<!-- Preloader -->
	<div id="preloader">
	  <div id="load"></div>
	</div>

    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html">
                    <h1>M2D</h1>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="admin_home.jsp">Home</a></li>
        <li><a href="add_employee_form.jsp">Add Employee</a></li>
	<li><a href="employee_detail.jsp">Employees Details</a></li>
		<!-- <li><a href="#service">Service</a></li> -->
		<li><a href="signout.jsp">Signout</a></li>
        
        <!--<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="#">Example menu</a></li>
            <li><a href="#">Example menu</a></li>
            <li><a href="#">Example menu</a></li>
          </ul>
        </li>-->
      </ul>
            </div>
            <% out.println("<li><b>" + dbuserid +"</b></li>"); %>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	