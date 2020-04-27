<%-- 
    Document   : nouveauMed
    Created on : 11 avr. 2020, 12:33:12
    Author     : GEDEON
--%>

<%@page import="model.DAOApprovisionnement"%>
<%@page import="view.approvisionnement"%>
<%@page import="view.fournisseur"%>
<%@page import="model.DAOFournisseur"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.DAOCategorie"%>
<%@page import="model.DAOProduit"%>
<%@page import="view.produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forms</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
</head>
    <%
        DAOProduit daop = new DAOProduit ();
        DAOFournisseur daof = new DAOFournisseur();
        List <produit> data = new ArrayList<>();
        List <fournisseur> dataf = new ArrayList<>();
        DAOApprovisionnement daoa = new DAOApprovisionnement ();
        List <approvisionnement> dataap = new ArrayList<>();
    %>
<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="images/icon/logo.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="index.html">Dashboard 1</a>
                                </li>
                                <li>
                                    <a href="adminAccueil.jsp">Dashboard 2</a>
                                </li>
                                <li>
                                    <a href="index3.html">Dashboard 3</a>
                                </li>
                                <li>
                                    <a href="index4.html">Dashboard 4</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="chart.html">
                                <i class="fas fa-chart-bar"></i>Charts</a>
                        </li>
                        <li>
                            <a href="table.html">
                                <i class="fas fa-table"></i>Tables</a>
                        </li>
                        <li>
                            <a href="form.html">
                                <i class="far fa-check-square"></i>Forms</a>
                        </li>
                        <li>
                            <a href="calendar.html">
                                <i class="fas fa-calendar-alt"></i>Calendar</a>
                        </li>
                        <li>
                            <a href="map.html">
                                <i class="fas fa-map-marker-alt"></i>Maps</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-copy"></i>Pages</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="login.html">Login</a>
                                </li>
                                <li>
                                    <a href="register.html">Register</a>
                                </li>
                                <li>
                                    <a href="forget-pass.html">Forget Password</a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-desktop"></i>UI Elements</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="button.html">Button</a>
                                </li>
                                <li>
                                    <a href="badge.html">Badges</a>
                                </li>
                                <li>
                                    <a href="tab.html">Tabs</a>
                                </li>
                                <li>
                                    <a href="card.html">Cards</a>
                                </li>
                                <li>
                                    <a href="alert.html">Alerts</a>
                                </li>
                                <li>
                                    <a href="progress-bar.html">Progress Bars</a>
                                </li>
                                <li>
                                    <a href="modal.html">Modals</a>
                                </li>
                                <li>
                                    <a href="switch.html">Switchs</a>
                                </li>
                                <li>
                                    <a href="grid.html">Grids</a>
                                </li>
                                <li>
                                    <a href="fontawesome.html">Fontawesome Icon</a>
                                </li>
                                <li>
                                    <a href="typo.html">Typography</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img src="images/icon/logo.png" alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="active has-sub">
                            <a href="adminAccueil.jsp">
                                <i class="fas fa-home"></i>Accueil</a>
                        </li>
                        <li>
                            <a class="js-arrow" href="#">
                                <i class="fas fa-medkit"></i>Médicamnent</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="nouveauMed.jsp">Nouveau</a>
                                </li>
                                <li>
                                    <a href="nouveauAchat.jsp">Entrée en Stock</a>
                                </li>
                                <li>
                                    <a href="index3.html">Sortie en Stock</a>
                                </li>
                                <li>
                                    <a href="index4.html">Stock Méd.</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a class="js-arrow" href="#">
                                <i class="fas fa-users"></i>Patients</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="index.html">Nouveau</a>
                                </li>
                                <li>
                                    <a href="index2.html">Patients Internés</a>
                                </li>
                                <li>
                                    <a href="index3.html">Patients Suivis</a>
                                </li>
                                <li>
                                    <a href="index4.html">Stock Méd.</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="chart.html">
                                <i class="fas fa-users"></i>Patients</a>
                        </li>
                        <li>
                            <a href="table.html">
                                <i class="fas fa-table"></i>Tables</a>
                        </li>
                        <li>
                            <a href="form.html">
                                <i class="far fa-check-square"></i>Forms</a>
                        </li>
                        <li>
                            <a href="calendar.html">
                                <i class="fas fa-calendar-alt"></i>Calendar</a>
                        </li>
                        <li>
                            <a href="map.html">
                                <i class="fas fa-map-marker-alt"></i>Maps</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-copy"></i>Pages</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="login.html">Login</a>
                                </li>
                                <li>
                                    <a href="register.html">Register</a>
                                </li>
                                <li>
                                    <a href="forget-pass.html">Forget Password</a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-desktop"></i>UI Elements</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="button.html">Button</a>
                                </li>
                                <li>
                                    <a href="badge.html">Badges</a>
                                </li>
                                <li>
                                    <a href="tab.html">Tabs</a>
                                </li>
                                <li>
                                    <a href="card.html">Cards</a>
                                </li>
                                <li>
                                    <a href="alert.html">Alerts</a>
                                </li>
                                <li>
                                    <a href="progress-bar.html">Progress Bars</a>
                                </li>
                                <li>
                                    <a href="modal.html">Modals</a>
                                </li>
                                <li>
                                    <a href="switch.html">Switchs</a>
                                </li>
                                <li>
                                    <a href="grid.html">Grids</a>
                                </li>
                                <li>
                                    <a href="fontawesome.html">Fontawesome Icon</a>
                                </li>
                                <li>
                                    <a href="typo.html">Typography</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                                <input type="search" class="au-input au-input--xl search-input" autocomplete="off" name="search" data-table="customers-list" placeholder="Rechercher..." />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            <div class="header-button">
                                <div class="noti-wrap">
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-comment-more"></i>
                                        <span class="quantity">1</span>
                                        <div class="mess-dropdown js-dropdown">
                                            <div class="mess__title">
                                                <p>You have 2 news message</p>
                                            </div>
                                            <div class="mess__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-06.jpg" alt="Michelle Moreno" />
                                                </div>
                                                <div class="content">
                                                    <h6>Michelle Moreno</h6>
                                                    <p>Have sent a photo</p>
                                                    <span class="time">3 min ago</span>
                                                </div>
                                            </div>
                                            <div class="mess__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-04.jpg" alt="Diane Myers" />
                                                </div>
                                                <div class="content">
                                                    <h6>Diane Myers</h6>
                                                    <p>You are now connected on message</p>
                                                    <span class="time">Yesterday</span>
                                                </div>
                                            </div>
                                            <div class="mess__footer">
                                                <a href="#">View all messages</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-email"></i>
                                        <span class="quantity">1</span>
                                        <div class="email-dropdown js-dropdown">
                                            <div class="email__title">
                                                <p>You have 3 New Emails</p>
                                            </div>
                                            <div class="email__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-06.jpg" alt="Cynthia Harvey" />
                                                </div>
                                                <div class="content">
                                                    <p>Meeting about new dashboard...</p>
                                                    <span>Cynthia Harvey, 3 min ago</span>
                                                </div>
                                            </div>
                                            <div class="email__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
                                                </div>
                                                <div class="content">
                                                    <p>Meeting about new dashboard...</p>
                                                    <span>Cynthia Harvey, Yesterday</span>
                                                </div>
                                            </div>
                                            <div class="email__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
                                                </div>
                                                <div class="content">
                                                    <p>Meeting about new dashboard...</p>
                                                    <span>Cynthia Harvey, April 12,,2018</span>
                                                </div>
                                            </div>
                                            <div class="email__footer">
                                                <a href="#">See all emails</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-notifications"></i>
                                        <span class="quantity">3</span>
                                        <div class="notifi-dropdown js-dropdown">
                                            <div class="notifi__title">
                                                <p>You have 3 Notifications</p>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c1 img-cir img-40">
                                                    <i class="zmdi zmdi-email-open"></i>
                                                </div>
                                                <div class="content">
                                                    <p>You got a email notification</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c2 img-cir img-40">
                                                    <i class="zmdi zmdi-account-box"></i>
                                                </div>
                                                <div class="content">
                                                    <p>Your account has been blocked</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c3 img-cir img-40">
                                                    <i class="zmdi zmdi-file-text"></i>
                                                </div>
                                                <div class="content">
                                                    <p>You got a new file</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__footer">
                                                <a href="#">All notifications</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#"><%= session.getAttribute("user") %></a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">john doe</a>
                                                    </h5>
                                                    <span class="email"><%= session.getAttribute("compte") %></span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-account"></i>Comptes</a>
                                                </div>
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-settings"></i>Paramètres</a>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="deconnexion.jsp"> <i class="zmdi zmdi-power"></i>Déconnexion</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Achat</strong>
                                         <small>/Médicament</small>
                                    </div>
                                   
                                    <div class="card-body">
                                        <div class="card-title">
                                            <h3 class="text-center title-2">Entrée En Stock</h3>
                                        </div>
                                        <hr>
                                        <form action="servApprovisionnement" method="POST" novalidate="novalidate">
                                            <input class="form-control" type="hidden" name="action" value="1">
                                            <input class="form-control" type="hidden" name="id" value="0">
                                            <div class="form-group">
                                                <label for="produit" class="control-label mb-1">Médicament</label>
                                                <small class="pull-right"><a href="nouveauMed.jsp" class="btn-success">Nouveau Méd.</a></small>
                                                <input id="cc-pament" list="produit" name="produit" id="produit" autocomplete="off" type="text"  class="form-control" aria-required="true" aria-invalid="false">
                                                <datalist id="produit">
                                                    <%
                                                        data = daop.Load();
                                                        for(produit p : data){
                                                    %>
                                                    <option value="<%= p.getDesignation() %>">
                                                    <%
                                                        }
                                                    %>
                                                </datalist>
                                            </div>
                                            <div class="form-group has-success">
                                                <label for="cc-name" class="control-label mb-1">Quantité</label>
                                                <input id="cc-name" name="quantite" type="number" autocomplete="off" class="form-control cc-name valid" data-val="true" data-val-required="Please enter the name on card" autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name-error">
                                                <span class="help-block field-validation-valid" data-valmsg-for="pvu" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="alert" class="control-label mb-1">P.U Achat</label>
                                                <input id="cc-number" name="pua" type="number" autocomplete="off" class="form-control cc-number identified visa" data-val="true" data-val-required="Please enter the card number" data-val-cc-number="Please enter a valid card number" autocomplete="cc-number">
                                                <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="alert" class="control-label mb-1">D. Fabrication</label>
                                                        <input id="cc-number" name="fabication" type="date" autocomplete="off" class="form-control cc-number identified visa" data-val="true" data-val-required="Please enter the card number" data-val-cc-number="Please enter a valid card number" autocomplete="cc-number">
                                                        <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="alert" class="control-label mb-1">D. Expiration</label>
                                                        <input id="cc-number" name="expiration" type="date" autocomplete="off" class="form-control cc-number identified visa" data-val="true" data-val-required="Please enter the card number" data-val-cc-number="Please enter a valid card number" autocomplete="cc-number">
                                                        <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                                    </div>
                                                </div>
                                            </div>
                                             <div class="form-group">
                                                 <label for="fournisseur" class="control-label mb-1">Fournisseur</label>
                                                <select class="form-control" name="fournisseur" id="fournisseur">
                                                    <%
                                                        dataf = daof.Get_Fournisseur();
                                                        for(fournisseur fourni : dataf){
                                                    %>
                                                        <option value="<%= fourni.getIdf()%>"><%= fourni.getFourni()%></option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                            <div>
                                                <button id="payment-button" name="btn" type="submit" class="btn btn-lg btn-info btn-block">
                                                    <i class="fa fa-sign-in fa-lg"></i>&nbsp;
                                                    <span id="payment-button-amount">Enregistrer</span>
                                                    <span id="payment-button-sending" style="display:none;">Sending…</span>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Approvisionnement</strong>
                                        <small>/Liste</small>
                                        <span class="pull-right"><a href="listMed.jsp" class="btn btn-light">Voir Plus</a></span>
                                    </div>
                                    <div class="card-body card-block">
                                       <div class="table-responsive" id="table-liste">
                                        <table class="table table-top-campaign customers-list">
                                            <thead>
                                                <th>Désignation</th>
                                                <th>Quantité</th>
                                                <th>Action</th>
                                            </thead>
                                            <tbody>
                                                <%
                                                    int compteur;
                                                    compteur = 0;
                                                    dataap = daoa.Load();
                                                    for (approvisionnement a : dataap){
                                                    compteur ++;
                                                %>
                                                
                                                <tr>
                                                    <td><%= compteur+". "+ a.getDesignation() %></td>
                                                    <td><%= a.getQuantite() %></td>
                                                    <td>
                                                        <div class="input-group-btn">
                                                            <div class="btn-group">
                                                                <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle btn btn-info btn-sm">Action</button>
                                                                <div tabindex="-1" aria-hidden="true" role="menu" class="dropdown-menu">
                                                                    <a href="updatePages/modifMed.jsp?id=<%= a.getId() %>&amp;design=<%= a.getDesignation()%>&amp;pvu=<%= a.getPua() %>" 
                                                                       class="dropdown-item"><i class="zmdi zmdi-edit"></i>  Modifer</a>
                                                                     <a href="" class="dropdown-item"><i class="zmdi zmdi-delete"></i>  Supprimer</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <%
                                                    }
                                                %>
                                               
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

    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>
    <!-- Main JS-->
    <script src="js/main.js"></script>
    <script>
        var list = [
            'Paraceta',
            'Paladonta' ];
        $(function(){
            $("#produit").autocomplete({
                source : list;
            });
        });
    </script>
    </body>
</html>
