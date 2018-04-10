import java.util.ArrayList;

public class Songs {
	private String artist;
	private String name_song;
	private ArrayList<String> year= new ArrayList<String>();
	
	public Songs(String artist, String name_song) {
		super();
		this.artist = artist;
		this.name_song = name_song;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public String getName_song() {
		return name_song;
	}
	public void setName_song(String name_song) {
		this.name_song = name_song;
	}
	public ArrayList<String> getYear() {
		return year;
	}
	public void setYear(ArrayList<String> year) {
		this.year = year;
	}
	
	
}
