<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transaction.aspx.cs" Inherits="ReloadableRFID.Web.Pages.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Student</title>
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
                                <a href="Home-Student.aspx" class="active"><i class="fa fa-dashboard fa-fw"></i> Home</a>
                            </li>
                           
                            <li>
                                <a href="Student.aspx"><i class="fa fa-money fa-fw"></i>Balance of E-money<span class="fa arrow"></span></a>
                                
                                <!-- /.nav-second-level -->
                            </li>
                             <li>
                                <a href="transaction.aspx"><i class="fa fa-exchange fa-fw"></i>Transaction History<span class="fa arrow"></span></a>
                                
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
                            <h1 class="page-header">Transaction History</h1>
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
                                                    <th>Transaction: </th>
                                                    <th>Amount</th>
                                                    <th>Date</th>
                                                    <th>Time </th>
                                                    <th>Reference Number</th>
                                                  </tr>
                                            </thead>
                                            <tbody>
                                        
                                    
                                           
                                       
                                                <tr class="gradeA">
                                                    <td>Buy E-money</td>
                                                    <td>3,000</td>
                                                    <td>2021-01-23</td>
                                                    <td>11:12</td>
                                                    <td>000595018</td>
                                                    
                                                </tr>
                                                
                                                <tr class="gradeA">
                                                    <td>Pay in Pos</td>
                                                    <td>800</td>
                                                    <td>2021-01-25</td>
                                                    <td>11:12</td>
                                                    <td>000595344</td>
                                                    
                                                </tr>
                                              
                                                <tr class="gradeA">
                                                    <td>Buy E-money</td>
                                                    <td>300</td>
                                                    <td>2021-01-26</td>
                                                    <td>11:12</td>
                                                    <td>000595018</td>
                                                    
                                                </tr>
                                              
                                                <tr class="gradeA">
                                                    <td>Pay in Pos</td>
                                                    <td>2,500</td>
                                                    <td>2021-01-26</td>
                                                    <td>11:12</td>
                                                    <td>000595018</td>
                                                    
                                                </tr>
                                            
                                                <tr class="gradeA">
                                                    <td>Buy E-money</td>
                                                    <td>3,000</td>
                                                    <td>2021-02-2</td>
                                                    <td>11:12</td>
                                                    <td>000595018</td>
                                                    
                                                </tr>
                                               
                                                <tr class="gradeA">
                                                    <td>Pay to Pos</td>
                                                    <td>300</td>
                                                    <td>2021-02-5</td>
                                                    <td>11:12</td>
                                                    <td>000595018</td>
                                                    
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
