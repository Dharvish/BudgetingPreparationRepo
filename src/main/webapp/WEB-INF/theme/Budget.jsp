<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<div class="container">
  <!-- Content here -->
<h1>Budget Preparation Form</h1>

<form action="createbudget" method="post">
    <div class="budgetprepare" >
                    <% System.out.println( "It was a success" );
                  

   %> 
                <h3 align="center">ABC Cosmetics</h3>
                <h2 align="center">User ID</h2>
                <div class="badge bg-primary text-wrap" style="width: 15%; margin-left:auto; margin-right: auto; display:block; ">
                   <h2> Budget Owner<h2>
                  </div>
                  <br>
                <div class="container">
                    <div class="form-group">
                        <label for="demo_overview_minimal_multiselect" style=" margin-left: 40.5%; margin-right: -40.5%; display: block;align-content: center;"><h1>Select Budget Start Period</h1></label>
                   
                        <select id="demo_overview_minimal_multiselect" name="budgetstartperiod"  class="form-control" style=" margin-left:auto; margin-right: auto; width:50%; align-content: center;">
                        <!-- options -->
                        <option selected>---Select---</option>
                        <option>31-03-2020</option>
                        <option>31-03-2021</option>
               
                        </select>
                        </div>
                        
                    <div class="form-group">
                            <label for="demo_overview_minimal_multiselect" style=" margin-left: 40.5%; margin-right: -40.5%; display: block;align-content: center;"><h1>Select Budget End Period</h1></label>
                            <select id="demo_overview_minimal_multiselect" name="budgetendperiod" class="form-control" style=" margin-left:auto; margin-right: auto; width:50%; align-content: center;">
                            <!-- options -->
                            <option selected>---Select---</option>
                            <option>31-03-2021</option>
                            <option>31-03-2022</option>
                            </select>
                    </div>
                        <script>
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
                       
                    </div>
            </div>
         <div align="center" id="budgettype" >
            <h2 >Parent Classification :</h2>
            <select class="form-control" id="selecttype" name="parentclassification" aria-label="Default select example"  style="width:50%; margin-left:auto; margin-right: auto;">
                <option selected>---Select---</option>
                <option value="Income">Income</option>
                <option value="Expenses">Expenses</option>
              </select>
              <br>
             
        </div>   
        <br>
        <div align="center">
        <div align="center" class="Income budget">
            <h2 >Sub Classification :</h2>
            <select class="form-control"  id="incometype" name="subclassification" aria-label="Default select example" style="width:50%; margin-left:auto; margin-right: auto;">
                <option selected >---Select---</option>
                <option value="Sales">Sales</option>
                <option value="Interest">Interest</option>
              </select>
         </div>
        </div>
              <script>
               
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
                    
        
             <br>
             <br>
     
            <div class="Sales income">
                <div class="mb-3 row form-group"  >
                    <label for="staticEmail" class="col-sm-2 col-form-label">Product Name:</label>
                    <div class="col-sm-10">
                        <input class="form-control form-control-lg" type="text" name="source" placeholder="enter product name" aria-label=".form-control-lg example">
                    </div>
                  </div>
                  <div class="mb-3 row form-group">
                    <label for="staticEmail" class="col-sm-2 col-form-label">Previous Actual Sales Amount:</label>
                    <div class="col-sm-10">
                        <input class="form-control form-control-lg" type="text" name="prevactualamt" placeholder=" enter previous actual sales amount" aria-label=".form-control-lg example">
                    </div>
                  </div>
                  <div class="mb-3 row form-group">
                    <label for="staticEmail" class="col-sm-2 col-form-label">Previous Budgeted Sales Amount:</label>
                    <div class="col-sm-10">
                        <input class="form-control form-control-lg" type="text" name="prevbudgetamt" placeholder="enter previous budgeted sales amount" aria-label=".form-control-lg example">
                    </div>
                  </div>
                  <div class="row form-group">
                    <label for="staticEmail"  class="col-sm-2 col-form-label">Current Date:</label>
                    <div class='col-sm-3'>
                                <input data-date-format="dd/mm/yyyy" id="datepicker" type="date" name="currentdate" class="form-control">
                            </div>
                         
                        </div>
                        <br>
                        <div class="mb-3 row form-group">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Current Year Budgeted Sales Amount:</label>
                            <div class="col-sm-10">
                                <input class="form-control form-control-lg" name="curbudgetamt" type="text" placeholder="enter current year budgeted sales amount" aria-label=".form-control-lg example">
                            </div>
                          </div>
                             <div class="mb-3 row form-group">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Approval:</label>
                            <div class="col-sm-10">
                                <input class="form-control form-control-lg" name="approval" type="text" placeholder="enter current year budgeted sales amount" aria-label=".form-control-lg example">
                            </div>
                          </div>

                </div>
            <input type="submit" value="Save" />
  
</form>
</div>
</body>
</html>