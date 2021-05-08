<%@page language="java"%>
<%@page import="java.sql.*"%>
<link rel="stylesheet" href="css/style.css">  
<div class="content">
<form method="post" action="update.jsp">



<table class="styled-table">

<tr><th>id</th><th>fname</th><th>lname</th><th>dob</th><th>gender</th><th>address</th><th>designation</th><th>salary</th><th>number</th><th>email</th>

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
<td><input type="text" name="id" value="<%=rs.getString("id")%>"></td>
<td><input type="text" name="fname" value="<%=rs.getString("fname")%>"></td>
<td><input type="text" name="lname" value="<%=rs.getString("lname")%>"></td>
<td><input type="text" name="dob" value="<%=rs.getInt("dob")%>"></td>
<td><input type="text" name="gender" value="<%=rs.getString("gender")%>"></td>
<td><input type="text" name="address" value="<%=rs.getString("address")%>"></td>
<td><input type="text" name="designation" value="<%=rs.getString("designation")%>"></td>
<td><input type="text" name="salary" value="<%=rs.getString("salary")%>"></td>
<td><input type="text" name="number" value="<%=rs.getString("number")%>"></td>
<td><input type="text" name="email" value="<%=rs.getString("email")%>"></td>

<td><input type="hidden" name="id" value="<%=rs.getString("id")%>"></td>
</tr>

<tr>

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