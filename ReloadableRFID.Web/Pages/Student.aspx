﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="ReloadableRFID.Web.Pages.WebForm5" %>


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
                        <div class="col-lg-6">
                            <h1 class="page-header">Student Account</h1>
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
                                        <div class="col-lg-2">
                                          <div class="profile_img">
                        <div id="crop-avatar">
                          <!-- Current avatar -->
                            <img src="/images/picture.jpg" alt="Sample Photo"/>
                        </div>
                      </div>
                      <h3>Samuel Doe</h3>
                      <h3>BSIT</h3>
                      <h4>15-C05432</h4>
                      <a class="btn btn-success"><i class="fa fa-edit m-right-xs"></i>Edit Profile</a>
                      <br/>
                                          

                                          </div>

                                        

                                        <div class="col-lg-8">
                                             <div class="col-lg-6">
                                 <div class="form-group">

                                                    <label>Available Balance</label>
                                                    <asp:TextBox ID="txtAddress" class="form-control"
                                                        placeholder="" runat="server"></asp:TextBox>
                                     <div class="panel-body">
                                    
                                  
                               <a href="transaction.aspx">  <i class="fa fa-file-text-o"> <button type="button"  style="margin-right:20px;" class="btn btn-link">Transaction History</button></i> </a>
                                   
                                         </div>

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
        </div>
        <!-- /#page-wrapper -->
    </form>

    <!-- jQuery -->
    <script src="../js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../js/metisMenu.min.js"></script>
   
    <!-- Custom Theme JavaScript -->
    <script src="../js/startmin.js"></script>


</body>
</html>
