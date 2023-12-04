package objects;

public class TesstManager {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Address addr = new Address();
		
		Person s = new Student("Hoàng1", "Nguyễn Duy", (byte)21, addr, 123, "(2023)000123123", "Công nghệ thông tin");
		Person e = new Employee("Hoàng2","Nguyễn Duy",(byte)21,addr,5000000,"Fresher");
		
		//-------------------
		
		Manager sm = new StudentManager();
		Manager em = new EmployeeManager();
		
		System.out.println(sm.getDetail(s));
		System.out.println(em.getDetail(e));
	}

}
