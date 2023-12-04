package objects;

import java.util.*;

public interface BTT extends CTX,CTH,GDS {

	public ArrayList<Student> getAllStudent();
	public ArrayList<Student> getStudent(int id);
	public ArrayList<Student> getAllStudent(Person p);
	
	public ArrayList<Employee> getAllEmployee();
	public ArrayList<Employee> getEmployee(int id);
	public ArrayList<Employee> getAllEmployee(Person p);
	
}
