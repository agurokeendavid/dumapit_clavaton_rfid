<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="assessment.aspx.cs" Inherits="ReloadableRFID.Web.Pages.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Cashier</title>

    <link rel="shortcut icon" href="../img/filamer.png" />

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="../css/metisMenu.min.css" rel="stylesheet" />
    
    <!-- Social Buttons CSS -->
        <link href="../css/bootstrap-social.css" rel="stylesheet">
     <!-- DataTables CSS -->
        <link href="../css/dataTables/dataTables.bootstrap.css" rel="stylesheet">

        <!-- DataTables Responsive CSS -->
        <link href="../css/dataTables/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/startmin.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>
<body>
    <form id="form1" runat="server">

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Home.aspx">Filamer Christian University</a>
                </div>

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <ul class="nav navbar-right navbar-top-links">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i> <%= Session["Username"] %> <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i>User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="AdminLogin.aspx"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="Home.aspx" class="active"><i class="fa fa-dashboard fa-fw"></i>Home</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fax fa-fw"></i>POS<span class="fa arrow"></span></a>
                                
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-users fa-fw"></i>Student AssSessment<span class="fa arrow"></span></a>
                                
                                <!-- /.nav-second-level -->
                            </li>
                          
                            <li>
                                <a href="#"><i class="fa fa-files-o fa-fw"></i>Reports<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="blank.html">Daily</a>
                                    </li>
                                    <li>
                                        <a href="blank.html">Weekly</a>
                                    </li>
                                    <li>
                                        <a href="blank.html">Monthly</a>
                                    </li>
                                    <li>
                                        <a href="login.html">Yearly</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <!--Start of Student Register Form-->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Student Assessment</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    
                                </div>

                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                        <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th>Student Number: </th>
                                                    <th>Name</th>
                                                    <th>Course & Year</th>
                                                    <th>Sex </th>
                                                    <th>Academic Year</th>
                                                    <th>Term: </th>
                                                    <th>Remaining Balance</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                        
                                    
                                           
                                       
                                                <tr class="gradeA">
                                                    <td>15-C0118</td>
                                                    <td>Delacruz, Juan</td>
                                                    <td>BSIT 1st year</td>
                                                    <td class="center">M</td>
                                                    <td>2021-2021</td>
                                                    <td>1st Sem</td>
                                                    <td>5,228.00</td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td>15-C0118</td>
                                                    <td>Delacruz, Juan</td>
                                                    <td>BSIT 1st year</td>
                                                    <td class="center">M</td>
                                                    <td>2021-2021</td>
                                                    <td>1st Sem</td>
                                                    <td>5,228.00</td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td>15-C0118</td>
                                                    <td>Delacruz, Juan</td>
                                                    <td>BSIT 1st year</td>
                                                    <td class="center">M</td>
                                                    <td>2021-2021</td>
                                                    <td>1st Sem</td>
                                                    <td>5,228.00</td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td>15-C0118</td>
                                                    <td>Delacruz, Juan</td>
                                                    <td>BSIT 1st year</td>
                                                    <td class="center">M</td>
                                                    <td>2021-2021</td>
                                                    <td>1st Sem</td>
                                                    <td>5,228.00</td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td>15-C0118</td>
                                                    <td>Delacruz, Juan</td>
                                                    <td>BSIT 1st year</td>
                                                    <td class="center">M</td>
                                                    <td>2021-2021</td>
                                                    <td>1st Sem</td>
                                                    <td>5,228.00</td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td>15-C0118</td>
                                                    <td>Delacruz, Juan</td>
                                                    <td>BSIT 1st year</td>
                                                    <td class="center">M</td>
                                                    <td>2021-2021</td>
                                                    <td>1st Sem</td>
                                                    <td>5,228.00</td>
                                                </tr>
                                             
                                               
                                            </tbody>
                                        </table>
                                    </div>
                                            
                                          

                                          </div>

                                        

                                        </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End of Register Form-->

        </div>
       
        <!-- /#page-wrapper -->
    </form>

    <!-- jQuery -->
    <script src="../js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../js/metisMenu.min.js"></script>
    
        <!-- DataTables JavaScript -->
        <script src="../js/dataTables/jquery.dataTables.min.js"></script>
        <script src="../js/dataTables/dataTables.bootstrap.min.js"></script>


    <!-- Custom Theme JavaScript -->
    <script src="../js/startmin.js"></script>
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
