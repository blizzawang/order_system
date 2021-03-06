<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="fixed">
<head>

    <!-- Basic -->
    <meta charset="UTF-8">

    <title>Editable Tables | Okler Themes | Porto-Admin</title>
    <meta name="keywords" content="HTML5 Admin Template"/>
    <meta name="description" content="Porto Admin - Responsive HTML5 Template">
    <meta name="author" content="okler.net">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/"/>

    <!-- Web Fonts  -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light"
          rel="stylesheet" type="text/css">

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css"/>
    <link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css"/>
    <link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/datepicker3.css"/>

    <!-- Specific Page Vendor CSS -->
    <link rel="stylesheet" href="assets/vendor/select2/select2.css"/>
    <link rel="stylesheet" href="assets/vendor/jquery-datatables-bs3/assets/css/datatables.css"/>

    <!-- Theme CSS -->
    <link rel="stylesheet" href="assets/stylesheets/theme.css"/>

    <!-- Skin CSS -->
    <link rel="stylesheet" href="assets/stylesheets/skins/default.css"/>

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/theme-custom.css">

    <!-- Head Libs -->
    <script src="assets/vendor/modernizr/modernizr.js"></script>

</head>
<body>
<section class="body">

    <!-- start: header -->
    <header class="header">
        <div class="logo-container">
            <a href="../" class="logo">
                <img src="assets/images/logo.png" height="35" alt="Porto Admin"/>
            </a>
            <div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html"
                 data-fire-event="sidebar-left-opened">
                <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
            </div>
        </div>

        <!-- start: search & user box -->
        <div class="header-right">

            <form action="index/to/food" class="search nav-form" method="post">
                <div class="input-group input-search">
                    <input type="text" class="form-control" name="q" id="q" placeholder="Search...">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </form>

            <span class="separator"></span>

            <ul class="notifications">
                <li>
                    <a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
                        <i class="fa fa-tasks"></i>
                        <span class="badge">3</span>
                    </a>

                    <div class="dropdown-menu notification-menu large">
                        <div class="notification-title">
                            <span class="pull-right label label-default">3</span>
                            Tasks
                        </div>

                        <div class="content">
                            <ul>
                                <li>
                                    <p class="clearfix mb-xs">
                                        <span class="message pull-left">Generating Sales Report</span>
                                        <span class="message pull-right text-dark">60%</span>
                                    </p>
                                    <div class="progress progress-xs light">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
                                    </div>
                                </li>

                                <li>
                                    <p class="clearfix mb-xs">
                                        <span class="message pull-left">Importing Contacts</span>
                                        <span class="message pull-right text-dark">98%</span>
                                    </p>
                                    <div class="progress progress-xs light">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="98"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 98%;"></div>
                                    </div>
                                </li>

                                <li>
                                    <p class="clearfix mb-xs">
                                        <span class="message pull-left">Uploading something big</span>
                                        <span class="message pull-right text-dark">33%</span>
                                    </p>
                                    <div class="progress progress-xs light mb-xs">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="33"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 33%;"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
                        <i class="fa fa-envelope"></i>
                        <span class="badge">4</span>
                    </a>

                    <div class="dropdown-menu notification-menu">
                        <div class="notification-title">
                            <span class="pull-right label label-default">230</span>
                            Messages
                        </div>

                        <div class="content">
                            <ul>
                                <li>
                                    <a href="#" class="clearfix">
                                        <figure class="image">
                                            <img src="assets/images/!sample-user.jpg" alt="Joseph Doe Junior"
                                                 class="img-circle"/>
                                        </figure>
                                        <span class="title">Joseph Doe</span>
                                        <span class="message">Lorem ipsum dolor sit.</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <figure class="image">
                                            <img src="assets/images/!sample-user.jpg" alt="Joseph Junior"
                                                 class="img-circle"/>
                                        </figure>
                                        <span class="title">Joseph Junior</span>
                                        <span class="message truncate">Truncated message. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lacinia orci. Proin vestibulum eget risus non luctus. Nunc cursus lacinia lacinia. Nulla molestie malesuada est ac tincidunt. Quisque eget convallis diam, nec venenatis risus. Vestibulum blandit faucibus est et malesuada. Sed interdum cursus dui nec venenatis. Pellentesque non nisi lobortis, rutrum eros ut, convallis nisi. Sed tellus turpis, dignissim sit amet tristique quis, pretium id est. Sed aliquam diam diam, sit amet faucibus tellus ultricies eu. Aliquam lacinia nibh a metus bibendum, eu commodo eros commodo. Sed commodo molestie elit, a molestie lacus porttitor id. Donec facilisis varius sapien, ac fringilla velit porttitor et. Nam tincidunt gravida dui, sed pharetra odio pharetra nec. Duis consectetur venenatis pharetra. Vestibulum egestas nisi quis elementum elementum.</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <figure class="image">
                                            <img src="assets/images/!sample-user.jpg" alt="Joe Junior"
                                                 class="img-circle"/>
                                        </figure>
                                        <span class="title">Joe Junior</span>
                                        <span class="message">Lorem ipsum dolor sit.</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <figure class="image">
                                            <img src="assets/images/!sample-user.jpg" alt="Joseph Junior"
                                                 class="img-circle"/>
                                        </figure>
                                        <span class="title">Joseph Junior</span>
                                        <span class="message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lacinia orci. Proin vestibulum eget risus non luctus. Nunc cursus lacinia lacinia. Nulla molestie malesuada est ac tincidunt. Quisque eget convallis diam.</span>
                                    </a>
                                </li>
                            </ul>

                            <hr/>

                            <div class="text-right">
                                <a href="#" class="view-more">View All</a>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
                        <i class="fa fa-bell"></i>
                        <span class="badge">3</span>
                    </a>

                    <div class="dropdown-menu notification-menu">
                        <div class="notification-title">
                            <span class="pull-right label label-default">3</span>
                            Alerts
                        </div>

                        <div class="content">
                            <ul>
                                <li>
                                    <a href="#" class="clearfix">
                                        <div class="image">
                                            <i class="fa fa-thumbs-down bg-danger"></i>
                                        </div>
                                        <span class="title">Server is Down!</span>
                                        <span class="message">Just now</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <div class="image">
                                            <i class="fa fa-lock bg-warning"></i>
                                        </div>
                                        <span class="title">User Locked</span>
                                        <span class="message">15 minutes ago</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <div class="image">
                                            <i class="fa fa-signal bg-success"></i>
                                        </div>
                                        <span class="title">Connection Restaured</span>
                                        <span class="message">10/10/2014</span>
                                    </a>
                                </li>
                            </ul>

                            <hr/>

                            <div class="text-right">
                                <a href="#" class="view-more">View All</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>

            <span class="separator"></span>

            <div id="userbox" class="userbox">
                <a href="#" data-toggle="dropdown">
                    <figure class="profile-picture">
                        <img src="assets/images/!logged-user.jpg" alt="Joseph Doe" class="img-circle"
                             data-lock-picture="assets/images/!logged-user.jpg"/>
                    </figure>
                    <div class="profile-info" data-lock-name="John Doe" data-lock-email="johndoe@okler.com">
                        <span class="name">${sessionScope.loginAdmin.username}</span>
                        <span class="role">管理员</span>
                    </div>

                    <i class="fa custom-caret"></i>
                </a>

                <div class="dropdown-menu">
                    <ul class="list-unstyled">
                        <li class="divider"></li>
                        <li>
                            <a role="menuitem" tabindex="-1" href="pages-user-profile.html"><i class="fa fa-user"></i>
                                My Profile</a>
                        </li>
                        <li>
                            <a role="menuitem" tabindex="-1" href="#" data-lock-screen="true"><i class="fa fa-lock"></i>
                                Lock Screen</a>
                        </li>
                        <li>
                            <a role="menuitem" tabindex="-1" href="admin/do/logout" id="a_logout"><i
                                    class="fa fa-power-off"></i> 注销</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- end: search & user box -->
    </header>
    <!-- end: header -->

    <div class="inner-wrapper">
        <!-- start: sidebar -->
        <aside id="sidebar-left" class="sidebar-left">

            <div class="sidebar-header">
                <div class="sidebar-title">
                    Navigation
                </div>
                <div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html"
                     data-fire-event="sidebar-left-toggle">
                    <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
                </div>
            </div>

            <div class="nano">
                <div class="nano-content">
                    <nav id="menu" class="nav-main" role="navigation">
                        <ul class="nav nav-main">
                            <li>
                                <a href="index.html">
                                    <i class="fa fa-home" aria-hidden="true"></i>
                                    <span>Dashboard</span>
                                </a>
                            </li>
                            <li class="nav-parent nav-expanded nav-active">
                                <a>
                                    <i class="fa fa-table" aria-hidden="true"></i>
                                    <span>Tables</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li>
                                        <a href="index/to/table">
                                            餐桌管理
                                        </a>
                                    </li>
                                    <li>
                                        <a href="index/to/cuisine">
                                            菜系管理
                                        </a>
                                    </li>
                                    <li class="nav-active">
                                        <a href="index/to/food">
                                            菜品管理
                                        </a>
                                    </li>
                                    <li>
                                        <a href="index/to/order">
                                            订单管理
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="mailbox-folder.html">
                                    <span class="pull-right label label-primary">182</span>
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <span>Mailbox</span>
                                </a>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-copy" aria-hidden="true"></i>
                                    <span>Pages</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li>
                                        <a href="pages-signup.html">
                                            Sign Up
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-signin.html">
                                            Sign In
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-recover-password.html">
                                            Recover Password
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-lock-screen.html">
                                            Locked Screen
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-user-profile.html">
                                            User Profile
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-session-timeout.html">
                                            Session Timeout
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-calendar.html">
                                            Calendar
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-timeline.html">
                                            Timeline
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-media-gallery.html">
                                            Media Gallery
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-invoice.html">
                                            Invoice
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-blank.html">
                                            Blank Page
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-404.html">
                                            404
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-500.html">
                                            500
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-log-viewer.html">
                                            Log Viewer
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages-search-results.html">
                                            Search Results
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-tasks" aria-hidden="true"></i>
                                    <span>UI Elements</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li>
                                        <a href="ui-elements-typography.html">
                                            Typography
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-icons.html">
                                            Icons
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-tabs.html">
                                            Tabs
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-panels.html">
                                            Panels
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-widgets.html">
                                            Widgets
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-portlets.html">
                                            Portlets
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-buttons.html">
                                            Buttons
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-alerts.html">
                                            Alerts
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-notifications.html">
                                            Notifications
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-modals.html">
                                            Modals
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-lightbox.html">
                                            Lightbox
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-progressbars.html">
                                            Progress Bars
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-sliders.html">
                                            Sliders
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-carousels.html">
                                            Carousels
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-accordions.html">
                                            Accordions
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-nestable.html">
                                            Nestable
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-tree-view.html">
                                            Tree View
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-grid-system.html">
                                            Grid System
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-charts.html">
                                            Charts
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-animations.html">
                                            Animations
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ui-elements-extra.html">
                                            Extra
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-list-alt" aria-hidden="true"></i>
                                    <span>Forms</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li>
                                        <a href="forms-basic.html">
                                            Basic
                                        </a>
                                    </li>
                                    <li>
                                        <a href="forms-advanced.html">
                                            Advanced
                                        </a>
                                    </li>
                                    <li>
                                        <a href="forms-validation.html">
                                            Validation
                                        </a>
                                    </li>
                                    <li>
                                        <a href="forms-layouts.html">
                                            Layouts
                                        </a>
                                    </li>
                                    <li>
                                        <a href="forms-wizard.html">
                                            Wizard
                                        </a>
                                    </li>
                                    <li>
                                        <a href="forms-code-editor.html">
                                            Code Editor
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <span>Maps</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li>
                                        <a href="maps-google-maps.html">
                                            Basic
                                        </a>
                                    </li>
                                    <li>
                                        <a href="maps-google-maps-builder.html">
                                            Map Builder
                                        </a>
                                    </li>
                                    <li>
                                        <a href="maps-vector.html">
                                            Vector
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-columns" aria-hidden="true"></i>
                                    <span>Layouts</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li>
                                        <a href="layouts-default.html">
                                            Default
                                        </a>
                                    </li>
                                    <li>
                                        <a href="layouts-boxed.html">
                                            Boxed
                                        </a>
                                    </li>
                                    <li>
                                        <a href="layouts-menu-collapsed.html">
                                            Menu Collapsed
                                        </a>
                                    </li>
                                    <li>
                                        <a href="layouts-scroll.html">
                                            Scroll
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-align-left" aria-hidden="true"></i>
                                    <span>Menu Levels</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li>
                                        <a>First Level</a>
                                    </li>
                                    <li class="nav-parent">
                                        <a>Second Level</a>
                                        <ul class="nav nav-children">
                                            <li class="nav-parent">
                                                <a>Third Level</a>
                                                <ul class="nav nav-children">
                                                    <li>
                                                        <a>Third Level Link #1</a>
                                                    </li>
                                                    <li>
                                                        <a>Third Level Link #2</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a>Second Level Link #1</a>
                                            </li>
                                            <li>
                                                <a>Second Level Link #2</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="" target="_blank">
                                    <i class="fa fa-external-link" aria-hidden="true"></i>
                                    <span>Front-End <em class="not-included">(Not Included)</em></span>
                                </a>
                            </li>
                        </ul>
                    </nav>

                    <hr class="separator"/>

                    <div class="sidebar-widget widget-tasks">
                        <div class="widget-header">
                            <h6>Projects</h6>
                            <div class="widget-toggle">+</div>
                        </div>
                        <div class="widget-content">
                            <ul class="list-unstyled m-none">
                                <li><a href="#">Porto HTML5 Template</a></li>
                                <li><a href="#">Tucson Template</a></li>
                                <li><a href="#">Porto Admin</a></li>
                            </ul>
                        </div>
                    </div>

                    <hr class="separator"/>

                    <div class="sidebar-widget widget-stats">
                        <div class="widget-header">
                            <h6>Company Stats</h6>
                            <div class="widget-toggle">+</div>
                        </div>
                        <div class="widget-content">
                            <ul>
                                <li>
                                    <span class="stats-title">Stat 1</span>
                                    <span class="stats-complete">85%</span>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-primary progress-without-number"
                                             role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 85%;">
                                            <span class="sr-only">85% Complete</span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <span class="stats-title">Stat 2</span>
                                    <span class="stats-complete">70%</span>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-primary progress-without-number"
                                             role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 70%;">
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <span class="stats-title">Stat 3</span>
                                    <span class="stats-complete">2%</span>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-primary progress-without-number"
                                             role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 2%;">
                                            <span class="sr-only">2% Complete</span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>

        </aside>
        <!-- end: sidebar -->

        <section role="main" class="content-body">
            <header class="page-header">
                <h2>Editable Tables</h2>

                <div class="right-wrapper pull-right">
                    <ol class="breadcrumbs">
                        <li>
                            <a href="index.html">
                                <i class="fa fa-home"></i>
                            </a>
                        </li>
                        <li><span>Tables</span></li>
                        <li><span>Editable</span></li>
                    </ol>

                    <a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
                </div>
            </header>

            <!-- start: page -->
            <section class="panel">
                <header class="panel-heading">
                    <div class="panel-actions">
                        <a href="#" class="fa fa-caret-down"></a>
                        <a href="#" class="fa fa-times"></a>
                    </div>

                    <h2 class="panel-title">Default</h2>
                </header>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-md">
                                <button id="addToTable" class="btn btn-primary">添加 <i class="fa fa-plus"></i></button>
                            </div>
                        </div>
                    </div>
                    <div class="row datatables-header form-inline">
                        <div class="col-sm-12 col-md-6">
                            <div class="dataTables_length" id="datatable-editable_length">
                                <label>
                                    <select class="form-control" id="pageSelect">
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select> records per page
                                </label>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6">
                            <div id="datatable-editable_filter" class="dataTables_filter">
                                <form action="index/to/food" method="post">
                                    <label>
                                        <%-- 设置隐藏域发送分页信息 --%>
                                        <input type="hidden" name="pageNum" value="${param.pageNum}">
                                        <input type="hidden" name="pageSize" value="${param.pageSize}">
                                        <input type="search" name="keyword" class="form-control" placeholder="Searce"
                                               aria-controls="datatable-editable">
                                    </label>
                                    <%--<button type="submit" class="btn btn-primary">搜索</button>--%>
                                </form>

                            </div>
                        </div>
                    </div>
                    <table class="table table-bordered table-striped mb-none" id="datatable-editable">
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>菜名</th>
                            <th>所属菜系</th>
                            <th>价格</th>
                            <th>会员价格</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody id="datatable-editable-tbody">
                        <c:if test="${empty requestScope.pageInfo.list}">
                            <tr>
                                <td colspan="6" align="center">抱歉!没有查询到您要的数据!</td>
                            </tr>
                        </c:if>
                        <c:if test="${!empty requestScope.pageInfo.list}">
                            <c:forEach items="${requestScope.pageInfo.list}" var="food" varStatus="myStatus">
                                <tr class="gradeX">
                                    <td>${myStatus.count}</td>
                                    <td>${food.name}</td>
                                    <td>${food.cuisineId}</td>
                                    <td>${food.price}</td>
                                    <td>${food.vipPrice}</td>
                                    <td class="actions">
                                        <a href="#" class="hidden on-editing save-row"><i class="fa fa-save"></i></a>
                                        <a href="#" class="hidden on-editing cancel-row"><i class="fa fa-times"></i></a>
                                        <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
                                        <i style="cursor: pointer" class="fa fa-trash-o on-default remove-row" data-toggle="modal" data-target="#myModal" onclick="food_delete($(this));" delete_id="${food.id}"></i>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                        </tbody>
                        <tfoot>
                        <tr>
                            <%-- 分页导航条 --%>
                            <td colspan="6" align="center">
                                <ul class="pagination">
                                    <%-- 点击跳转至首页 --%>
                                    <li>
                                        <a href="index/to/food?pageNum=1&keyword=${param.keyword}&pageSize=${param.pageSize}">首页</a>
                                    </li>
                                    <%-- 是否含有上一页 --%>
                                    <c:if test="${pageInfo.hasPreviousPage}">
                                        <%-- 上一页按钮 --%>
                                        <li>
                                            <a href="index/to/food?pageNum=${pageInfo.pageNum - 1}&keyword=${param.keyword}&pageSize=${param.pageSize}">上一页</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${!pageInfo.hasPreviousPage}">
                                        <%-- 禁用上一页按钮 --%>
                                        <li class="disabled">
                                            <a href="javascript:void(0);">上一页</a>
                                        </li>
                                    </c:if>
                                    <%-- 共有navigatepageNums页 --%>
                                    <c:forEach items="${pageInfo.navigatepageNums}" var="pn">
                                        <%-- 若页码处于当前页，则激活按钮状态 --%>
                                        <c:if test="${pn == pageInfo.pageNum}">
                                            <li class="active"><a href="#">${pn}</a></li>
                                        </c:if>
                                        <c:if test="${pn != pageInfo.pageNum}">
                                            <%-- 点击页码，跳转至对应页数 --%>
                                            <li>
                                                <a href="index/to/food?pageNum=${pn}&keyword=${param.keyword}&pageSize=${param.pageSize}">${pn}</a>
                                            </li>
                                        </c:if>
                                    </c:forEach>
                                    <%-- 是否含有下一页 --%>
                                    <c:if test="${pageInfo.hasNextPage}">
                                        <%-- 显示下一页按钮 --%>
                                        <li>
                                            <a href="index/to/food?pageNum=${pageInfo.pageNum + 1}&keyword=${param.keyword}&pageSize=${param.pageSize}">下一页</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${!pageInfo.hasNextPage}">
                                        <%-- 禁用下一页按钮 --%>
                                        <li class="disabled">
                                            <a href="javascript:void(0);">下一页</a>
                                        </li>
                                    </c:if>
                                    <%-- 点击跳转至最后一页 --%>
                                    <li>
                                        <a href="index/to/food?pageNum=${pageInfo.pages}&keyword=${param.keyword}&pageSize=${param.pageSize}">末页</a>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </section>
            <!-- end: page -->
        </section>
    </div>

    <aside id="sidebar-right" class="sidebar-right">
        <div class="nano">
            <div class="nano-content">
                <a href="#" class="mobile-close visible-xs">
                    Collapse <i class="fa fa-chevron-right"></i>
                </a>

                <div class="sidebar-right-wrapper">

                    <div class="sidebar-widget widget-calendar">
                        <h6>Upcoming Tasks</h6>
                        <div data-plugin-datepicker data-plugin-skin="dark"></div>

                        <ul>
                            <li>
                                <time datetime="2014-04-19T00:00+00:00">04/19/2014</time>
                                <span>Company Meeting</span>
                            </li>
                        </ul>
                    </div>

                    <div class="sidebar-widget widget-friends">
                        <h6>Friends</h6>
                        <ul>
                            <li class="status-online">
                                <figure class="profile-picture">
                                    <img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
                                </figure>
                                <div class="profile-info">
                                    <span class="name">Joseph Doe Junior</span>
                                    <span class="title">Hey, how are you?</span>
                                </div>
                            </li>
                            <li class="status-online">
                                <figure class="profile-picture">
                                    <img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
                                </figure>
                                <div class="profile-info">
                                    <span class="name">Joseph Doe Junior</span>
                                    <span class="title">Hey, how are you?</span>
                                </div>
                            </li>
                            <li class="status-offline">
                                <figure class="profile-picture">
                                    <img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
                                </figure>
                                <div class="profile-info">
                                    <span class="name">Joseph Doe Junior</span>
                                    <span class="title">Hey, how are you?</span>
                                </div>
                            </li>
                            <li class="status-offline">
                                <figure class="profile-picture">
                                    <img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
                                </figure>
                                <div class="profile-info">
                                    <span class="name">Joseph Doe Junior</span>
                                    <span class="title">Hey, how are you?</span>
                                </div>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </aside>
</section>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">系统消息</h4>
            </div>
            <div class="modal-body">确认删除该数据吗?</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-danger" id="btn_delete">确认</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<div id="dialog" class="modal-block mfp-hide">
    <section class="panel">
        <header class="panel-heading">
            <h2 class="panel-title">Are you sure?</h2>
        </header>
        <div class="panel-body">
            <div class="modal-wrapper">
                <div class="modal-text">
                    <p>Are you sure that you want to delete this row?</p>
                </div>
            </div>
        </div>
        <footer class="panel-footer">
            <div class="row">
                <div class="col-md-12 text-right">
                    <button id="dialogConfirm" class="btn btn-primary">Confirm</button>
                    <button id="dialogCancel" class="btn btn-default">Cancel</button>
                </div>
            </div>
        </footer>
    </section>
</div>

<!-- Vendor -->
<script src="jquery/jquery-2.2.4.min.js"></script>
<script src="assets/vendor/jquery/jquery.js"></script>
<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>

<!-- Specific Page Vendor -->
<script src="assets/vendor/select2/select2.js"></script>
<script src="assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
<script src="assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>

<!-- Theme Base, Components and Settings -->
<script src="assets/javascripts/theme.js"></script>

<!-- Theme Custom -->
<script src="assets/javascripts/theme.custom.js"></script>

<!-- Theme Initialization Files -->
<script src="assets/javascripts/theme.init.js"></script>


<!-- Examples -->
<script src="assets/javascripts/tables/examples.datatables.editable.js"></script>

<script src="jquery/jquery-2.2.4.min.js"></script>
<script src="layer/layer.js"></script>
<script>
    $(function () {
        var pageSelect = $("#pageSelect");
        //初始化下拉列表的默认值
        pageSelect.val(${param.pageSize});
        //监听下拉列表的事件
        pageSelect.change(function () {
            //获取当前选中的值
            var val = pageSelect.val();
            //跳转页面
            var url = 'index/to/food?pageSize=' + val + '&pageNum=' + ${pageInfo.pageNum};
            window.location.href = url;
        });

        //监听添加按钮的点击事件
        $("#addToTable").click(function () {
            console.log(111);
            //为表格添加新的一行
            $("#datatable-editable-tbody").prepend('<tr role="row" class="adding odd">\n' +
                '    <td class="sorting_1">\n' +
                '        <input type="text" id="" class="form-control input-block" value="无需填写" disabled="disabled">\n' +
                '    </td>\n' +
                '    <td>\n' +
                '        <input type="text" id="add_name" class="form-control input-block" value="">\n' +
                '    </td>\n' +
                '    <td>\n' +
                '        <input type="text" id="add_type" class="form-control input-block" value="">\n' +
                '    </td>\n' +
                '    <td>\n' +
                '        <input type="text" id="add_price" class="form-control input-block" value="">\n' +
                '    </td>\n' +
                '    <td>\n' +
                '        <input type="text" id="add_vip_price" class="form-control input-block" value="">\n' +
                '    </td>\n' +
                '    <td class="actions">\n' +
                '        <a href="javascript:void(0);" class="on-editing save-row" onclick="add_save()">\n' +
                '            <i class="fa fa-save"></i>\n' +
                '        </a>\n' +
                '        <a href="#" class="on-editing cancel-row">\n' +
                '            <i class="fa fa-times"></i>\n' +
                '        </a>\n' +
                '        <a href="#" class="on-default edit-row hidden">\n' +
                '            <i class="fa fa-pencil"></i>\n' +
                '        </a>\n' +
                '        <a href="#" class="on-default remove-row hidden">\n' +
                '            <i class="fa fa-trash-o"></i>\n' +
                '        </a>\n' +
                '    </td>\n' +
                '</tr>');

            //添加了新的行后，禁用添加按钮
            $("#addToTable").attr({"disabled": "disabled"});
        });
    });

    //点击保存按钮保存新增的数据
    function add_save() {
        //取出新增菜品的信息
        var add_name_val = $("#add_name").val();
        var add_type_val = $("#add_type").val();
        var add_price_val = $("#add_price").val();
        var add_vip_price_val = $("#add_vip_price").val();

        //将该信息传递给控制方法
        $.ajax({
            url: 'food/to/save',
            type: 'post',
            data: {
                name: add_name_val,
                cuisineId: add_type_val,
                price: add_price_val,
                vipPrice: add_vip_price_val
            },
            success: function (data) {
                //跳转至最后一页
                console.log(data);
                window.location.href = 'index/to/food?pageNum=${pageInfo.pages}&keyword=${param.keyword}&pageSize=${param.pageSize}';
            }
        });
    }

    //点击模态框的确定按钮，删除指定的菜品数据
    $("#btn_delete").click(function () {
        //获取要删除的菜品id
        var delete_id = $(this).attr('delete_id');
        //发送ajax请求执行删除
        $.ajax({
            url: 'food/to/delete',
            type: 'post',
            data: {
                delete_id:delete_id
            },
            success:function (data) {
                //刷新页面，但保持原来的显示效果不变
                window.location.href = 'index/to/food?pageNum=${pageInfo.pageNum}&keyword=${param.keyword}&pageSize=${param.pageSize}';
            }
        });
        //执行删除后关闭模态框
        $("#myModal").modal("hide");
    });

    //点击删除操作的超链接，将菜品id传递给模态框
    function food_delete(jquery) {
        var delete_id = jquery.attr('delete_id');
        //将菜品id传递给模态框
        $("#btn_delete").attr("delete_id",delete_id);
    }
</script>
</body>
</html>