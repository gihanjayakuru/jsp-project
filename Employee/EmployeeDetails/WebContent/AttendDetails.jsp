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



<link rel="stylesheet" href="css/style.css">  
<meta name="viewport" content="width=device-width, initial-scale=1">  

<meta charset="ISO-8859-1">
<title>Employee Details</title>

<script >
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='edit2.jsp?id='+id;
    f.submit();
}
</script>


</head>


<body>
<br><br><br>
<div class="sidebar">
  <a href="#home">DashBoard</a>
  <a href="EmployeeDetail.jsp">Employee Details</a>
  <a href="AddEmployee.jsp">Add Employee</a>
  <a href="AddAttendance.jsp">Add Attendance</a>
  <a class="active" href="AttendDetails.jsp">Attendance Details</a>
  <a href="#">Salary Calculation</a>
</div>



<div class="content">

<br><br>
<form method="post" name="form">

<table class="styled-table" >
<thead>

<tr>
<td><b>Employee ID</b></td>
<td><b>First Name</b></td>
<td><b>Last Name</b></td>
<td><b>Designation</b></td>
<td><b>Status</b></td>
<td><b>Intime<br>--AM--</b></td>
<td><b>Outtime<br>--PM--</b></td>
<td><b>Date</b></td>
<td></td>

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

<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString("lname") %></td>

<td><%=resultSet.getString("designation") %></td>
<td><%=resultSet.getString("status") %></td>
<td><%=resultSet.getString("intime") %></td>
<td><%=resultSet.getString("outtime") %></td>
<td><%=resultSet.getString("date") %></td>
<td><input type="button" name="edit" value="Edit" style="background-color:green;font-weight:bold;color:white;" onclick="editRecord(<%=resultSet.getString("id")%>);" ></td>


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