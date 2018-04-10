import java.util.ArrayList;
public class Discs {
private String nameD;
private String feat;
private String dateLauch;
private String country;
private ArrayList<Artist> artists =new ArrayList<>(); 
private ArrayList<Songs> songs =new ArrayList<>(); 
private ArrayList<String> genres=new ArrayList<>();


public Discs(String nameD, String feat, String dateLauch, String country, ArrayList<Artist> artists,
		ArrayList<Songs> songs, ArrayList<String> genres) {
	super();
	this.nameD = nameD;
	this.feat = feat;
	this.dateLauch = dateLauch;
	this.country = country;
	this.artists = artists;
	this.songs = songs;
	this.genres = genres;
}

public Discs(String nameD, String feat, String dateLauch, String country) {
	super();
	this.nameD = nameD;
	this.feat = feat;
	this.dateLauch = dateLauch;
	this.country = country;
}

public String getNameD() {
	return nameD;
}
public void setNameD(String nameD) {
	this.nameD = nameD;
}
public String getFeat() {
	return feat;
}
public void setFeat(String feat) {
	this.feat = feat;
}
public String getDateLauch() {
	return dateLauch;
}
public void setDateLauch(String dateLauch) {
	this.dateLauch = dateLauch;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public ArrayList<Artist> getArtists() {
	return artists;
}
public void setArtists(ArrayList<Artist> artists) {
	this.artists = artists;
}

public ArrayList<Songs> getSongs() {
	return songs;
}

public void setSongs(ArrayList<Songs> songs) {
	this.songs = songs;
}

public ArrayList<String> getGenres() {
	return genres;
}

public void setGenres(ArrayList<String> genres) {
	this.genres = genres;
}


}
