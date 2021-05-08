<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>  
<html>  
<head>
<link rel="stylesheet" href="css/style.css">  
<meta name="viewport" content="width=device-width, initial-scale=1">  

</head>
  
<body> 

<br><br><br>
<div class="sidebar">
  <a href="#home">DashBoard</a>
  <a href="EmployeeDetail.jsp">Employee Details</a>
  <a class="active" href="AddEmployee.jsp">Add Employee</a>
  <a href="AddAttendance.jsp">Add Attendance</a>
  <a href="AttendDetails.jsp">Attendance Details</a>
  <a href="#">Salary Calculation</a>
</div>
 
 
<div class="content">



  <form name="Employee_Form" action="employee" method="post" onsubmit="return validate_form()">
    <div class="row">
      <div class="col-25">
        <label for="ids">ID :</label>
      </div>
      <div class="col-75">
        <input type="text" id="id" name="id" placeholder="Your ID:">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">First Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="firstname" placeholder="Your first name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Last Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="lastname" placeholder="Your last name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="DOB">DOB</label>
      </div>
      <div class="col-75">
        <input type="text" id="DOB" name="DOB"  placeholder="YYYY/MM/DD" >
      </div>
    </div>
    
    
    <div class="row">
      <div class="col-25">
        <label for="Gender">Gender</label>
      </div>
      <div class="col-75">
        <input type="radio" name="gender" value="male"> Male<br>
  		<input type="radio" name="gender" value="female"> Female<br>
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="Address">Address</label>
      </div>
      <div class="col-75">
        <textarea id="Address" name="Address" placeholder="Write Address.." style="height:100px"></textarea>
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="designation">Designation</label>
      </div>
      <div class="col-75">
        <select id="designation" name="designation">
          <option value="Reception">Reception</option>
          <option value="Cheff">Cheff</option>
          <option value="head">head</option>
        </select>
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="salary">Salary </label>
      </div>
      <div class="col-75">
        <input type="text" id="salary" name="salary" placeholder="Your salary.">
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="number">Mobile number </label>
      </div>
      <div class="col-75">
        <input type="text" id="number" name="number" placeholder="Your Mobile NUmber.">
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="email">Email </label>
      </div>
      <div class="col-75">
        <input type="text" id="email" name="email" placeholder="Your Email..">
      </div>
    </div>
     
    
    
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>






<script>
    function validate_form() {
    	var id = document.forms["Employee_Form"]["id"];
        var firstname = document.forms["Employee_Form"]["firstname"];
        var lastname = document.forms["Employee_Form"]["lastname"];
        var DOB = document.forms["Employee_Form"]["DOB"];
        var gender = document.forms["Employee_Form"]["gender"];
        var Address = document.forms["Employee_Form"]["Address"];
        var designation = document.forms["Employee_Form"]["designation"];
        var salary = document.forms["Employee_Form"]["salary"];
        var number = document.forms["Employee_Form"]["number"];
        var email = document.forms["Employee_Form"]["email"];
        
        
  
        if (id.value == "") {
            window.alert("Please enter your id.");
            name.focus();
            return false;
        }
  
        if (firstname.value == "") {
            window.alert("Please enter your firstname.");
            address.focus();
            return false;
        }
  
        if (lastname.value == "") {
            window.alert(
              "Please enter your lastname.");
            email.focus();
            return false;
        }
  
        if (DOB.value == "") {
            window.alert(
              "Please enter your DOB.");
            phone.focus();
            return false;
        }
  
        if (gender.value == "") {
            window.alert("Please select gender");
            password.focus();
            return false;
        }
        
        if (gender.value == "") {
            window.alert("Please select gender");
            password.focus();
            return false;
        }
        if (Address.value == "") {
            window.alert("Please type your Address");
            password.focus();
            return false;
        }
        if (designation.value == "") {
            window.alert("Please select designation");
            password.focus();
            return false;
        }
        if (salary.value == "") {
            window.alert("Please type your salary");
            password.focus();
            return false;
        }
        if (number.value == "") {
            window.alert("Please type your tp number");
            password.focus();
            return false;
        }
        if (email.value == "") {
            window.alert("Please type your email");
            password.focus();
            return false;
        }
        
        
  
        return true;
    }
</script>



 
</body>  
</html>  