/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Student;

public class StudentDAO {
	private PreparedStatement statement;
	private Connection connection;
	
	public StudentDAO(){
		
	}
	
	public StudentDAO(Connection  connection){
      this.connection = connection;
	  try {
		  PreparedStatement s = connection.prepareStatement("set search_path=pg_catalog,public");
		  s.execute();
	  } catch (SQLException sqle){
	    	 sqle.printStackTrace();
	  } catch (Exception e){
	    	 e.printStackTrace();
	  }
	}

	public Connection getConnection(){
		return connection;
	}
		
	public void setConnection(Connection connection){
	   this.connection = connection;
	}
	
	public ArrayList<Student> getStudentList() {	
		    ArrayList<Student> studentListDAO = new ArrayList<Student>();
		    try {
		         statement = connection.prepareStatement("SELECT * FROM students");	   
		         // obtain list of users
		         synchronized(statement) {
		            ResultSet results = statement.executeQuery();
		            // get rows data{
		            while (results.next()) {
			           Student student = new Student();
			           student.setId(results.getString("id"));
			           student.setName(results.getString("name"));
			           student.setScholarship(results.getString("scholarship"));
                                   student.setType(results.getString("type"));
			           studentListDAO.add(student);
		            }
		        }
		        statement.close();
                        System.out.println("Metodo getStudentList");
		    } catch(SQLException sqle){
				 System.out.println(sqle);
                    }	   
		    return studentListDAO;
        }
	 public void addStudent (Student student)  {
		 try {
		   statement = connection.prepareStatement("INSERT INTO students(id, name, scholarship, type) VALUES (?,?,?,?);");
		   synchronized(statement) {
                           statement.setString(1, student.getId());
			   statement.setString(2, student.getName());
                           statement.setString(3, student.getScholarship());
			   statement.setString(4, student.getType());
                           statement.executeUpdate();
		   }
		   statement.close();
		 } catch(SQLException sqle){
			 System.out.println(sqle);
		 }
		   
	   }
}
