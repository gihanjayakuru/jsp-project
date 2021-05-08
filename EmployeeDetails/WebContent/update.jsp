<%@page import="java.sql.*"%>
<%


String ide =request.getParameter("id");
int num =Integer.parseInt(ide);
String fname =request.getParameter("fname");
String lname =request.getParameter("lname");
String dob =request.getParameter("dob");
String gender =request.getParameter("gender");
String address =request.getParameter("address");
String designation =request.getParameter("designation");
String salary =request.getParameter("salary");
String number =request.getParameter("number");
String email =request.getParameter("email");


try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb","root", "root");
Statement st=null;
st=conn.createStatement();

st.executeUpdate("update emp set fname='"+fname+"',lname='"+lname+"',dob="+dob+",gender='"+gender+"',address='"+address+"',designation='"+designation+"',salary="+salary+",number='"+number+"',email='"+email+"' where id='"+num+"'");
response.sendRedirect("EmployeeDetail.jsp");
}
catch(Exception e){
System.out.println(e);
}
%>