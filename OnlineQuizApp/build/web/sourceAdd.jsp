<%-- 
    Document   : questionAdd
    Created on : Jul 22, 2021, 9:53:36 AM
    Author     : User-PC
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.onlinequizapp.daos.SourceDAO"%>
<%@page import="java.util.List"%>
<%@page import="org.onlinequizapp.dtos.SourceDTO"%>
<%@page import="org.onlinequizapp.dtos.LectureDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin - Dashboard</title>

        <!-- Custom fonts for this template-->
        <link href="Dashboard/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="Dashboard/css/sb-admin-2.min.css" rel="stylesheet">




    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <c:if test="${sessionScope.LOGIN_USER.role =='AD'}">
                <!-- Sidebar -->
                <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                    <div class="sidebar-brand-icon">
                        <i class="fas fa-crown"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">Admin</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item">
                    <a class="nav-link" href="dashboardadmin.jsp">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Learn
                </div>

                <!-- Nav Item - Courses Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCourses"
                       aria-expanded="false" aria-controls="collapseCourses">
                        <i class="fas fa-fw fa-book"></i>
                        <span>Courses</span>
                    </a>
                    <div id="collapseCourses" class="collapse" aria-labelledby="headingCourses" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Courses:</h6>
                            <a class="collapse-item" href="all-course.jsp">All Courses</a>
                            <a class="collapse-item" href="course.jsp">My Courses</a>
                            <a class="collapse-item" href="lecture.jsp">My Lectures</a>
                            <a class="collapse-item" href="source.jsp">My Resources</a>
                            <a class="collapse-item" href="class.jsp">My Classes</a>
                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">Create:</h6>
                            <a class="collapse-item" href="courseAdd.jsp">Create Course</a>
                            <a class="collapse-item" href="LectureCreateController?check=">Create Lecture</a>
                            <a class="collapse-item" href="SourceCreateController?function=">Create Resource</a>
                            <a class="collapse-item" href="classAdd.jsp">Create Class</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Quizzes Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseQuizzes"
                       aria-expanded="false" aria-controls="collapseQuizzes">
                        <i class="fas fa-fw fa-edit"></i>
                        <span>Quizzes</span>
                    </a>
                    <div id="collapseQuizzes" class="collapse" aria-labelledby="headingQuizzes"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quizzes:</h6>
                            <a class="collapse-item" href="question.jsp">All Question</a>
                            <a class="collapse-item" href="all-quiz.jsp">All Quizzes</a>
                            <a class="collapse-item" href="quiz.jsp">My Quizzes</a>

                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">Create:</h6>
                            <a class="collapse-item" href="quizAdd.jsp">Create Quiz</a>
                            <a class="collapse-item" href="questionAdd.jsp">Create Question</a>
                            <a class="collapse-item" href="QuizCreateController?check=quiz2">Add Question to Quiz</a>
                        </div>
                    </div>
                </li>


                <!-- Nav Item - Marks -->
                <li class="nav-item">
                    <a class="nav-link" href="score.jsp">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>Marks</span></a>
                </li>

                <!-- Nav Item - Category Collapse Menu -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCategories"
                       aria-expanded="false" aria-controls="collapseCategories">
                        <i class="fas fa-fw fa-list"></i>
                        <span>Categories</span>
                    </a>
                    <div id="collapseCategories" class="collapse" aria-labelledby="headingQuizzes"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Categories:</h6>
                            <a class="collapse-item" href="all-category.jsp">All Categories</a>
                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">Create:</h6>
                            <a class="collapse-item" href="categoryAdd.jsp">Create Quiz Category</a>
                            <a class="collapse-item" href="categoryBlogAdd.jsp">Create Blog Category</a>
                        </div>
                    </div>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Community
                </div>


                <!-- Nav Item - Blogs Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBlogs"
                       aria-expanded="false" aria-controls="collapseBlogs">
                        <i class="fas fa-fw fa-users"></i>
                        <span>Blogs</span>
                    </a>
                    <div id="collapseBlogs" class="collapse" aria-labelledby="headingBlogs"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Blogs:</h6>
                            <a class="collapse-item" href="all-blog.html">All Blogs</a>
                            <a class="collapse-item" href="blog.jsp">My Blogs</a>
                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">Create:</h6>
                            <a class="collapse-item" href="create-blog.jsp">Create Blog</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Charts -->
                <li class="nav-item">
                    <a class="nav-link" href="ranking.jsp">
                        <i class="fas fa-fw fa-trophy"></i>
                        <span>Ranking</span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="search.jsp">
                        <i class="fas fa-fw fa-table"></i>
                        <span>User Management</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

            </ul>
                <!-- End of Sidebar -->
            </c:if>
            <c:if test="${sessionScope.LOGIN_USER.role =='T' || sessionScope.LOGIN_USER.role =='T1'}">
                <!-- Sidebar -->
                <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

<<<<<<< HEAD
                    <!-- Sidebar - Brand -->
                    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                        <div class="sidebar-brand-icon">
                            <i class="fas fa-chalkboard-teacher"></i>
                        </div>
                        <div class="sidebar-brand-text mx-3">Teacher</div>
                    </a>

                    <!-- Divider -->
                    <hr class="sidebar-divider my-0">

                    <!-- Nav Item - Dashboard -->
                    <li class="nav-item">
                        <a class="nav-link" href="dashboardteacher.jsp">
                            <i class="fas fa-fw fa-tachometer-alt"></i>
                            <span>Dashboard</span></a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider">

                    <!-- Heading -->
                    <div class="sidebar-heading">
                        Learn
                    </div>
<<<<<<< HEAD
                </div>
            </li>

            <!-- Nav Item - Quizzes Collapse Menu -->
            <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseQuizzes"
                       aria-expanded="false" aria-controls="collapseQuizzes">
                        <i class="fas fa-fw fa-edit"></i>
                        <span>Quizzes</span>
                    </a>
                    <div id="collapseQuizzes" class="collapse" aria-labelledby="headingQuizzes"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quizzes:</h6>
                            <a class="collapse-item" href="question.jsp">All Question</a>
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
                            <a class="collapse-item" href="all-quiz.jsp">All Quizzes</a>
                            <a class="collapse-item" href="quiz.jsp">My Quizzes</a>

                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">Create:</h6>
                            <a class="collapse-item" href="quizAdd.jsp">Create Quiz</a>
                            <a class="collapse-item" href="questionAdd.jsp">Create Question</a>
                            <a class="collapse-item" href="QuizCreateController?check=quiz2">Add Question to Quiz</a>
=======
=======
>>>>>>> parent of 2a7a80d (Fix Teacher UI)
=======
>>>>>>> parent of 2a7a80d (Fix Teacher UI)
                            <a class="collapse-item" href="all-quiz.html">All Quizzes</a>
                            <a class="collapse-item" href="quiz.jsp">My Quizzes</a>
                            
                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">Create:</h6>
                            <a class="collapse-item" href="quizAdd.html">Create Quiz</a>
                            <a class="collapse-item" href="questionAdd.jsp">Create Question</a>
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 2a7a80d (Fix Teacher UI)
=======
>>>>>>> parent of 2a7a80d (Fix Teacher UI)
=======
>>>>>>> parent of 2a7a80d (Fix Teacher UI)
=======

                    <!-- Nav Item - Courses Collapse Menu -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCourses"
                           aria-expanded="true" aria-controls="collapseCourses">
                            <i class="fas fa-fw fa-book"></i>
                            <span>Courses</span>
                        </a>
                        <div id="collapseCourses" class="collapse" aria-labelledby="headingCourses" data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Courses:</h6>
                                <a class="collapse-item" href="all-course.html">All Courses</a>
                                <a class="collapse-item" href="course.jsp">My Courses</a>
                                <a class="collapse-item" href="class.jsp">My Classes</a>
                                <div class="collapse-divider"></div>
                                <h6 class="collapse-header">Create:</h6>
                                <a class="collapse-item" href="courseAdd.jsp">Create Course</a>
                                <a class="collapse-item" href="classAdd.jsp">Create Class</a>
                            </div>
>>>>>>> parent of b80fe2f (update 1 đống jsp :>)
                        </div>
                    </li>

                    <!-- Nav Item - Quizzes Collapse Menu -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseQuizzes"
                           aria-expanded="true" aria-controls="collapseQuizzes">
                            <i class="fas fa-fw fa-edit"></i>
                            <span>Quizzes</span>
                        </a>
                        <div id="collapseQuizzes" class="collapse" aria-labelledby="headingQuizzes"
                             data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Quizzes:</h6>
                                <a class="collapse-item" href="utilities-color.html">All Quizzes</a>
                                <a class="collapse-item" href="utilities-border.html">My Quizzes</a>
                                <div class="collapse-divider"></div>
                                <h6 class="collapse-header">Create:</h6>
                                <a class="collapse-item" href="404.html">Create Quiz</a>
                            </div>
                        </div>
                    </li>

                    <!-- Nav Item - Students -->
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="fas fa-fw fa-user-graduate"></i>
                            <span>Students</span></a>
                    </li>

                    <!-- Nav Item - Marks -->
                    <li class="nav-item">
                        <a class="nav-link" href="charts.html">
                            <i class="fas fa-fw fa-chart-area"></i>
                            <span>Marks</span></a>
                    </li>
=======
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon">
                    <i class="fas fa-chalkboard-teacher"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Teacher</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="dashboardteacher.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">
>>>>>>> parent of 2a7a80d (Fix Teacher UI)

            <!-- Heading -->
            <div class="sidebar-heading">
                Learn
            </div>

            <!-- Nav Item - Courses Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCourses"
                    aria-expanded="true" aria-controls="collapseCourses">
                    <i class="fas fa-fw fa-book"></i>
                    <span>Courses</span>
                </a>
                <div id="collapseCourses" class="collapse" aria-labelledby="headingCourses" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Courses:</h6>
                        <a class="collapse-item" href="all-course.html">All Courses</a>
                        <a class="collapse-item" href="course.jsp">My Courses</a>
                        <a class="collapse-item" href="class.jsp">My Classes</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Create:</h6>
                        <a class="collapse-item" href="courseAdd.jsp">Create Course</a>
                        <a class="collapse-item" href="classAdd.jsp">Create Class</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Quizzes Collapse Menu -->
            <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseQuizzes"
                       aria-expanded="false" aria-controls="collapseQuizzes">
                        <i class="fas fa-fw fa-edit"></i>
                        <span>Quizzes</span>
                    </a>
                    <div id="collapseQuizzes" class="collapse" aria-labelledby="headingQuizzes"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quizzes:</h6>
                            <a class="collapse-item" href="question.jsp">All Question</a>
                            <a class="collapse-item" href="all-quiz.html">All Quizzes</a>
                            <a class="collapse-item" href="quiz.jsp">My Quizzes</a>
                            
                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">Create:</h6>
                            <a class="collapse-item" href="quizAdd.html">Create Quiz</a>
                            <a class="collapse-item" href="questionAdd.jsp">Create Question</a>
                        </div>
                    </div>
<<<<<<< HEAD

                    <!-- Nav Item - Blogs Collapse Menu -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBlogs" aria-expanded="false"
                           aria-controls="collapseBlogs">
                            <i class="fas fa-fw fa-users"></i>
                            <span>Blogs</span>
                        </a>
                        <div id="collapseBlogs" class="collapse" aria-labelledby="headingBlogs"
                             data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Blogs:</h6>
                                <a class="collapse-item" href="#">All Blogs</a>
                                <a class="collapse-item" href="#">My Blogs</a>
                                <div class="collapse-divider"></div>
                                <h6 class="collapse-header">Create:</h6>
                                <a class="collapse-item" href="404.html">Create Blog</a>
                            </div>
=======
                </li>

            <!-- Nav Item - Students -->
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <i class="fas fa-fw fa-user-graduate"></i>
                    <span>Students</span></a>
            </li>

            <!-- Nav Item - Marks -->
                <li class="nav-item">
                    <a class="nav-link" href="score.jsp">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>Marks</span></a>
                </li>
            
            <!-- Nav Item - Category Collapse Menu -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCategories"
                       aria-expanded="false" aria-controls="collapseCategories">
                        <i class="fas fa-fw fa-list"></i>
                        <span>Categories</span>
                    </a>
                    <div id="collapseCategories" class="collapse" aria-labelledby="headingQuizzes"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Categories:</h6>
                            <a class="collapse-item" href="all-category.jsp">All Categories</a>
                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">Create:</h6>
                            <a class="collapse-item" href="categoryAdd.jsp">Create Quiz Category</a>
>>>>>>> parent of 2a7a80d (Fix Teacher UI)
                        </div>
                    </div>
                </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Community
            </div>

            <!-- Nav Item - Blogs Collapse Menu -->
            <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBlogs"
                       aria-expanded="false" aria-controls="collapseBlogs">
                        <i class="fas fa-fw fa-users"></i>
                        <span>Blogs</span>
                    </a>
                    <div id="collapseBlogs" class="collapse" aria-labelledby="headingBlogs"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Blogs:</h6>
                            <a class="collapse-item" href="all-blog.html">All Blogs</a>
                            <a class="collapse-item" href="blog.jsp">My Blogs</a>
                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">Create:</h6>
                            <a class="collapse-item" href="create-blog.jsp">Create Blog</a>
                        </div>
                    </div>
                </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <i class="fas fa-fw fa-trophy"></i>
                    <span>Ranking</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li>
            

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Others
            </div>

<<<<<<< HEAD
<<<<<<< HEAD
        </ul>
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
                <!-- End of Sidebar -->
=======
                <!-- End of Sidebar -->  
>>>>>>> parent of 2a7a80d (Fix Teacher UI)
=======
                <!-- End of Sidebar -->  
>>>>>>> parent of 2a7a80d (Fix Teacher UI)
=======
=======
                    <!-- Nav Item - Billing -->
                    <li class="nav-item">
                        <a class="nav-link" href="billing.html">
                            <i class="fas fa-fw fa-receipt"></i>
                            <span>Billing</span></a>
                    </li>
=======
            <!-- Nav Item - Billing -->
            <li class="nav-item">
                <a class="nav-link" href="billing.html">
                    <i class="fas fa-fw fa-receipt"></i>
                    <span>Billing</span></a>
            </li>
>>>>>>> parent of 2a7a80d (Fix Teacher UI)

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

<<<<<<< HEAD
                </ul>
>>>>>>> parent of b80fe2f (update 1 đống jsp :>)
                <!-- End of Sidebar -->  
>>>>>>> parent of 2a7a80d (Fix Teacher UI)
=======
        </ul>
                <!-- End of Sidebar -->  
>>>>>>> parent of 2a7a80d (Fix Teacher UI)
            </c:if>



            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Search -->
                        <form
                            class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                       aria-label="Search" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">
                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">${sessionScope.LOGIN_USER.fullname}</span>
                                    <img class="img-profile rounded-circle"
                                         src="Dashboard/img/undraw_profile.svg">
                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                     aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Profile
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Settings
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Activity Log
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">


                        <div class="container">
                            <!-- Page Heading -->
                            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                <h1 class="h3 mb-0 text-gray-800">Source Add</h1>
                            </div>
                            <div style="color: green" class="h5 mt-3">
                                <p class="mb-4">${requestScope.CREATE_SUCCESS}</p>
                            </div>
                            <div style="color: red" class="h5 mt-3" >
                                <p class="mb-4">${requestScope.CREATE_ERROR}</p>
                            </div>
                            <form action="SourceCreateController" method="POST">
                                <div>Lecture
                                    <select name="lectureID" class="form-control" aria-label="Default select example">
                                        <option selected>Choose Lecture</option>
                                        <c:if test="${requestScope.LIST_LECTURE != null && not empty requestScope.LIST_LECTURE}">
                                            <c:forEach var="course" varStatus="counter" items="${requestScope.LIST_LECTURE}">
                                                <c:if test="${course.status==1}">
                                                    <option value="${course.lectureID}">${counter.count} - ${course.lectureName}</option>
                                                </c:if>
                                            </c:forEach>
                                        </c:if>
                                    </select>
                                </div><br>
                                <div class="mb-3">
                                    <label for="fileDoc" class="form-label">File Doc</label>
                                    <input type="text" name="fileDoc" class="form-control" id="Answer1">
                                </div>
                                <div class="mb-3">
                                    <label for="filePic" class="form-label">File Pic</label>
                                    <input type="text" name="filePic" class="form-control" id="Answer2">
                                </div>
                                <div class="mb-3">
                                    <label for="fileVid" class="form-label">File Vid</label>
                                    <input type="text" name="fileVid" class="form-control" id="Answer3">
                                </div>
                                <div class="mb-3">
                                    <label for="reference" class="form-label">Reference </label>
                                    <input type="text" name="reference" class="form-control" id="Answer4">
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" name="status" class="form-check-input" id="status">
                                    <label class="form-check-label" for="status">Active</label>
                                </div>
                                <input type="hidden" name="function" value="source" class="form-check-input" id="status">
                                <button type="submit" class="btn btn-primary">Create</button>
                                <a href="dashboardadmin.jsp" class="btn btn-danger">Cancel</a>
                            </form>
                        </div><br>


                        <c:if test="${requestScope.LIST_LECTURE != null && not empty requestScope.LIST_LECTURE}">                       
                            <table class="table table-bordered table-hover" width="100%" cellspacing="0">
                                <h4>Lecture Info</h4>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Lecture ID</th>
                                        <th>Lecture Name</th>
                                        <th>Description</th>
                                        <th>Course ID</th>
                                        <th>Class ID</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <c:forEach var="category" varStatus="counter" items="${requestScope.LIST_LECTURE}">
                                        <tr>
                                            <td>${counter.count}</td>
                                            <td>${category.lectureID}</td>
                                            <td>${category.lectureName}</td>
                                            <td>${category.description}</td>
                                            <td>${category.courseID}</td>
                                            <td>${category.classID}</td>
                                            <td>${category.status}</td>

                                        </tr>
                                    </tbody>
                                </c:forEach>         
                            </table>
                        </c:if><br>
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Online Quiz App 2021</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="LogoutController">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="Dashboard/vendor/jquery/jquery.min.js"></script>
        <script src="Dashboard/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="Dashboard/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="Dashboard/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="Dashboard/vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="Dashboard/js/demo/chart-area-demo.js"></script>
        <script src="Dashboard/js/demo/chart-pie-demo.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </body>
</html>