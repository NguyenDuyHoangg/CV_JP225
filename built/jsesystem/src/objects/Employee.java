package objects;

public class Employee extends Person {
	
	public static final int NET=0;
	public static final String POSITION="MEMBER";
	
	private int net;
	private String position;

	public Employee(String firstName, String lastName, byte age, Address address, int net, String position) {
		super(firstName, lastName, age, address);
		this.net = net;
		this.position = position;
	}

	public double getNet() {
		return net;
	}



	public void setNet(int net) {
		this.net = net;
	}



	public String getPosition() {
		return position;
	}



	public void setPosition(String position) {
		this.position = position;
	}

	@Override
	public String toString() {
		return "Employee ["+super.toString()+" - NET=" + net + ", POS=" + position + "]";
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Address addr = new Address();
		
		Person e = new Employee("Hoàng","Nguyễn Duy",(byte)21,addr,5000000,"Fresher");
		
		System.out.println(e.toString());

	}

}
