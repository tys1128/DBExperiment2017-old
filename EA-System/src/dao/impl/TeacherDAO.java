package dao.impl;

import java.sql.*;
import java.util.ArrayList;

import dao.PersonDAO;
import entity.Teacher;

class Login_Property {
	public String username;
	public String password;

	/**
	* 此类的构造函数
	* @param username 正确用户名，即id
	* @param password 正确密码
	*/
	public Login_Property(String username, String password) {
		this.username = username;
		this.password = password;
	}

}
/**
* Title: login_Teacher类<br>
* Description: 通过实例化此类获取实体数据和判断登陆是否合法
* Companny:no
* @author one member
* @version 1.0
*/
public class TeacherDAO implements PersonDAO{
	Connection conn ;

	/**
	* 这是此类的构造方法
	* 无参
	*/
	public TeacherDAO() {
		try {
			DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
			conn = DriverManager.getConnection("jdbc:oracle:thin:@47.94.200.154:1521:ORCL", "student", "student");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	* 这是判断老师登陆是否合法的功能函数说明 
	* @param username 登陆用户名，即老师ID
	* @param password 登陆密码
	* @return 是否合法
	*/
	public boolean canLogin(String username, String password) {
		Login_Property login_2 = this.login_Query();
		if (username.equals(login_2.username)&&password.equals(login_2.password)) {
			return true;
		}else {
			return false;
		}
	}
	/**
	* 这是查询所有老师用户密码信息的功能函数说明 
	* 无参
	* @return 所有老师的用户密码信息
	*/
	private Login_Property login_Query() {
		Login_Property login_2 = new Login_Property("default", "default");
		try {
			Statement state_2 = conn.createStatement();
			String sql = "select id,password from instructor where name='wangshi'";
			ResultSet result_2 = state_2.executeQuery(sql);
			while (result_2.next()) {

				login_2.username = result_2.getString("id");
				login_2.password = result_2.getString("password");
			}
			//System.out.println("id:" + login_2.username + "password:" + login_2.password);
			result_2.close();
			state_2.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return login_2;
	}

	/**
	* 这是读取或查询老师个人基本信息的功能函数说明 
	* 无参
	* @return 所要查询的老师的信息
	*/
	public ArrayList<Teacher> getTeacherManagement_Privilege() {
		ArrayList<Teacher> teachers = new ArrayList<Teacher>();
		try {

			Connection conn_1 = DriverManager.getConnection("jdbc:oracle:thin:@47.94.200.154:1521:ORCL", "student",
					"student");
			Statement state_1 = conn_1.createStatement();
			String sql = "select name,id,dept_name,salary from instructor ";
			ResultSet result_1 = state_1.executeQuery(sql);
			while (result_1.next()) {
				Teacher teacher = new Teacher();
				teacher.setName(result_1.getString("name"));
				teacher.setId(result_1.getString("id"));
				teacher.setDepartment_Name(result_1.getString("dept_name"));
				teacher.setSalary(result_1.getInt("salary"));
				if (teacher != null) {
					teachers.add(teacher);
				}
			}
			result_1.close();
			state_1.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return teachers;
	}



}