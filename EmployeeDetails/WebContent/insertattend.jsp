<%@page import="java.sql.*"%>
<%


String num =request.getParameter("id");

//String fname =request.getParameter("fname");
//String lname =request.getParameter("lname");
//String dob =request.getParameter("dob");
//String gender =request.getParameter("gender");
//String address =request.getParameter("address");
//String designation =request.getParameter("designation");
//String salary =request.getParameter("salary");
//String number =request.getParameter("number");
//String email =request.getParameter("email");
String status =request.getParameter("status");
String intime =request.getParameter("intime");
String outtime =request.getParameter("outtime");
String date =request.getParameter("date");

try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb","root", "root");
Statement st=null;
st=conn.createStatement();

st.executeUpdate("update emp set status='"+status+"',intime='"+intime+"',outtime='"+outtime+"',date='"+date+"' where id='"+num+"'");
response.sendRedirect("EmployeeDetail.jsp");
}
catch(Exception e){
System.out.println(e);
}
%>