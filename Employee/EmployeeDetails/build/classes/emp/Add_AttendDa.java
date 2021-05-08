package emp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Add_AttendDa {
	
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
	



	public String insert(attend_get_set attend) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Employee Attend Data entered Successfully";

		String sql = "insert into attend values(?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps;
		try {
			
			ps = con.prepareStatement(sql);
			ps.setString(1, attend.getId());
			ps.setString(2, attend.getFname());
			ps.setString(3, attend.getLname());
			ps.setString(4, attend.getDesignation());
			ps.setString(5, attend.getSalary());
			ps.setString(6, attend.getStatus());
			ps.setString(7, attend.getIntime());
			ps.setString(8, attend.getOuttime());
			ps.setString(9, attend.getDate());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Employee attend Data not entered";
		}
		
		
		return result;
	}
	

}
