package objects;

public abstract class Manager {

	public abstract String getInfo(Person p);
	
	public String getDetail(Person p) {
		return this.getInfo(p);
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
