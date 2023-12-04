package objects;

public class Address {

	//Constants
	public static final String CITYNAME = "No CityName"; 
	public static final String DISTRICTNAME = "No DistrictName";
	public static final String STREETNAME = "No StreetName";
	
	//Object's Propertise
	private String cityName;
	private String districtName;
	private String streetName;
	
	//Constructor methods
	
	public Address() {
		this(Address.CITYNAME,Address.DISTRICTNAME,Address.STREETNAME);
	}
	
	public Address(String cityName,String districtName, String streetName) {
		this.cityName = cityName;
		this.districtName = districtName;
		this.streetName = streetName;
	}
	
	public Address(Address addr) {
		this(addr.getCityName(),addr.getDistrictName(),addr.getStreetName());
	}
	
	//Getter methods
	
	public String getCityName() {
		return this.cityName;
	}
	
	public String getDistrictName() {
		return this.districtName;
	}
	
	public String getStreetName() {
		return this.streetName;
	}
	
	//Setter methods
	
	public void setCityName(String cityName) {
		this.cityName = cityName; 
	}
	
	public void setDistrictName(String districtName) {
		this.districtName = districtName; 
	}
	
	public void setStreetName(String streetName) {
		this.streetName = streetName; 
	}
	
	public String toString() {
		return streetName+", "+districtName+", "+cityName;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
