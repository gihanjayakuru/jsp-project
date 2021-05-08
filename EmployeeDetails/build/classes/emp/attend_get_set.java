package emp;

public class attend_get_set {
	
	private String id,fname,lname,designation,salary,status,intime,outtime,date;
	


	public attend_get_set() {
		super();
	}

	public attend_get_set(String id, String fname, String lname, String designation, String salary, String status,
			String intime, String outtime, String date) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.designation = designation;
		this.salary = salary;
		this.status = status;
		this.intime = intime;
		this.outtime = outtime;
		this.date = date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getIntime() {
		return intime;
	}

	public void setIntime(String intime) {
		this.intime = intime;
	}

	public String getOuttime() {
		return outtime;
	}

	public void setOuttime(String outtime) {
		this.outtime = outtime;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	



	

}
