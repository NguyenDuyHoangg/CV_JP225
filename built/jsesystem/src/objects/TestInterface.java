package objects;

public class TestInterface {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ND nd1 = new NDImpl1();	//ND => CTX
		ND nd2 = new NDImpl2(); //ND => CTX,CTH,GDS,BTT
		
		BTT btt = new BTTImpl(); //BTT => CTX,CTH,GDS

	}

}
