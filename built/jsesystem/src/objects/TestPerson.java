package objects;

public class TestPerson {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Address addr = new Address();
		
		Person s = new Student("Hoàng1", "Nguyễn Duy", (byte)21, addr, 123, "(2023)000123123", "Công nghệ thông tin");
		Person e = new Employee("Hoàng2","Nguyễn Duy",(byte)21,addr,5000000,"Fresher");
		
		System.out.println(s.toString());
		System.out.println(e.toString());
	}

}
