package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Employee;

public class EmployeeDao {

	public int registerEmployee(Employee employee) throws ClassNotFoundException{
		String INSERT_USERS_SQL = "insser into employee " + "(FirstName) VALUES " +" (?);";
		
		int result = 0;
		
		Class.forName("com.mysql.jdbc/Driver");
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql_database?useSSL=false", "sys as sysdba", "Amol123");
				
				PreparedStatement preparedStatment = connection.prepareStatement(INSERT_USERS_SQL)){
			preparedStatment.setString(2, employee.getFirstName());
			
			System.out.println("preparedStatment");
			result = preparedStatment.executeUpdate();
			
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
