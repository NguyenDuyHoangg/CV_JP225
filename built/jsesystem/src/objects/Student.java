package objects;

public class Student extends Person {
	
	public static final int ID = 0;
	public static final String ID_MANAGE = "(2023)00000000";
	public static final String SPECIALY = "NONE";
	
	//Student's properties
	private int id;
	private String id_manage;
	private String specialy;
	
	public Student() {
		this(Student.FIRSTNAME, Student.LASTNAME, Student.AGE, Student.ADDRESS,
				Student.ID, Student.ID_MANAGE, Student.SPECIALY);
	}
	

	public Student(String firstName, String lastName, byte age, Address address, int id, String id_manage,
			String specialy) {
		//Khởi tạo đối tượng cha (Person)
		super(firstName, lastName, age, address);
		
		//Gán thuộc tính đối tượng con (Student)
		this.id = id;
		this.id_manage = id_manage;
		this.specialy = specialy;
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getId_manage() {
		return id_manage;
	}


	public void setId_manage(String id_manage) {
		this.id_manage = id_manage;
	}


	public String getSpecialy() {
		return specialy;
	}


	public void setSpecialy(String specialy) {
		this.specialy = specialy;
	}

	@Override
	public String toString() {
		return "Student ["+super.toString()+" - ID=" + id + ", IM=" + id_manage + ", SPE=" + specialy + "]";
	}


	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Address addr = new Address();
		
		Person s = new Student("Hoàng", "Nguyễn Duy", (byte)21, addr, 123, "(2023)000123123", "Công nghệ thông tin");
		
		System.out.println(s.toString());
	}

}
