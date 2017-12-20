package entity;

public class Department {
	private String dept_name;
	private String building;
	
	
	
	public Department(String dept_name, String building) {
		super();
		this.dept_name = dept_name;
		this.building = building;
	}
	
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public String getBuilding() {
		return building;
	}
	public void setBuilding(String building) {
		this.building = building;
	}
}
