package objects;

public class Person implements Comparable<Person> {
	
	//Constants
	public static final String FIRSTNAME = "No FirstName";
	public static final String LASTNAME = "No LastName";
	public static final byte AGE = 0;
	public static final Address ADDRESS = new Address();
	
	//Variables
	private static int count=0;
	
	//Object's Properties
	private String firstName;
	private String lastName;
	private byte age;
	
	private Address address;
	
	//Constructor methods
	public Person() {
//		firstName = "No FirstName";
//		lastName = "No LastName";
//		age = 0;
		
		//Tham chiếu xuống constructor đầy đủ tham số
		this(Person.FIRSTNAME, Person.LASTNAME, Person.AGE, Person.ADDRESS);
	}
	
	public Person(byte age) {
		this(Person.FIRSTNAME, Person.LASTNAME, age, Person.ADDRESS);
	}

	public Person(String firstName, byte age) {
		this(firstName, Person.LASTNAME, age, Person.ADDRESS);
	}

	public Person(String firstName, String lastName, byte age, Address address) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		
		//Cách 1 - gán địa chỉ trong bộ nhớ cho nhau
		//this.address = address;
		
		//Cách 2 - gán giá trị
		this.address = new Address(address);
		
		//Đếm số đối tượng
		Person.count++;
	}
	
	//Getter methods
	public String getFirstName() {
		return this.firstName;
	}
	
	public String getLastName() {
		return this.lastName;
	}
	
	public byte getAge() {
		return this.age;
	}
	
	public Address getAddress() {
		return this.address;
	}
	
	//Setter methods
	public Person setFirstName(String firstName) {
		this.firstName = firstName;
		return this;
	}
	
	public Person setLastName(String lastName) {
		this.lastName = lastName;
		return this;
	}
	
	public Person setAge(byte age) {
		this.age = age;
		return this;
	}
	
	public void setAddress(Address address) {
		this.address = address;
	}
	
	public void setAddress(String cityName, String districtName, String streetName) {
		this.address = new Address(cityName, districtName, streetName);
	}
	
	//Other methods
	public String toString() {
		return lastName+" "+firstName+", "+age;
//		return lastName+" "+firstName+", "+age+ " - " + this.address.toString();
	}
	
	public static int getCountPerson() {
		return Person.count;
	}
	
	protected void finalize() throws Throwable{
		Person.count--;
	}
	
	public static void main(String[] args) {
		//Khởi tạo các thể hiện đối tượng
		Address addr = new Address("Hà Nội", "Bắc Từ Liêm", "Phố Nhổn");
		
		Person p;
		Person p1 = new Person();
//		Person p2 = new Person((byte) 10);
//		Person p3 = new Person("Hoang",(byte) 21);
//		Person p4 = new Person("Hoang","Nguyen Duy",(byte) 21, addr);
		
		System.out.println(p1);
		
		//Bổ sung thông tin
		p1.setFirstName("Tuấn").setLastName("Phạm Minh").setAge((byte)20);
//		p1.setLastName("Trần Quốc");
//		p1.setAge((byte)20);
		
		System.out.println(p1);
		
	}

	@Override
	public int compareTo(Person o) {
		// TODO Auto-generated method stub
		return this.age - o.getAge();
	}

}
