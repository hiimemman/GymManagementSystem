<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="batgymproject.NewAccount" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<!DOCTYPE html>
<html lang="en" runat="server">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Forms / Elements - NiceAdmin Bootstrap Template</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: NiceAdmin - v2.1.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

    <form id="form1" runat="server">
        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">

            <div class="d-flex align-items-center justify-content-between">
                <a href="index.html" class="logo d-flex align-items-center">
                    <img src="assets/img/logo.png" alt="">
                    <span class="d-none d-lg-block">Batmen Gym</span>
                </a>
                <i class="bi bi-list toggle-sidebar-btn"></i>
            </div>
            <!-- End Logo -->

            <div class="search-bar">
                <div class="search-form d-flex align-items-center" method="POST" action="#">
                    <input type="text" name="query" placeholder="Search" title="Enter search keyword">
                    <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                </div>
            </div>
            <!-- End Search Bar -->

            <nav class="header-nav ms-auto">
                <ul class="d-flex align-items-center">

                    <li class="nav-item d-block d-lg-none">
                        <a class="nav-link nav-icon search-bar-toggle " href="#">
                            <i class="bi bi-search"></i>
                        </a>
                    </li>
                    <!-- End Search Icon-->

                    <li class="nav-item dropdown">

                        <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                            <i class="bi bi-bell"></i>
                            <span class="badge bg-primary badge-number">4</span>
                        </a>
                        <!-- End Notification Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
                            <li class="dropdown-header">You have 4 new notifications
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="notification-item">
                                <i class="bi bi-exclamation-circle text-warning"></i>
                                <div>
                                    <h4>Lorem Ipsum</h4>
                                    <p>Quae dolorem earum veritatis oditseno</p>
                                    <p>30 min. ago</p>
                                </div>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="notification-item">
                                <i class="bi bi-x-circle text-danger"></i>
                                <div>
                                    <h4>Atque rerum nesciunt</h4>
                                    <p>Quae dolorem earum veritatis oditseno</p>
                                    <p>1 hr. ago</p>
                                </div>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="notification-item">
                                <i class="bi bi-check-circle text-success"></i>
                                <div>
                                    <h4>Sit rerum fuga</h4>
                                    <p>Quae dolorem earum veritatis oditseno</p>
                                    <p>2 hrs. ago</p>
                                </div>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="notification-item">
                                <i class="bi bi-info-circle text-primary"></i>
                                <div>
                                    <h4>Dicta reprehenderit</h4>
                                    <p>Quae dolorem earum veritatis oditseno</p>
                                    <p>4 hrs. ago</p>
                                </div>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li class="dropdown-footer">
                                <a href="#">Show all notifications</a>
                            </li>

                        </ul>
                        <!-- End Notification Dropdown Items -->

                    </li>
                    <!-- End Notification Nav -->

                    <li class="nav-item dropdown">

                        <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                            <i class="bi bi-chat-left-text"></i>
                            <span class="badge bg-success badge-number">3</span>
                        </a>
                        <!-- End Messages Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
                            <li class="dropdown-header">You have 3 new messages
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="message-item">
                                <a href="#">
                                    <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
                                    <div>
                                        <h4>Maria Hudson</h4>
                                        <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                        <p>4 hrs. ago</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="message-item">
                                <a href="#">
                                    <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
                                    <div>
                                        <h4>Anna Nelson</h4>
                                        <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                        <p>6 hrs. ago</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="message-item">
                                <a href="#">
                                    <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
                                    <div>
                                        <h4>David Muldon</h4>
                                        <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                        <p>8 hrs. ago</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="dropdown-footer">
                                <a href="#">Show all messages</a>
                            </li>

                        </ul>
                        <!-- End Messages Dropdown Items -->

                    </li>
                    <!-- End Messages Nav -->

                    <li class="nav-item dropdown pe-3">

                        <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                            <img src="assets/img/profile-img2.jpg" alt="Profile" class="rounded-circle">
                            <span class="d-none d-md-block dropdown-toggle ps-2">Admin</span>
                        </a>
                        <!-- End Profile Iamge Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                            <li class="dropdown-header">
                                <h6>Admin</h6>
                                <span>Web Designer</span>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                                    <i class="bi bi-person"></i>
                                    <span>My Profile</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                                    <i class="bi bi-gear"></i>
                                    <span>Account Settings</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                                    <i class="bi bi-question-circle"></i>
                                    <span>Need Help?</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>

                                <asp:Button runat="server" Text="Log Out" ID="BtnLogOut" OnClick="BtnLogOut_Click" />

                            </li>

                        </ul>
                        <!-- End Profile Dropdown Items -->
                    </li>
                    <!-- End Profile Nav -->

                </ul>
            </nav>
            <!-- End Icons Navigation -->

        </header>
        <!-- End Header -->

        <!-- ======= Sidebar ======= -->
        <aside id="sidebar" class="sidebar">

            <ul class="sidebar-nav" id="sidebar-nav">

                <li class="nav-item nav-link bi bi-grid">

                    <asp:LinkButton ID="LinkBtnDashboard" runat="server" OnClick="LinkBtnDashboard_Click"><span>&nbsp;&nbsp;&nbsp;Dashboard</span></asp:LinkButton>

                </li>
                <!-- End Dashboard Nav -->

                <li class="nav-item">
                    <a class="nav-link " data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-journal-text"></i><span>Membership</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>

                    <ul id="forms-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                        <li>
                            <asp:LinkButton ID="LinkBtnNewAccount" runat="server" OnClick="LinkBtnNewAccount_Click">New Customer</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkBtnViewMembers" runat="server" OnClick="LinkBtnViewMembers_Click">View Customers</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkBtnMemberStatus" runat="server" OnClick="LinkBtnMemberStatus_Click">Membership Status</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkBtnLogs" runat="server" OnClick="LinkBtnLogs_Click">Activity Log</asp:LinkButton>
                        </li>
                    </ul>
                </li>

                <!-- End Forms Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-menu-button-wide"></i><span>Components</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="components-alerts.html">
                                <i class="bi bi-circle"></i><span>Alerts</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-accordion.html">
                                <i class="bi bi-circle"></i><span>Accordion</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-badges.html">
                                <i class="bi bi-circle"></i><span>Badges</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-breadcrumbs.html">
                                <i class="bi bi-circle"></i><span>Breadcrumbs</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-buttons.html">
                                <i class="bi bi-circle"></i><span>Buttons</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-cards.html">
                                <i class="bi bi-circle"></i><span>Cards</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-carousel.html">
                                <i class="bi bi-circle"></i><span>Carousel</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-list-group.html">
                                <i class="bi bi-circle"></i><span>List group</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-modal.html">
                                <i class="bi bi-circle"></i><span>Modal</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-tabs.html">
                                <i class="bi bi-circle"></i><span>Tabs</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-pagination.html">
                                <i class="bi bi-circle"></i><span>Pagination</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-progress.html">
                                <i class="bi bi-circle"></i><span>Progress</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-spinners.html">
                                <i class="bi bi-circle"></i><span>Spinners</span>
                            </a>
                        </li>
                        <li>
                            <a href="components-tooltips.html">
                                <i class="bi bi-circle"></i><span>Tooltips</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- End Components Nav -->



                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-layout-text-window-reverse"></i><span>Tables</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="tables-general.html">
                                <i class="bi bi-circle"></i><span>General Tables</span>
                            </a>
                        </li>
                        <li>
                            <a href="tables-data.html">
                                <i class="bi bi-circle"></i><span>Data Tables</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- End Tables Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-bar-chart"></i><span>Charts</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="charts-chartjs.html">
                                <i class="bi bi-circle"></i><span>Chart.js</span>
                            </a>
                        </li>
                        <li>
                            <a href="charts-apexcharts.html">
                                <i class="bi bi-circle"></i><span>ApexCharts</span>
                            </a>
                        </li>
                        <li>
                            <a href="charts-echarts.html">
                                <i class="bi bi-circle"></i><span>ECharts</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- End Charts Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-gem"></i><span>Icons</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="icons-bootstrap.html">
                                <i class="bi bi-circle"></i><span>Bootstrap Icons</span>
                            </a>
                        </li>
                        <li>
                            <a href="icons-remix.html">
                                <i class="bi bi-circle"></i><span>Remix Icons</span>
                            </a>
                        </li>
                        <li>
                            <a href="icons-boxicons.html">
                                <i class="bi bi-circle"></i><span>Boxicons</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- End Icons Nav -->

                <li class="nav-heading">Pages</li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="users-profile.html">
                        <i class="bi bi-person"></i>
                        <span>Profile</span>
                    </a>
                </li>
                <!-- End Profile Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="pages-faq.html">
                        <i class="bi bi-question-circle"></i>
                        <span>F.A.Q</span>
                    </a>
                </li>
                <!-- End F.A.Q Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="pages-contact.html">
                        <i class="bi bi-envelope"></i>
                        <span>Contact</span>
                    </a>
                </li>
                <!-- End Contact Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="pages-register.html">
                        <i class="bi bi-card-list"></i>
                        <span>Register</span>
                    </a>
                </li>
                <!-- End Register Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="pages-login.html">
                        <i class="bi bi-box-arrow-in-right"></i>
                        <span>Login</span>
                    </a>
                </li>
                <!-- End Login Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="pages-error-404.html">
                        <i class="bi bi-dash-circle"></i>
                        <span>Error 404</span>
                    </a>
                </li>
                <!-- End Error 404 Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="pages-blank.html">
                        <i class="bi bi-file-earmark"></i>
                        <span>Blank</span>
                    </a>
                </li>
                <!-- End Blank Page Nav -->

            </ul>

        </aside>
        <!-- End Sidebar-->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Membership Form</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item">Forms</li>
                        <li class="breadcrumb-item active">Elements</li>
                    </ol>
                </nav>
            </div>



            <section class="section">

                <!-- End Page Title -->

                <div class="row" runat ="server" id ="divCustomerPackagePlan"> <!--Step 1 - Package Plan-->
                    <div class="col-lg-14">
                        <div class="card">
                            <div class="card-body">

                                <h5 class="card-title">Your Plan Includes</h5>

                                <div class="row">
                                    <div class="col-lg-3">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Bronze</h5>
                                                <p class="card-text">
                                                    Unlimited HIIT Classes
                                                    <br />
                                                    + PHP 660.00/mth
                                                </p>

                                                <p class="card-text">
                                                    Feel the HIIT with over 1,400 training classes monthly on top of your gym membership; including our Signature programs like HIIT X Power, HIIT X Strength, HIIT X Rush, Boom, X Blast, and Burn.
*Programmes may vary depending on the club and the number of classes is based on a Platinum Passport Plan.
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Silver</h5>
                                                <p class="card-text">
                                                    Unlimited HIIT Classes
                                                    <br />
                                                    + PHP 660.00/mth
                                                </p>

                                                <p class="card-text">
                                                    Feel the HIIT with over 1,400 training classes monthly on top of your gym membership; including our Signature programs like HIIT X Power, HIIT X Strength, HIIT X Rush, Boom, X Blast, and Burn.
*Programmes may vary depending on the club and the number of classes is based on a Platinum Passport Plan.
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Gold</h5>
                                                <p class="card-text">
                                                    Unlimited HIIT Classes
                                                    <br />
                                                    + PHP 660.00/mth
                                                </p>

                                                <p class="card-text">
                                                    Feel the HIIT with over 1,400 training classes monthly on top of your gym membership; including our Signature programs like HIIT X Power, HIIT X Strength, HIIT X Rush, Boom, X Blast, and Burn.
*Programmes may vary depending on the club and the number of classes is based on a Platinum Passport Plan.
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Diamond</h5>
                                                <p class="card-text">
                                                    Unlimited HIIT Classes
                                                    <br />
                                                    + PHP 660.00/mth
                                                </p>

                                                <p class="card-text">
                                                    Feel the HIIT with over 1,400 training classes monthly on top of your gym membership; including our Signature programs like HIIT X Power, HIIT X Strength, HIIT X Rush, Boom, X Blast, and Burn.
*Programmes may vary depending on the club and the number of classes is based on a Platinum Passport Plan.
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-14">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Your Plan Details</h5>
                                                <label for="DropPackage" class="col-sm-2 col-form-label">Package</label>
                                                <div class="col-sm-4">
                                                    <asp:DropDownList ID="DropPackage" runat="server" class="dropdown-item d-flex align-items-center form-select" OnSelectedIndexChanged ="DropPackage_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem>Choose a package...</asp:ListItem>
                                                        <asp:ListItem Value ="Bronze">Bronze</asp:ListItem>
                                                        <asp:ListItem Value ="Silver">Silver</asp:ListItem>
                                                        <asp:ListItem Value ="Gold">Gold</asp:ListItem>
                                                        <asp:ListItem Value ="Diamond">Diamond</asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                                <br />

                                                <h5 class="card-title">Total Payment: ₱<asp:Label id="lbl_Payment" Text="0.00" runat="server" CssClass="card-title"/>
                                              </h5>
                                                
                                                 <asp:Button runat="server" Text="Next" ID="Next1" CssClass="btn btn-secondary" Onclick="Next1_Click" />
                                            </div>
                                        </div>
                                    </div>



                                </div>


                            </div>
                        </div>
                    </div>
                </div>


                <div class="row" runat ="server" id ="divCustomerInformation"> <!--Step 2 - Customer Info-->
                    <div class="col-lg-14">
                        <!--  FORM  -->

                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Customer Information</h5>

                                <!-- General Form Elements -->
                                <div>
                                    <div class="row mb-3">
                                        <label for="TextFirstname, TextMiddlename, TextLastname" class="col-sm-2 col-form-label">Name</label>
                                        <div class="col-md-4">

                                            <asp:TextBox runat="server" ID="TextFirstname" CssClass="form-control" placeholder="First Name" />

                                        </div>
                                        <div class="col-md-2">
                                            <asp:TextBox runat="server" ID="TextMiddlename" CssClass="form-control" placeholder="Middle Name" />
                                        </div>
                                        <div class="col-md-4">
                                            <asp:TextBox runat="server" ID="TextLastname" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="TextAddress" class="col-sm-2 col-form-label">Address</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox runat="server" ID="TextAddress" CssClass="form-control" placeholder="Complete Address"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="InputDate" class="col-sm-2 col-form-label">Birth Date</label>

                                        <div class="col-sm-4">
                                            <!-- calendar-->

                                            <asp:TextBox runat="server" ID="TextBirthdate" CssClass="form-control" placeholder="mm/dd/yyyy">
                                            </asp:TextBox>
                                        </div>

                                        <div class="col-sm-1">
                                            <asp:ImageButton ID="ImageBtnBirthdate" runat="server" OnClick="ImageBtnBirthdate_Click" Height="35px" ImageUrl="~/assets/img/calendar1600.png" Width="35px" />
                                            <asp:Calendar ID="CalendarBirthdate" runat="server" OnSelectionChanged="CalendarBirthdate_SelectionChanged"></asp:Calendar>
                                        </div>

                                        <label for="SelectSex" class="col-sm-1 col-form-label">Sex</label>

                                        <div class="col-sm-3 col-form-label">
                                            <asp:RadioButton ID="RadioButtonMale" runat="server" GroupName="RadioBtnSex" Text="Male" OnCheckedChanged="RadioButtonMale_CheckedChanged" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:RadioButton ID="RadioButtonFemale" runat="server" GroupName="RadioBtnSex" Text="Female" OnCheckedChanged="RadioButtonFemale_CheckedChanged" />
                                        </div>

                                    </div>
                                </div>


                                <div class="row mb-3">

                                    <label for="TextEmail" class="col-sm-2 col-form-label">Email Address</label>

                                    <div class="col-sm-4">
                                        <asp:TextBox runat="server" ID="TextEmail" CssClass="form-control"></asp:TextBox>
                                    </div>

                                    <label for="TextContact" class="col-sm-2 col-form-label">Contact Number</label>

                                    <div class="col-md-4">
                                        <asp:TextBox runat="server" ID="TextContact" CssClass="form-control"></asp:TextBox>
                                    </div>

                                </div>

                                <div class="row mb-3">

                                  


                                </div>





                                <div class="text-center">
                                     <asp:Button runat="server" Text="Back" ID="Back" CssClass="btn btn-primary" OnClick ="Back_Click" />
                                    <asp:Button runat="server" Text="Next" ID="Next2" CssClass="btn btn-primary" OnClick="Next2_Click" />
                                    <asp:Button runat="server" Text="Reset" ID="BtnReset" CssClass="btn btn-secondary" OnClick="BtnReset_Click" />                                    
                                </div>

                            </div>
                            <!-- End General Form Elements -->


                        </div>
                    </div>
                </div>

                
                <div class="row" runat="server" id="divCustomerStatistics"> <!--Step 3 - Customer Stats-->
                    <div class="col-lg-14">
                        <!--  FORM  -->

                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Customer Statistics</h5>

                                <!-- General Form Elements -->

                                        <!-- Floating Labels Form -->
                                        <div class="row g-3">

                                            <div class="col-md-12">
                                                <div class="form-floating">
                                                    <asp:TextBox runat="server" ID="TextDescription" CssClass="form-control" placeholder="Description" />
                                                    <label for="TextDescription">Description</label>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-floating">
                                                    <asp:TextBox runat="server" ID="TextHeight" CssClass="form-control" placeholder="Height" />
                                                    <label for="TextHeight">Current Height</label>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-floating">
                                                    <asp:TextBox runat="server" ID="TextWeight" CssClass="form-control" placeholder="Weight" />
                                                    <label for="TextWeight">Current Weight</label>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-floating">
                                                    <asp:TextBox runat="server" ID="TextChest" CssClass="form-control" placeholder="Chest" />
                                                    <label for="TextChest">Current Chest Size</label>
                                                </div>
                                            </div>

                                                                                        <div class="col-md-3">
                                                <div class="form-floating">
                                                    <asp:TextBox runat="server" ID="TextShoulder" CssClass="form-control" placeholder="Shoulder" />
                                                    <label for="TextArm">Current Shoulder Size</label>
                                                </div>
                                            </div>


                                            <div class="col-md-3">
                                                <div class="form-floating">
                                                    <asp:TextBox runat="server" ID="TextArm" CssClass="form-control" placeholder="Arm" />
                                                    <label for="TextArm">Current Arm Size</label>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-floating">
                                                    <asp:TextBox runat="server" ID="TextWaist" CssClass="form-control" placeholder="Waist" />
                                                    <label for="TextWaist">Current Waist Size</label>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-floating">
                                                    <asp:TextBox runat="server" ID="TextHip" CssClass="form-control" placeholder="TextHip" />
                                                    <label for="TextHip">Current Hip Size</label>
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-3">
                                                <div class="form-floating">
                                                    <asp:TextBox runat="server" ID="TextCalf" CssClass="form-control" placeholder="TextCalf" />
                                                    <label for="TextCalf">Current Calf Size</label>
                                                </div>
                                            </div> 


                                        </div>
                                        <!-- End floating Labels Form -->                                   
                                <br />
                                
                                <div class="text-center">
                                    <asp:Button runat="server" Text="Back" ID="Button2" CssClass="btn btn-primary" OnClick="Back3_Click" />
                                    <asp:Button runat="server" Text="Next" ID="Next3" CssClass="btn btn-primary" OnClick="Next3_Click" />

                                    <asp:Button runat="server" Text="Reset" ID="BtnReset3" CssClass="btn btn-secondary" OnClick="BtnReset_Click" />
                                </div>


                            </div>
                            <!-- End General Form Elements -->


                        </div>
                    </div>
                </div>


                <div class="row" runat="server" id="divCustomerWorkoutPlan"> <!--Step 4 - Workout Plan-->
                       <div class="col-lg-14">
                        <div class="card">
                            <div class="card-body">

                                <h5 class="card-title">Work Out Plan</h5>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Work Out 1</h5>
                                                <p class="card-text">
                                                   Unlimited Spam Badge and Emote to Enemy
                                                    <br />
                                                    + PHP 69.420/mth
                                                </p>
                                                      <asp:GridView ID="GridW1" runat="server" CssClass="table table-hover table-bordered"></asp:GridView>

                                                  
                                                <p class="card-text">
                                                    <asp:GridView ID="GridView" runat="server" CssClass="table table-hover table-bordered"></asp:GridView>

                                                </p>
                                            </div>
                                        </div>
                                    </div>
</div>
                              
                                    <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Work Out 2</h5>
                                                <p class="card-text">
                                                    Enhances Strength and Upper Body
                                                    <br />
                                                    + PHP 420.69/mth
                                                </p>

                                                <p class="card-text">
                                                   <asp:GridView ID="GridW2" runat="server" CssClass="table table-hover table-bordered"></asp:GridView>

                                                </p>
                                            </div>
                                        </div>
                                    </div>


</div>                                    
                                    <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">WorkOut3</h5>
                                                <p class="card-text">
                                                    Enhances Flexibility + Spider Sense
                                                    <br />
                                                    + PHP 65.00/mth
                                                </p>

                                                <p class="card-text">
                                                    <asp:GridView ID="GridW3" runat="server" CssClass="table table-hover table-bordered"></asp:GridView>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
</div>
                                        <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Work Out 4 </h5>
                                                <p class="card-text">
                                                   Enhances Full Body + %10 Holy Damage
                                                    <br />
                                                    + PHP 660.00/mth
                                                </p>

                                                <p class="card-text">
                                                   <asp:GridView ID="GridW4" runat="server" CssClass="table table-hover table-bordered"></asp:GridView>

                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                   <div class="row">
                                    <div class="col-lg-14">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Your Plan Details</h5>
                                                <label for="DropWorkOut" class="col-sm-2 col-form-label">Work Out:</label>
                                                <div class="col-sm-4">
                                                    <asp:DropDownList ID="DropWorkOut" runat="server" class="dropdown-item d-flex align-items-center form-select"  OnSelectedIndexChanged="DropWorkOut_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem>Choose a workout...</asp:ListItem>
                                                        <asp:ListItem Value ="Work Out1">Work Out 1</asp:ListItem>
                                                        <asp:ListItem Value ="Work Out2">Work Out 2</asp:ListItem>
                                                        <asp:ListItem Value ="Work Out3">Work Out 3</asp:ListItem>
                                                        <asp:ListItem Value ="Work Out4">Work Out 4</asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                                <br />
    <h5 class="card-title">Total Payment: ₱<asp:Label id="lbl_totalpayment" Text="0.00" runat="server" CssClass="card-title"/>
       
                                              </h5>
                                                  <div class="text-center">
                                                      <asp:Button runat="server" Text="Back" ID="Back4" CssClass="btn btn-primary" OnClick ="Back4_Click" />
                                                 <asp:Button runat="server" Text="Next" ID="Next4" CssClass="btn btn-secondary" OnClick ="Next4_Click" />
                                     </div>
                                            </div>
                                        </div>
                                    </div>



                                </div>
                                                
                                                 
                                            </div>
                                        </div>
                                    </div>



                                </div>


            


                <div class="row" runat="server" id="divCustomerPayment"> <!--Step 4 - Payment-->
                    <div class="col-lg-14">
                        <!--  FORM  -->

                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Customer Information</h5>

                                <!-- General Form Elements -->
                              


                             
                                <div class="row mb-3">


                                    <div class="row mb-3">

                                        <h5 class="card-title">Total Payment: ₱<asp:Label id="lbl_finalPayment" Text="0.00" runat="server" CssClass="card-title"/>
                                            <asp:TextBox runat="server" ID="TextPayment" CssClass="form-control" placeholder="Enter Amount Payment" />
                                            <asp:Button runat="server" Text="Back" ID="Back5" CssClass="btn btn-primary" OnClick ="Back5_Click" />
                                              <asp:Button runat="server" Text="Submit" ID="BtnSubmit" CssClass="btn btn-primary" OnClick="BtnSubmit_Click" />
                                              <asp:Button runat="server" Text="Reset" ID="Button1" CssClass="btn btn-secondary" OnClick="BtnReset_Click" />
                                        </div>
                                    </div>


                                </div>



                              
                             

                            </div>
                            <!-- End General Form Elements -->
                        </div>
                    </div>
                </div>



            </section>

        </main>
        <!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span></span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </footer>
        <!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>
        <script src="assets/vendor/quill/quill.min.js"></script>
        <script src="assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="assets/vendor/chart.js/chart.min.js"></script>
        <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="assets/vendor/echarts/echarts.min.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

    </form>
</body>

</html>
