<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>

<html>
<head>
<link rel="stylesheet" href="css/style.css">  

<% Date tdate=new Date();
%>
</head>
<body>
<br><br><br>
<div class="sidebar">
  
  <a href="AttendDetails.jsp">Attendance Details</a>
 
</div>

<div class="content">
<form method="post" action="insertattend.jsp">
<table class="styled-table" >

<tr><th>id</th><th>fname</th><th>lname</th><th>designation</th><th>status</th><th>intime</th><th>outtime</th>

</tr>
<%
String id=request.getParameter("id");
int no=Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb", "root", "root");
String query = "select * from emp where id='"+no+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr>
<td><input type="text" name="id" value="<%=rs.getString("id")%>" disabled></td>
<td><input type="text" name="fname" value="<%=rs.getString("fname")%>" disabled></td>
<td><input type="text" name="lname" value="<%=rs.getString("lname")%>" disabled></td>
<td><input type="text" name="designation" value="<%=rs.getString("designation")%>" disabled></td>


<td><input type="radio" name="status" value="present" > present<br>
  	<input type="radio" name="status" value="absent" > absent<br>
  	<input type="radio" name="status" value="off" checked="checked"> off<br></td>
<td><span >In Time</span><br><br><br>
	<span >Out Time</span>
	</td>
<td><br>
		<select id="intime" name="intime" >
          <option value="7">7.00 am</option>
          <option value="8">8.00 am</option>
          <option value="9">9.00 am</option>
        </select>
        
         
        <select id="outtime" name="outtime">
          <option value="5">5.00 pm</option>
          <option value="6">6.00 pm</option>
          <option value="7">7.00 pm</option>
          <option value="8">8.00 pm</option>
        </select></td>
<td><input type="hidden" name="id" value="<%=rs.getString("id")%>"></td>
<td><input type="hidden" name="date" value="<%=tdate%>"></td>
</tr>
<tr>
<td><a href="AddAttendance.jsp"><button type="button" style="background-color:green;font-weight:bold;color:white;" >Back</button></a></td>
<td><input type="submit" name="Submit" value="update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>

</form>
</div>

</body>
</html>