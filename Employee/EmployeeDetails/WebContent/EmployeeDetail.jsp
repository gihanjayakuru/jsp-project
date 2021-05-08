<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

    
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%


String id = request.getParameter("id");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "empdb";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>

<script >
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='edit.jsp?id='+id;
    f.submit();
}
</script>

<link rel="stylesheet" href="css/style.css">  
<meta name="viewport" content="width=device-width, initial-scale=1">  

<meta charset="ISO-8859-1">
<title>Employee Details</title>
</head>


<body>
<br><br><br>
<div class="sidebar">
  <a href="#home">DashBoard</a>
  <a class="active" href="EmployeeDetail.jsp">Employee Details</a>
  <a href="AddEmployee.jsp">Add Employee</a>
  <a href="AddAttendance.jsp">Add Attendance</a>
  <a href="AttendDetails.jsp">Attendance Details</a>
  <a href="#">Salary Calculation</a>
</div>



<div class="content">

<br><br>
<form method="post" name="form">

<table class="styled-table" >
<thead>

<tr>

</tr>
<tr>
<td><b>Employee ID</b></td>
<td><b>First Name</b></td>
<td><b>Last Name</b></td>
<td><b>Address</b></td>
<td><b>Date of birth</b></td>
<td><b>Gender</b></td>
<td><b>Designation</b></td>
<td><b>Basic Salary</b></td>
<td><b>Mobile</b></td>
<td><b>Email</b></td>
<td><b>Edit</b></td>
<td><b>Delete</b></td>



</tr>
</thead>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM emp";


resultSet = statement.executeQuery(sql);



while(resultSet.next()){
%>
<tbody>
<tr>

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("lname") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("designation") %></td>
<td><%=resultSet.getString("salary") %></td>
<td><%=resultSet.getString("number") %></td>
<td><%=resultSet.getString("email") %></td>
<td><input type="button" name="edit" value="Edit" style="background-color:green;font-weight:bold;color:white;" onclick="editRecord(<%=resultSet.getString("id")%>);" ></td>
<td><a href="delete.jsp?id=<%=resultSet.getString(1) %>"><button type="button" style="background-color:green;font-weight:bold;color:white;" class="delete">Delete</button></a></td>

</tr>
</tbody>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</form>
</div>

</body>
</html>