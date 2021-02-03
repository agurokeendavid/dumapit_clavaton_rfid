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

                              <section class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header">
                                    </div>
                                    <div class="card-body">

                                        <asp:GridView runat="server" ID="gvRecords" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" OnRowCommand="gvRecords_RowCommand">
                                            <Columns>
                                                <asp:BoundField DataField="Id" HeaderText="ID" Visible="False" />
                                                <asp:BoundField DataField="CashierNo" HeaderText="Cashier Number" />
                                                <asp:BoundField DataField="FullName" HeaderText="Name" />
                                                <asp:BoundField DataField="Dob" HeaderText="BirthDate" />
                                                <asp:BoundField DataField="ContactNo" HeaderText="Contact No" />
                                                <asp:BoundField DataField="Address" HeaderText="Address" />
                                              
                                                
                                            </Columns>
                                        </asp:GridView>
                                        <%--<table id="example2" class="table table-bordered table-hover">
=======


                                    <div class="col-md-12">
                                        <div class="form-group">
                                             <div id="example1_filter" class="dataTables_filter">
                                                 <label for="txtsearch">Search:
                                                     <asp:TextBox ID="txtsearch" type="search" lass="form-control form-control-sm" placeholder="" 
                                                      aria-controls="example1" runat="server"></asp:TextBox>
                                                 </label>
                                            </div>
                                        </div>
                                    </div>

                                        <table id="example2" class="table table-bordered table-hover">
>>>>>>> Stashed changes
                                            <thead>
                                                <tr>
                                                    <th>Senior Citizen ID No.</th>
                                                    <th>Name</th>
                                                    <th>Birthdate</th>
                                                    <th>Age</th>
                                                    <th>Gender</th>
                                                    <th>Address</th>
                                                    <th>Marital Status</th>
                                                    <th>Occupation</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
<<<<<<< Updated upstream
                                        </table>--%>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
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
