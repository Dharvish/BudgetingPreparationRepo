



<%@page import="java.util.List"%>
<%@page import="org.ABC.Entity.Budget"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="org.ABC.Controller.BudgetController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html lang="en" xmlns:th="http://www.thymeleaf.org"> <!--<![endif]-->
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Bingo One page parallax responsive HTML Template ">
  
  <meta name="author" content="Themefisher.com">

  <title>Budget Owner</title>

<!-- Mobile Specific Meta
  ================================================== -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png" />
 

  <!-- CSS
  ================================================== -->
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="plugins/themefisher-font.v-2/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="plugins/bootstrap/dist/css/bootstrap.min.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="plugins/slick-carousel/slick/slick-theme.css">
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="css/style.css">

  <!-- JavaScript --> 
 <script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/5/css/bootstrap.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>      
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />  
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
 
<!-- Include Required Prerequisites -->

<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<!-- Include Date Range Picker -->


<!--Include Date Picker-->
  <style>  
 @import url('https://fonts.googleapis.com/css?family=Montserrat:400,500');  


body{
  font-family: Arial, sans-serif;
}
.table{
  width: 100%;
  thead{
    th{
      padding: 10px 10px;
      background: #00adee;
      font-size: 15px;
      text-transform: uppercase;
      vertical-align: top;
      color: #1D4A5A;
      font-weight: normal;
      text-align: left;
    }
  }
  tbody{
    tr{
      td{
        padding: 10px;
        background: #f2f2f2;
        font-size: 14px;
      }
    }
  }
}

.add, .edit, .save, .delete{
  outline: none;
  background: none;
  border: none;
}

.edit, .save, .delete{
  padding: 5px 10px;
  cursor: pointer;
}


.add{
  float: right;
  background: transparent;
  border: 1px solid #ffffff;
  color: #ffffff;
  font-size: 13px;
  padding: 0;
  padding: 3px 5px;
  cursor: pointer;
  
  &:hover{
    background: #ffffff;
    color: #00adee;
  }
}

.save{
  display: block;
  background: #32AD60;
  color: black;
  
  &:hover{
    background: darken(#32AD60, 10%);
  }
}

.edit{
  background: #2199e8;
  color: navy;
  
  &:hover{
    background: darken(#2199e8, 10%);
  }
}

.delete{
  background: #EC5840;
  color: #ffffff;
  
   &:hover{
    background: darken(#EC5840, 10%);
  }
}
	
</style>

<body id="body">

 <!--
  Start Preloader
  ==================================== -->
  <div id="preloader">
    <div class="preloader">
      <div class="sk-circle1 sk-child"></div>
      <div class="sk-circle2 sk-child"></div>
      <div class="sk-circle3 sk-child"></div>
      <div class="sk-circle4 sk-child"></div>
      <div class="sk-circle5 sk-child"></div>
      <div class="sk-circle6 sk-child"></div>
      <div class="sk-circle7 sk-child"></div>
      <div class="sk-circle8 sk-child"></div>
      <div class="sk-circle9 sk-child"></div>
      <div class="sk-circle10 sk-child"></div>
      <div class="sk-circle11 sk-child"></div>
      <div class="sk-circle12 sk-child"></div>
    </div>
  </div> 
  <!--
  End Preloader
  ==================================== -->
  


<!--
Fixed Navigation
==================================== -->

<section class="header  navigation">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-lg">
                    <a class="navbar-brand" href="index.html">
                        <img src="images/logo.png" alt="logo">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="tf-ion-android-menu"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                            </li>
                        
                            <li class="nav-item">
                                <a class="nav-link" href="faq.html">F.A.Q</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.html">Contact</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="login.html">Sign In</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="signup.html">Sign Up</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Pages
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="team.html">Team Page</a>
                                    <a class="dropdown-item" href="404.html">404 Page</a>
                                    <a class="dropdown-item" href="blog.html">Blog Page</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                
            </div>
        </div>
    </div>
</section>

<!-- Start Pricing section
		=========================================== -->
<section class="pricing-table section" id="pricing">
    <div class="container">
        <div class="row">
            <div class="col ">
                <div class="title text-center">
                    <h4>ABC Cosmetics</h4>
                    <h2>Create Budget</h2>
                    <span class="border"></span>
                    <p>The brainstorming and planning sessions output is recorded in the
                        system as part of the Budget Preparation in the system.</p>
                </div>
            </div>
        </div>
       
        <div class="row">
            <div class="col">
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                        <div class="row" id="budgetmenu">
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="pricing-item">
                                    <h3>Budget Owner</h3>
                                    <div class="pricing-body">
                                        <div class="price">
                                            <span>Create new Budget</span>
                                            <span class="sup"></span>
                                        </div>
                                        <div class="progress" data-percent="75%">
                                            <div class="progress-bar"></div>
                                        </div>
                                       
                                        <a class="btn btn-main" href="#" id="btn">Go</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="pricing-item">
                                    <h3>Budget Owner</h3>
                                    <div class="pricing-body">
                                        <div class="price">
                                            <span>View Budget</span>
                                            <span class="sup"></span>
                                        </div>
                                        <div class="progress" data-percent="75%">
                                            <div class="progress-bar"></div>
                                        </div>
                                       
                                        <a class="btn btn-main" href="budgetpreparation#budgetview" id="btn2">Go</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    <div style=" display: none;" class="budgetShow" id="budgetClass">
    <% System.out.println( "Evaluating date now" );
java.util.Date date = new java.util.Date();
//enctype="application/x-www-form-urlencoded"
   %> 

      <form action="/budgetpreparation" method="post" id="form1" name="budgetform"> 
            <div class="budgetprepare" >
                    <% System.out.println( "It was a success" );          
   %> 
                <h3 align="center">ABC Cosmetics</h3>
                <h2 align="center">User ID</h2>
                <div class="badge bg-primary text-wrap" style="width: 15%; margin-left:auto; margin-right: auto; display:block; ">
                   <h2> Budget Owner</h2>
                  </div>
                  <br>
                <div class="container">
                    <div class="form-group">
                        <label for="demo_overview_minimal_multiselect" style=" margin-left: 40.5%; margin-right: -40.5%; display: block;align-content: center;">Select Budget Start Period</label>
                   
                        <select id="demo_overview_minimal_multiselect" name="budgetstartperiod"  class="form-control" style=" margin-left:auto; margin-right: auto; width:50%; align-content: center;">
                        <!-- options -->
                        <option selected>---Select---</option>
                        <option>31-03-2020</option>
                        <option>31-03-2021</option>
                        </select>
                        </div>
                        
                    <div class="form-group">
                            <label for="demo_overview_minimal_multiselect" style=" margin-left: 40.5%; margin-right: -40.5%; display: block;align-content: center;">Select Budget End Period</label>
                            <select id="demo_overview_minimal_multiselect" name="budgetendperiod" class="form-control" style=" margin-left:auto; margin-right: auto; width:50%; align-content: center;">
                            <!-- options -->
                            <option selected>---Select---</option>
                            <option>31-03-2021</option>
                            <option>31-03-2022</option>
                            </select>
                    </div>
                    </div>
            </div>
         <div align="center" id="budgettype" >
            <h2 >Parent Classification :</h2>
            <select class="form-control"  id="selecttype" name="parentclassification" aria-label="Default select example"  style="width:50%; margin-left:auto; margin-right: auto;">
                <option selected>---Select---</option>
                <option value="Income" >Income</option>
                <option  value="Expenses">Expenses</option>
              </select>
              <br>
        </div>   
        <br>
        <div align="center">
        <div align="center" class="Income budget">
            <h2 >Sub Classification :</h2>
            <select class="form-control budgetchange"  id="incometype" name="subclassification" aria-label="Default select example" style="width:50%; margin-left:auto; margin-right: auto;">
                <option selected >---Select---</option>
                <option  value="Sales">Sales</option>
                <option  value="Interest">Interest</option>
              </select>
         </div>
      
            </div> 
   <div align="center" class="Expenses budget">
            <h2 >Sub Classification :</h2>
            <select class="form-control budgetchange" id="expensetype" name="subclassification" aria-label="Default select example" style="width:50%; margin-left:auto; margin-right: auto;">
                <option selected>---Select---</option>
                <option value="Tax">Tax</option>
                <option value="Insurance">Insurance</option>
                <option value="Salary">Salary</option>
              </select>
              </div>
                    
        
             <br>
             <br>

            <div class="Sales income" >
                <div class="mb-3 row form-group"  >
                    <label for="staticEmail" class="col-sm-2 col-form-label" >Product Name:</label>
                    <div class="col-sm-10">
                        <input class="form-control form-control-lg budgets" disabled="disabled" id="salesfield1" type="text" name="source" placeholder="enter product name" aria-label=".form-control-lg example">
                    </div>
                  </div>
                  <div class="mb-3 row form-group">
                    <label for="staticEmail" class="col-sm-2 col-form-label">Previous Actual Sales Amount:</label>
                    <div class="col-sm-10">
                        <input class="form-control form-control-lg budgets" disabled="disabled" id="salesfield2" type="text" name="prevactualamt"  placeholder=" enter previous actual sales amount" aria-label=".form-control-lg example">
                    </div>
                  </div>
            

                    <% System.out.println( "It was a success" );
                   %> 
                  <div class="mb-3 row form-group">
                    <label for="staticEmail" class="col-sm-2 col-form-label">Previous Budgeted Sales Amount:</label>
                    <div class="col-sm-10">
                        <input class="form-control form-control-lg budgets" disabled="disabled" id="salesfield3" type="text" name="prevbudgetamt"  placeholder="enter previous budgeted sales amount" aria-label=".form-control-lg example">
                    </div>
                  </div>
                  <div class="row form-group">
                    <label for="staticEmail"  class="col-sm-2 col-form-label">Current Date:</label>
                    <div class='col-sm-3'>
                                  <input data-date-format="dd/mm/yyyy" disabled="disabled" id="salesfield4" id="datepicker" type="date"  name="currentdate" class="form-control budgets">
                            </div>
                         
                        </div>
                        <br>
                        <div class="mb-3 row form-group">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Current Year Budgeted Sales Amount:</label>
                            <div class="col-sm-10">
                                <input class="form-control form-control-lg budgets" disabled="disabled" id="salesfield5" name="curbudgetamt"  type="text" placeholder="enter current year budgeted sales amount" aria-label=".form-control-lg example">
                            </div>
                          </div>
                             <div class="mb-3 row form-group">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Approval:</label>
                            <div class="col-sm-10">
                                <input class="form-control form-control-lg budgets" disabled="disabled" id="salesfield6" name="approval"  type="text" placeholder="enter current year budgeted sales amount" aria-label=".form-control-lg example">
                            </div>
                          </div>
                          <div class="mb-3 row form-group">
                            <div class="col-sm-10">
                              <input type="submit"  value="Save" disabled="disabled" id="salesfield7" class="budgets" />
                              <span class="success" style="display: hidden;">Thank's for submitting the form</span>
                            </div>
                        </div> 
                </div>
               
                <div class="Interest income" >
                    <div class="mb-3 row"  >
                        <label for="staticEmail" class="col-sm-2 col-form-label">Interest Source:</label>
                        <div class="col-sm-10">
                            <input class="form-control form-control-lg budgets" disabled="disabled" id="Interestfield1"  type="text"  name="source" placeholder="enter Interest name" aria-label=".form-control-lg example">
                        </div>
                      </div>
                      <div class="mb-3 row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Previous Actual Interest Amount:</label>
                        <div class="col-sm-10">
                            <input class="form-control form-control-lg budgets" disabled="disabled" id="Interestfield2"  type="text"  name="prevactualamt" placeholder="enter actual budgeted interest amount" aria-label=".form-control-lg example">
                        </div>
                      </div>
                      <div class="mb-3 row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Previous Previous Interest Amount:</label>
                        <div class="col-sm-10">
                            <input class="form-control form-control-lg budgets" disabled="disabled" id="Interestfield3" type="text" name="prevbudgetamt"  placeholder="enter previous actual interest amount" aria-label=".form-control-lg example">
                        </div>
                      </div>
                     
                      <div class="row form-group">
                        <label for="staticEmail"  class="col-sm-2 col-form-label">Current Date:</label>
                        <div class='col-sm-3'>
                                    <input data-date-format="dd/mm/yyyy" disabled="disabled" id="Interestfield4" id="datepicker2" type="date" name="currentdate"  class="form-control budgets">
                                </div>
                    
                            </div>
                            <div class="mb-3 row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Current Year Budgeted Interest Amount:</label>
                                <div class="col-sm-10">
                                    <input class="form-control form-control-lg budgets" disabled="disabled" id="Interestfield5" type="text"  name="curbudgetamt"  placeholder="enter budget amount" aria-label=".form-control-lg example">
                                </div>
                              </div>
                            <br>
                               <div class="mb-3 row form-group">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Approval:</label>
                            <div class="col-sm-10">
                                <input class="form-control form-control-lg budgets" disabled="disabled" id="Interestfield6" name="approval"  type="text" placeholder="enter current year budgeted sales amount" aria-label=".form-control-lg example">
                            </div>
                          </div>
                             <div class="mb-3 row form-group">
                            <div class="col-sm-10">
                            <input type="submit"  value="Save" disabled="disabled" id="Interestfield7" class="budgets" />
                            </div>
                        </div> 
                      </div>
                     
                    <div class="Tax expenses" >
                        <div class="mb-3 row"  >
                            <label for="staticEmail" class="col-sm-2 col-form-label">Tax Source</label>
                            <div class="col-sm-10">
                                <input class="form-control form-control-lg budgets" disabled="disabled" id="taxfield1" type="text" name="source" placeholder="enter Tax name" aria-label=".form-control-lg example">
                            </div>
                          </div>
                          <div class="mb-3 row">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Previous Actual Tax Amount:</label>
                            <div class="col-sm-10">
                                <input class="form-control form-control-lg budgets" disabled="disabled" id="taxfield2" type="text" name="prevactualamt" placeholder=" enter  actual Tax amount" aria-label=".form-control-lg example">
                            </div>
                          </div>
                          <div class="mb-3 row">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Previous Budgeted Tax Amount:</label>
                            <div class="col-sm-10">
                                <input class="form-control form-control-lg budgets" disabled="disabled" id="taxfield3" type="text" name="prevbudgetamt" placeholder="enter previous budgeted sales amount" aria-label=".form-control-lg example">
                            </div>
                          </div>
                          <div class="row form-group">
                            <label for="staticEmail"  class="col-sm-2 col-form-label">Current Date:</label>
                            <div class='col-sm-3'>
                                        <input data-date-format="dd/mm/yyyy" disabled="disabled" id="taxfield4" id="datepicker3"  name="currentdate" class="form-control budgets">
                                    </div>
    
                                </div>
                                <div class="mb-3 row">
                                    <label for="staticEmail" class="col-sm-2 col-form-label">Current Year Budgeted Tax Amount:</label>
                                    <div class="col-sm-10">
                                        <input class="form-control form-control-lg budgets" disabled="disabled" id="taxfield5" type="text" name="curbudgetamt" placeholder="enter current year budgeted tax amount" aria-label=".form-control-lg example">
                                    </div>
                                  </div>                                   
                                     <div class="mb-3 row form-group">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Approval:</label>
                            <div class="col-sm-10">
                                <input class="form-control form-control-lg budgets" disabled="disabled" id="taxfield6" name="approval" type="text" placeholder="enter current year budgeted sales amount" aria-label=".form-control-lg example">
                            </div>
                          </div>
                          <br>
                                 <div class="mb-3 row form-group">
                            <div class="col-sm-10">
                              <input type="submit"  value="Save" disabled="disabled" id="taxfield7" class="budgets" />
                            </div>
                        </div> 
                          </div> 
                      
                        <div class="Insurance expenses" >
                            <div class="mb-3 row"  >
                                <label for="staticEmail" class="col-sm-2 col-form-label">Insurance Source</label>
                                <div class="col-sm-10">
                                    <input class="form-control form-control-lg budgets" disabled="disabled" id="insurancefield1" type="text" name="source" placeholder="enter product name" aria-label=".form-control-lg example">
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Previous Actual Insurance Amount:</label>
                                <div class="col-sm-10">
                                    <input class="form-control form-control-lg budgets" disabled="disabled" id="insurancefield2" type="text" name="prevactualamt" placeholder=" enter previous actual insurance amount" aria-label=".form-control-lg example">
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Previous Budgeted Insurance Amount:</label>
                                <div class="col-sm-10">
                                    <input class="form-control form-control-lg budgets" disabled="disabled" id="insurancefield3" type="text" name="prevbudgetamt" placeholder="enter previous budgeted sales amount" aria-label=".form-control-lg example">
                                </div>
                              </div>
                              <div class="row form-group">
                                <label for="staticEmail"  class="col-sm-2 col-form-label">Current Date:</label>
                                <div class='col-sm-3'>
                                            <input data-date-format="dd/mm/yyyy" disabled="disabled" id="insurancefield4" id="datepicker4" name="currentdate" class="form-control budgets">
                                        </div>
        
                                    </div>
                                    <div class="mb-3 row">
                                        <label for="staticEmail" class="col-sm-2 col-form-label">Current Year Budgeted Insurance Amount:</label>
                                        <div class="col-sm-10">
                                            <input class="form-control form-control-lg budgets" disabled="disabled" id="insurancefield5" type="text" name="curbudgetamt" placeholder="enter previous budgeted sales amount" aria-label=".form-control-lg example">
                                        </div>
                                      </div>
                                         <div class="mb-3 row form-group">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Approval:</label>
                            <div class="col-sm-10">
                                <input class="form-control form-control-lg budgets" disabled="disabled" id="insurancefield6" name="approval" type="text" placeholder="enter current year budgeted sales amount" aria-label=".form-control-lg example">
                            </div>
                          </div>
                                       <div class="mb-3 row form-group">
                            <div class="col-sm-10">
                              <input type="submit"  value="Save" disabled="disabled" id="insurancefield7" class="budgets"/>
                            </div>
                        </div> 
                                    
                        </div> 
                   
                        <div class="Salary expenses" >
                            <div class="mb-3 row"  >
                                <label for="staticEmail" class="col-sm-2 col-form-label">Salary Source</label>
                                <div class="col-sm-10">
                                    <input class="form-control form-control-lg budgets" disabled="disabled" id="salaryfield1" type="text" name="source" placeholder="enter product name" aria-label=".form-control-lg example">
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Previous Actual Salary Amount:</label>
                                <div class="col-sm-10">
                                    <input class="form-control form-control-lg budgets" disabled="disabled" id="salaryfield2" type="text" name="prevactualamt" placeholder=" enter previous actual sales amount" aria-label=".form-control-lg example">
                                </div>
                              </div>
                              <div class="mb-3 row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Previous Budgeted Salary Amount:</label>
                                <div class="col-sm-10">
                                    <input class="form-control form-control-lg budgets" disabled="disabled" id="salaryfield3" type="text" name="prevbudgetamt" placeholder="enter previous budgeted sales amount" aria-label=".form-control-lg example">
                                </div>
                              </div>
                              <div class="row form-group">
                                <label for="staticEmail"  class="col-sm-2 col-form-label">Current Date:</label>
                                <div class='col-sm-3'>
                                            <input type="date" data-date-format="dd/mm/yyyy" disabled="disabled" id="salaryfield4" id="datepicker5" name="currentdate" class="form-control budgets" >
                                        </div>
        
                                    </div>
                                    <div class="mb-3 row">
                                        <label for="staticEmail" class="col-sm-2 col-form-label">Current Year Budgeted Salary Amount:</label>
                                        <div class="col-sm-10">
                                            <input class="form-control form-control-lg budgets" disabled="disabled" id="salaryfield5" type="text" name="curbudgetamt" placeholder="enter current year budgeted tax amount" aria-label=".form-control-lg example">
                                        </div>
                                      </div>
                                         <div class="mb-3 row form-group">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Approval:</label>
                            <div class="col-sm-10">
                                <input class="form-control form-control-lg budgets" disabled="disabled" id="salaryfield6" name="approval" type="text" placeholder="enter current year budgeted sales amount" aria-label=".form-control-lg example">
                            </div>
                          </div>
                                     <div class="mb-3 row form-group">
                            <div class="col-sm-10">
                              <input type="submit" class="budgets" disabled="disabled" id="salaryfield7"  value="Save" />
                            </div>
                        </div> 
                          </div> 
      </form>
                         <button class="btn btn-success save-btn" style="font-size: medium; border-radius: 4px; size-adjust: 100px; width: 20%; margin-left:40%; margin-right: -40%; height: 150%;  color: white; border-color: cornsilk; background-color: #07866a;" onclick="submitForms()">Save As Draft</button>
                            
                     </div>
                     
     <div id=data-table>
                                      
         <table class="table data table-bordered " id="budgetview"   style="display: none;"  >
                        <thead>
                            <tr>
                              <th scope="col">Id</th>
                              <th scope="col">Budget Classification</th>
                              <th scope="col">Budget Sub-Classification</th>
                              <th scope="col">Source</th>
                              <th scope="col">Previous Actual Amount</th>
                              <th scope="col">Previous Budgeted Amount</th>
                              <th scope="col">Current Date</th>
                              <th scope="col">Current Budgeted Amount</th>
                              <th scope="col">Approval</th>
                              <th scope="col" colspan="2" style="width: 20%; position: relative; text-align: center;">Actions</th>
                            </tr>
                         
                            </thead>                      
                 
                   <tbody>
                 
                       <c:if test="${empty budget}">
      <tr>
        <td colspan="9">No Budgets to Display</td>
      </tr>
    </c:if>

   <c:if test="${not empty budget}">

                <c:forEach var="budget" items="${budget}" >
              

                <tr id="data-row">
                    <td  id="id">${budget.budgetid}</td>
                    <td class="data" id="parent_row">${budget.parentclassification}</td>
                    <td class="data" id="subclass_row">${budget.subclassification}</td>
                    <td class="data" id="source_row">${budget.source}</td>
                    <td class="data" id="prevactual_row">${budget.prevactualamt}</td>
                    <td class="data" id="prevbudget_row">${budget.prevbudgetamt}</td>
                    <td class="data" id="currentdate_row">${budget.currentdate}</td>
                    <td class="data" id="currentbudget_row">${budget.curbudgetamt}</td>
                    <%if(request.getAttribute("approval")!="approved")
                    	{%>
                    <td id="approval_row">${budget.approvalstatus}</td>
                    
                    <%} %>
                    
                    <td>
                     
                     <form  action="budgetpreparation/${budget.budgetid}" method="post">
                     <%System.out.print("Hi"); %>
                     <input type="number" value="${budget.budgetid}" style="display: none;"  name="budgetid" />
                     
                         <input value="Delete" type="submit"   style="text-align: center; padding:10%; margin: 10%; "   class="btn btn-danger ml-2">
                                  
                     </form>
          
							</td>
							<td>
						
				            
	
<input value="Update"  type="submit" id="1${budget.budgetid }"   style="text-align: center; padding:10%; margin: 10%;" onclick="updateButton(this.id)"  class="btn btn-info data edit">
<form id="myform"  action="budgetpreparation/edit/${budget.budgetid}" method="post">
               		<input type="number" value="${budget.budgetid}" style="display: none;"  name="updatebudgetid" />				      
              <input  value="Save"  type="submit" id="Saves${budget.budgetid }"  style="text-align: center; padding:10%; margin: 10%; "  onclick="saveButton('1')"   class="btn-danger ml-2 data save " />
                     </form>
							</td>
					
                </tr>
 
                </c:forEach>
             
   
          
                 </c:if>                  
                        </tbody>
                      </table>
         </div>
                            <script type="text/javascript">
                        function updateButton(i)
                        {	
                       
                           
                           const reminder = 100;
                       const saveid =    Number(i) - reminder;
                    
                         var part = saveid;
                         var rest = 'Saves'+part
                  
                        	var savedid = document.getElementsById(rest);
                            
                            savedid.disabled = false;
                        	
                        	
                        	
                        	
                        	alert("id");
                        	
                        }
                             function saveButton()
                             {
                            	 confirm("Did you update the fields ?")
                            	  confirm("Are you sure ?")
                            	  $("#myform").submit();
                            
                             }
                            $(document).on('click', '.edit', function() {
                            	  $(this).parent().siblings('td.data').each(function() {
                            	    var content = $(this).html();
                            	    $(this).html('<input name="updateparentclassification" type="text" value="' + content + '" />');
                            	    
                         
                            	  $(this).html('<input name="updatesubclassification" type="text" value="' + content + '" />');
                          	    
                  
                            $(this).html('<input name="updatesource" type="text" value="' + content + '" />');
                    	    
              
                  	 $(this).html('<input name="updateprevactualamt" type="number" value="' + content + '" />');
             	    
      
           	 $(this).html('<input name="updatecurbudgetamt" type="number" value="' + content + '" />');
     	    

   	 $(this).html('<input name="updatecurrentdate" type="text" value="' + content + '" />');
	    

 $(this).html('<input name="updateapproval" type="text" value="' + content + '" />');
 
});
   	  
                            	 
                            	  $(this).siblings('.save').show();
                            
                              	
                             	  $(this).hide();
                            	
                            	});
                           
                            	$(document).on('click', '.save', function() {
                            	  
                            	  $('input').each(function() {
                            		
                            	    var content = $(this).val();
                            	  
                            	    $(this).html(content);
                            	    $(this).contents().unwrap();
                            	  
                            	  });
                            	 
                            	 
                            	 
                            	  
                            	});

                          
                
                            $('.budgetchange').change(function() {
                           
                            	  $('.budgets').prop('disabled', true);
                            	
                            	  if ($(this).val() == 'Sales') {
                            		  $('#salesfield1').prop('disabled', false);
                            		  $('#salesfield2').prop('disabled', false);
                            		  $('#salesfield3').prop('disabled', false);
                            		  $('#salesfield4').prop('disabled', false);
                            		  $('#salesfield5').prop('disabled', false);
                            		  $('#salesfield6').prop('disabled', false);
                            		  $('#salesfield7').prop('disabled', false);
                            	  }
                            	  else
                            		  if($(this).val() == 'Interest')
                            		{
                            			  $('#Interestfield1').prop('disabled', false); 
                            			  $('#Interestfield2').prop('disabled', false);                          
                            			  $('#Interestfield3').prop('disabled', false);                          
                            			  $('#Interestfield4').prop('disabled', false);                          
                            			  $('#Interestfield5').prop('disabled', false);                          
                            			  $('#Interestfield6').prop('disabled', false);     
                            			  $('#Interestfield7').prop('disabled', false);                          
                            	    }
                            		
                                		  else
                                    		  if($(this).val() == 'Tax')
                                    		{
                                    			  $('#taxfield1').prop('disabled', false); 
                                    			  $('#taxfield2').prop('disabled', false);                          
                                    			  $('#taxfield3').prop('disabled', false);                          
                                    			  $('#taxfield4').prop('disabled', false);                          
                                    			  $('#taxfield5').prop('disabled', false);                          
                                    			  $('#taxfield6').prop('disabled', false);     
                                    			  $('#taxfield7').prop('disabled', false);                          
                                    	    }
                                    		  else
                                        		  if($(this).val() == 'Insurance')
                                        		{
                                        			  $('#insurancefield1').prop('disabled', false); 
                                        			  $('#insurancefield2').prop('disabled', false);                          
                                        			  $('#insurancefield3').prop('disabled', false);                          
                                        			  $('#insurancefield4').prop('disabled', false);                          
                                        			  $('#insurancefield5').prop('disabled', false);                          
                                        			  $('#insurancefield6').prop('disabled', false);     
                                        			  $('#insurancefield7').prop('disabled', false);                          
                                        	    }
                                        		  else
                                            		  if($(this).val() == 'Salary')
                                            		{
                                            			  $('#salaryfield1').prop('disabled', false); 
                                            			  $('#salaryfield2').prop('disabled', false);                          
                                            			  $('#salaryfield3').prop('disabled', false);                          
                                            			  $('#salaryfield4').prop('disabled', false);                          
                                            			  $('#salaryfield5').prop('disabled', false);                          
                                            			  $('#salaryfield6').prop('disabled', false);     
                                            			  $('#salaryfield7').prop('disabled', false);                          
                                            	    }
                            	});
                            
                    $(document).ready(function(){
                        $("#incometype").change(function(){
                            $(this).find("option:selected").each(function(){
                                var optionValue = $(this).attr("value");
                                if(optionValue){
                                    $(".income").not("." + optionValue).hide();                                 
                                    $("." + optionValue).show();
                                } else{
                                    $(".income").hide();
                                }
                            });
                        }).change();
                    });
                    $(document).ready(function(){
                        $("#expensetype").change(function(){
                            $(this).find("option:selected").each(function(){
                                var optionValue = $(this).attr("value");
                                if(optionValue){
                                    $(".expenses").not("." + optionValue).hide();                                  
                                    $("." + optionValue).show();
                                } else{
                                    $(".expenses").hide();
                                }
                            });
                        }).change();
                    });
                    $(document).ready(function(){
    $("#selecttype").change(function(){
        $(this).find("option:selected").each(function(){
            var optionValue = $(this).attr("value");
            if(optionValue){
                $(".income").not("." + optionValue).hide();
             
                $("." + optionValue).show();
            } else{
                $(".income").hide();

            }
        });
    }).change();
    $("#selecttype").change(function(){
        $(this).find("option:selected").each(function(){
            var optionValue = $(this).attr("value");
            if(optionValue){
                $(".expenses").not("." + optionValue).hide();     
                $("." + optionValue).show();
            } else{
                $(".expenses").hide();
            }
        });
    }).change();
});
                                    </script> 
    
                                <script type="text/javascript">
               
$(document).ready(function(){
    $("#selecttype").change(function(){
        $(this).find("option:selected").each(function(){
            var optionValue = $(this).attr("value");
            if(optionValue){
                $(".budget").not("." + optionValue).hide();        
                $("." + optionValue).show();
            } else{
                $(".budget").hide();
            }
        });
    }).change();
});


                </script> 
                     
                 

          
                    </div> <!-- End container -->
                </section> <!-- End section -->  
   	

                       <script type="text/javascript">
                          $(document).ready(function(){
                            $("#demo_multiselect").selectDropdown({
                              'search': false,
                              'badges': false,
                              'deselectAll': false,
                              'selectAll': false,
                              'showSelected': false
                            });
                          });
                        </script>
                       
                         <script type="text/javascript">
                            $('#datepicker').datepicker({
                                weekStart: 1,
                                daysOfWeekHighlighted: "6,0",
                                autoclose: true,
                                todayHighlight: true,
                            });
                            $('#datepicker').datepicker("setDate", new Date());
                            $('#datepicker1').datepicker({
                                weekStart: 1,
                                daysOfWeekHighlighted: "6,0",
                                autoclose: true,
                                todayHighlight: true,
                            });
                            $('#datepicker1').datepicker("setDate", new Date());
                            $('#datepicker2').datepicker({
                                weekStart: 1,
                                daysOfWeekHighlighted: "6,0",
                                autoclose: true,
                                todayHighlight: true,
                            });
                            $('#datepicker2').datepicker("setDate", new Date());
                            $('#datepicker3').datepicker({
                                weekStart: 1,
                                daysOfWeekHighlighted: "6,0",
                                autoclose: true,
                                todayHighlight: true,
                            });
                            $('#datepicker3').datepicker("setDate", new Date());
                            $('#datepicker4').datepicker({
                                weekStart: 1,
                                daysOfWeekHighlighted: "6,0",
                                autoclose: true,
                                todayHighlight: true,
                            });
                            $('#datepicker4').datepicker("setDate", new Date());
                            $('#datepicker5').datepicker({
                                weekStart: 1,
                                daysOfWeekHighlighted: "6,0",
                                autoclose: true,
                                todayHighlight: true,
                            });
                            $('#datepicker5').datepicker("setDate", new Date());
                        </script>
                       
                <script type="text/javascript">

        
                    $(document).ready(function () {
               $("#btn").click(function () {
                
                   $("#budgetClass").toggle();
                   $("#budgetview").hide();
                   $('html,body').animate({
                   scrollTop: $("#budgetClass").offset().top},
                   'slow');
                 
               });
           
               $("#btn2").click(function () {
                
                $("#budgetview").show();
                $("#budgetClass").hide();
                $('html,body').animate({
                scrollTop: $("#budgetview").offset().top},
                'slow');
              
            });
           
           });
                  </script>
               
  
<footer id="footer" class="bg-one">
  <div class="top-footer">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 col-md-3 col-lg-3">
          <h3>INFORMATION</h3>
          <ul>
            <li><a href="#">Payment Option</a></li>
            <li><a href="#">Free Schedule</a></li>
            <li><a href="#">Getting Started</a></li>
            <li><a href="#">Bitcoin Calculator</a></li>
          </ul>
        </div>
        <!-- End of .col-sm-3 -->

        <div class="col-sm-3 col-md-3 col-lg-3">
          <h3>Our Services</h3>
          <ul>
            <li><a href="#">Graphic Design</a></li>
            <li><a href="#">Web Design</a></li>
            <li><a href="#">Web Development</a></li>
          </ul>
        </div>
        <!-- End of .col-sm-3 -->

        <div class="col-sm-3 col-md-3 col-lg-3">
          <h3>Quick Links</h3>
          <ul>
            <li><a href="#">Partners</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">FAQâs</a></li>
            <li><a href="#">Badges</a></li>
          </ul>
        </div>
        <!-- End of .col-sm-3 -->

        <div class="col-sm-3 col-md-3 col-lg-3">
          <h3>Follow Us</h3>
          <ul>
              <li>
                  <a href="">
                      Facebook
                  </a>
              </li>
              <li>
                  <a href="">
                      Twitter
                  </a>
              </li>
              <li>
                  <a href="">
                      Linkedin
                  </a>
              </li>
              <li>
                  <a href="">
                      Google PLus
                  </a>
              </li>
          </ul>
        </div>
        <!-- End of .col-sm-3 -->

      </div>
    </div> <!-- end container -->
  </div>
  <div class="footer-bottom">
    <h5>Copyright 2017. All rights reserved.</h5>
    <h6>Design and Developed by <a href="">Themefisher</a></h6>
  </div>
</footer> <!-- end footer -->


    <!-- end Footer Area
    ========================================== -->


    
    <!-- 
    Essential Scripts
    =====================================-->
    <script  src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="   crossorigin="anonymous"></script>
      <script src="https://vithalreddy.github.io/editable-html-table-js/bootstable.min.js"></script>

    <!-- Main jQuery -->
    <script src="plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="plugins/bootstrap/dist/js/popper.min.js"></script>
    <script src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Owl Carousel -->
    <script src="plugins/slick-carousel/slick/slick.min.js"></script>
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
    <!-- Smooth Scroll js -->
    <script src="plugins/smooth-scroll/dist/js/smooth-scroll.min.js"></script>
    
    <!-- Custom js -->
    <script src="js/script.js"></script>

  </body>
  </html>