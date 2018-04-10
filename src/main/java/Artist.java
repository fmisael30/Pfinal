import java.util.ArrayList;

public class Artist {
	private String name;
	private int year;
	private ArrayList<String> ocupation = new ArrayList<String>();


	public Artist(String name, int year) {
		super();
		this.name = name;
		this.year = year;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public ArrayList<String> getOcupation() {
		return ocupation;
	}

	public void setOcupation(ArrayList<String> ocupation) {
		this.ocupation = ocupation;
	}


	
	
}
