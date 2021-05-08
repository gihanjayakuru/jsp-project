package emp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class employee
 */
@WebServlet("/employee")
public class employee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public employee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		String dob = request.getParameter("DOB");
		String gender = request.getParameter("gender");
		String address = request.getParameter("Address");
		String designation = request.getParameter("designation");
		String salary = request.getParameter("salary");
		String number = request.getParameter("number");
		String email = request.getParameter("email");
		String status = request.getParameter("status");
		String intime = request.getParameter("intime");
		String outtime = request.getParameter("outtime");
		String date = request.getParameter("date");
		
		emp_get_set emp =new emp_get_set(id,fname,lname,dob,gender,address,designation,salary,number,email,status,intime,outtime,date);
		
		Add_EmpDa EDa = new Add_EmpDa();
		
		
		String result = EDa.insert(emp);
		response.getWriter().print(result);
		response.sendRedirect("EmployeeDetail.jsp");
	}

}
