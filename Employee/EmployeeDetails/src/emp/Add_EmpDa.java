package emp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class Add_EmpDa {
	
	private static String dbUrl = "jdbc:mysql://localhost:3306/empdb"; 
	private static String dbUser = "root";
	private static String dbpassword ="root";
	private static String dbDriver ="com.mysql.cj.jdbc.Driver";
	private static Connection con;
	
	
	public void loadDriver(String dbDriver) {
		
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
	}
	
	//public Connection getConnection(){
		
		//Connection con =null;
		
		//try {
		//	con = DriverManager.getConnection(dbUrl,dbUser,dbpassword);
		//} catch (SQLException e) {
			// TODO Auto-generated catch block
		//	e.printStackTrace();
		//}
		//return con;

	//}
	
	public static Connection getConnection() {   
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(dbUrl,dbUser,dbpassword);
			
		}
		catch(Exception e) {
			System.out.println("Database connection is not success..!!!");
		}
		return con;
}
	
	
	
	
	public String insert(emp_get_set emp) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Employee Data entered Successfully";

		String sql = "insert into emp values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps;
		try {
			
			ps = con.prepareStatement(sql);
			ps.setString(1, emp.getId());
			ps.setString(2, emp.getFname());
			ps.setString(3, emp.getLname());
			ps.setString(4, emp.getDob());
			ps.setString(5, emp.getGender());
			ps.setString(6, emp.getAddress());
			ps.setString(7, emp.getDesignation());
			ps.setString(8, emp.getSalary());
			ps.setString(9, emp.getNumber());
			ps.setString(10, emp.getEmail());
			ps.setString(11, emp.getStatus());
			ps.setString(12, emp.getIntime());
			ps.setString(13, emp.getOuttime());
			ps.setString(14, emp.getDate());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Employee Data not entered";
		}
		
		
		return result;
	}
	
	
	public String delete(emp_get_set emp) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Employee Data deleted Successfully";

		String sql = "delete from emp WHERE id=?";
		
		PreparedStatement ps;
		try {
			
			ps = con.prepareStatement(sql);
			ps.setString(1, emp.getId());
			
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Employee Data not  deleted";
		}
		
		
		return result;
		
	}
	
	
//	public String insert2(attend_get_set emp) {
//		
//		
//		//loadDriver(dbDriver);
//		//Connection con = getConnection();
//		String result = "Employee Data entered Successfully";
//
//		//String sql = "insert into emp values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
//		
//		//PreparedStatement ps;
//		try {
//			
//			Connection conn = null;
//			
//			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb","root", "root");
//			Statement st=null;
//			st=conn.createStatement();
//
//			st.executeUpdate("update emp set status='"+emp.getStatus()+"',intime='"+emp.getIntime()+"',outtime='"+emp.getOuttime()+"',date='"+emp.getDate()+"' where id='"+emp.getId()+"'");
//
////			ps = con.prepareStatement(sql);
////			ps.setString(1, emp.getId());
////			ps.setString(2, emp.getFname());
////			ps.setString(3, emp.getLname());
////			ps.setString(4, emp.getDob());
////			ps.setString(5, emp.getGender());
////			ps.setString(6, emp.getAddress());
////			ps.setString(7, emp.getDesignation());
////			ps.setString(8, emp.getSalary());
////			ps.setString(9, emp.getNumber());
////			ps.setString(10, emp.getEmail());
////			ps.setString(11, emp.getStatus());
////			ps.setString(12, emp.getIntime());
////			ps.setString(13, emp.getOuttime());
////			ps.setString(14, emp.getDate());
////			
////			ps.executeUpdate();
//			
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			result = "Employee Data not entered";
//		}
//		
//		
//		return result;
	//}
	


}
