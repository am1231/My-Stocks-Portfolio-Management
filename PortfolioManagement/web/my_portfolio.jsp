<%-- 
    Document   : my_portfolio
    Created on : 9 ??? 2015, 3:09:26 ??
    Author     : nsak
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%-- 
    Document   : calculate_min_sell
    Created on : 9 ??? 2015, 1:45:12 ??
    Author     : nsak
--%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Portfolio Management System</title>

    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp"></a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="index.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        
                        <li class="active">
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Functions<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a class="active" href="calculate_min_sell.jsp">Calculate Min</a>
                                </li>
                                <li>
                                    <a class="active" href="my_portfolio.jsp">My Portfolio</a>
                                </li>
                                <li>
                                    <a href="login.html">Login Page</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="login.html">Login</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">My Portfolio</h1>
                        
                        
                        <div><!-- to periexomeno -->
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Stocks already in portfolio
                                        </div>
                                        <!-- /.panel-heading -->
                                        <div class="panel-body">
                                            <div class="dataTable_wrapper">
                                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                    <thead>
                                                        <tr>
                                                            <th>Stock Name</th>
                                                            <th>Prev Close</th>
                                                            <th>Open</th>
                                                            <th>Volume</th>
                                                            <th>Beta</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr class="odd gradeX">
                                                            <td>Apple Inc</td>
                                                            <td>97.39</td>
                                                            <td>99.39</td>
                                                            <td class="center">63,282,897</td>
                                                            <td class="center">1.06495</td>
                                                        </tr>
                                                        <tr class="even gradeC">
                                                            <td>Microsoft Corp</td>
                                                            <td>51.64</td>
                                                            <td>52.00</td>
                                                            <td class="center">52,390,694</td>
                                                            <td class="center">1.02034</td>
                                                        </tr>
                                                        <tr class="odd gradeA">
                                                            <td>Exxon Mobil Corp</td>
                                                            <td>75.65</td>
                                                            <td>76.28</td>
                                                            <td class="center">33,822,227</td>
                                                            <td class="center">1.02188</td>
                                                        </tr>
                                                        <tr class="even gradeA">
                                                            <td>General Electric Co</td>
                                                            <td>28.24</td>
                                                            <td>28.30</td>
                                                            <td class="center">65,245,242</td>
                                                            <td class="center">1.20948</td>
                                                        </tr>

                                                        <tr class="gradeA">
                                                            <td>Johnson & Johnson</td>
                                                            <td>85.60</td>
                                                            <td>89.87</td>
                                                            <td class="center">610</td>
                                                            <td class="center">N/A</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>Amazon.com Inc</td>
                                                            <td>1,180.00</td>
                                                            <td>1,180.00</td>
                                                            <td class="center">200</td>
                                                            <td class="center">N/A</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>Wells Fargo & Co</td>
                                                            <td>1,176.60</td>
                                                            <td>1,176.57</td>
                                                            <td class="center">11,850</td>
                                                            <td class="center">N/A</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>Berkshire Hathaway B</td>
                                                            <td>23</td>
                                                            <td>32.4</td>
                                                            <td class="center">533,020</td>
                                                            <td class="center">N/A</td>
                                                        </tr>                                       

                                                        <tr class="gradeA">
                                                            <td>JP Morgan Chase & Co</td>
                                                            <td>27.53</td>
                                                            <td>27.57</td>
                                                            <td class="center">40,045</td>
                                                            <td class="center">N/A</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>Facebook Inc A	FB</td>
                                                            <td>95.44</td>
                                                            <td>95.67</td>
                                                            <td class="center">48,707,763</td>
                                                            <td class="center">0.929029</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>Alphabet Inc</td>
                                                            <td>700.56</td>
                                                            <td>705.38 </td>
                                                            <td class="center">2,228,914</td>
                                                            <td class="center">1.032</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>MLS</td>
                                                            <td>3.06</td>
                                                            <td>3.09</td>
                                                            <td class="center">1,000,000</td>
                                                            <td class="center">N/A</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>Nokia</td>
                                                            <td>25,4</td>
                                                            <td>26.0</td>
                                                            <td class="center">800,000</td>
                                                            <td class="center">N/A</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>ACUR</td>
                                                            <td>2.01</td>
                                                            <td>2.0</td>
                                                            <td class="center">70,000</td>
                                                            <td class="center">0.8<sup>1</sup>
                                                            </td>
                                                        </tr>
                                                        <tr class="gradeC">
                                                            <td>ABILW</td>
                                                            <td>1.2</td>
                                                            <td>1.23</td>
                                                            <td class="center">830,000</td>
                                                            <td class="center">N/A</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>KHTML</td>
                                                            <td>Konqureror 3.3</td>
                                                            <td>KDE 3.3</td>
                                                            <td class="center">3.3</td>
                                                            <td class="center">A</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>KHTML</td>
                                                            <td>Konqureror 3.5</td>
                                                            <td>KDE 3.5</td>
                                                            <td class="center">3.5</td>
                                                            <td class="center">A</td>
                                                        </tr>
                                                        <tr class="gradeX">
                                                            <td>Tasman</td>
                                                            <td>Internet Explorer 4.5</td>
                                                            <td>Mac OS 8-9</td>
                                                            <td class="center">-</td>
                                                            <td class="center">X</td>
                                                        </tr>
                                                        <tr class="gradeC">
                                                            <td>Tasman</td>
                                                            <td>Internet Explorer 5.1</td>
                                                            <td>Mac OS 7.6-9</td>
                                                            <td class="center">1</td>
                                                            <td class="center">C</td>
                                                        </tr>
                                                        <tr class="gradeC">
                                                            <td>Tasman</td>
                                                            <td>Internet Explorer 5.2</td>
                                                            <td>Mac OS 8-X</td>
                                                            <td class="center">1</td>
                                                            <td class="center">C</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>Misc</td>
                                                            <td>NetFront 3.1</td>
                                                            <td>Embedded devices</td>
                                                            <td class="center">-</td>
                                                            <td class="center">C</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>Misc</td>
                                                            <td>NetFront 3.4</td>
                                                            <td>Embedded devices</td>
                                                            <td class="center">-</td>
                                                            <td class="center">A</td>
                                                        </tr>
                                                        <tr class="gradeX">
                                                            <td>Misc</td>
                                                            <td>Dillo 0.8</td>
                                                            <td>Embedded devices</td>
                                                            <td class="center">-</td>
                                                            <td class="center">X</td>
                                                        </tr>
                                                        <tr class="gradeX">
                                                            <td>Misc</td>
                                                            <td>Links</td>
                                                            <td>Text only</td>
                                                            <td class="center">-</td>
                                                            <td class="center">X</td>
                                                        </tr>
                                                     
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- /.table-responsive -->
                                            
                                        </div>
                                        <!-- /.panel-body -->
                                    </div>
                                    <!-- /.panel -->
                                </div>
                                <!-- /.col-lg-12 -->
                            </div>
                           <!--End of content -->
                        </div>
                        
                        
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
        <%  /*  Connection con;
        Class.forName("com.mysql.jdbc.Driver");
        con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/nsak", "nsak", "1q2w#E$R");
        PreparedStatement ps=(PreparedStatement)con.prepareStatement("select * from stocks");
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
                String username=rs.getString("first_name");
                String password=rs.getString("last_name");
                out.println("Username "+username+" Pass "+password+"<hr>");
        } */%>
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
    
    <!-- DataTables JavaScript -->
    <script src="bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>


    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>
    
    
</body>

</html>









<!--
<//%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Portfolio</title>
    </head>
    <body>
         <table border="1" width="100%" cellpadding="3">
            <tr>
                <td><a href="calculate_min_sell.jsp">find minimum sell price per stock</a></td>
                <td><a href='my_portfolio.jsp'>my portfolio</a></td>
                <td><a href='reset_portfolio.jsp'>Reset Portfolio</a></td>
            </tr>
            
        </table>
        <form action="my_portfolio_results.jsp" method="POST">
            <center>
                <table border="2" width="100%" cellspacing="1" cellpadding="1">
                    <thead>
                        <tr>
                            <th>Action</th>
                            <th>Stock Name</th>
                            <th>Price (if n)</th>
                            <th>Number of pieces</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Buy</td>
                            <td><input type="text" name="Input" value="" style="width:100% " /></td>
                            <td><input type="text" name="Input" value="" style="width:100% " /></td>
                            <td><input type="text" name="Input" value="" style="width:100% " /></td>
                            <td><input type="submit" value="Submit" name="Submit" style="width:100% " /></td>
                        </tr>
                        <tr>
                            <td>Sell</td>
                            <td><input type="text" name="Input" value="" style="width:100% "/></td>
                            <td><input type="text" name="Input" value="" style="width:100% " /></td>
                            <td><input type="text" name="Input" value="" style="width:100% " /></td>
                            <td><input type="submit" value="Submit" name="Submit" style="width:100% "/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a style="text-align:center" href='my_portfolio_results.jsp'>Show My Portfolio</a></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="submit" value="Submit" name="Submit" /></td>
                        </tr>
                    </tbody>
                </table>

            </center>
        </form>
    </body>
</html>
