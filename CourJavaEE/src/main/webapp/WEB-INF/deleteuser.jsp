<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>java</title>
    <!-- Bootstrap -->
    <link href="style/cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <link href="style/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="style/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    
    <link href="style/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="style/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="style/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="style/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="style/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom Theme Style -->
    <link href="style/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-institution"></i> <span>JAVA EE</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="src/user.png" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>Lorem ipsum dolor</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->
            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
              <ul class="nav side-menu">
                <li><a><i class="fa fa-list"></i>Menu Navigation<span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="user">Tableau de bord</a></li>
                    <li><a href="#">User</a></li>
                    <li><a href="#">Nouveau</a></li>
                    <li><a href="#">Autres</a></li>
                    <li><a href="#">Statistiques</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <div class="nav toggle">
                  <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                </div>
                <nav class="nav navbar-nav">
                <ul class=" navbar-right">
                  <li class="nav-item dropdown open" style="padding-left: 15px;">
                    <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                      <img src="src/user.png" alt="">User
                    </a>
                    <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                      
                      <a class="dropdown-item"  href="parts/deconnexion.php"><i class="fa fa-sign-out pull-right"></i> Deconnexion</a>
                    </div>
                  </li>
  
                  <li role="presentation" class="nav-item dropdown open">
                    <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                      <i class="fa fa-envelope-o"></i>
                      <span class="badge bg-green">4</span>
                    </a>
                    
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3><small></small></h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-secondary" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>
       
              <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Utilisateur<small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Settings 1</a>
                            <a class="dropdown-item" href="#">Settings 2</a>
                          </div>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  
                  <div class="x_content">
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                    <!-- <p class="text-muted font-13 m-b-30">
                      Responsive is an extension for DataTables that resolves that problem by optimising the table's layout for different screen sizes through the dynamic insertion and removal of columns from the table.
                    </p> -->
                    <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr>
                          <th>Nom</th>
                          <th>Age</th>
                          <th>Taille</th>
                          <th>Poids</th>
                          <th>Profile</th>
                        </tr>
                      </thead>
                      <tbody>
                      	  <c:forEach var="user" items="${ userList }" >
                          <tr>
                            <td>${ user.getNom() }</td>
                            <td><c:out value="${ user.getAge() }" /></td>
                            <td><c:out value="${ user.getPoids() }" /></td>
                            <td><c:out value="${ user.getTaille() }" /></td>
                            <td>
                                  <a href="deleteuser?id=${user.getId()}"
                                      style="text-align:center; color: rgb(0, 123, 255); margin-right: 10px; float:left; font-weight: bold;
                                        border: 1px solid rgb(0, 123, 255); padding: 4px;
                                       border-radius:4px; width:auto;
                                      border-radius:4px;">Supprimer
                                  </a>
                                  <a href="updateuser?id=${user.getId()}"
                                      style="text-align:center; color: rgb(0, 123, 255); margin-right: 10px; float:left; font-weight: bold;
                                        border: 1px solid rgb(0, 123, 255); padding: 4px;
                                       border-radius:4px; width:auto;
                                      border-radius:4px;">Modifier
                                  </a>
                            </td>
                          </tr>
                          </c:forEach>
                        
                      </tbody>
                      <button class="add_elv" style="float:right; border-radius: 4px; padding: 5px;
                          margin-right: 14px; background: #26B99A; border:none;">
                          <a href="adduser" style=" font-weight: bold; color:#fff;">
                          Nouveau</a>
                    </button>
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
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Powered by Glab!
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>
    <!-- jQuery -->
    <script src="style/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
   <script src="style/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <!-- Datatables -->
    <script src="style/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="style/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="style/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="style/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="style/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="style/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="style/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="style/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="style/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="style/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="style/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="style/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="style/build/js/custom.min.js"></script>

  </body>
</html>