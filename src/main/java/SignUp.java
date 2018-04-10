import java.util.ArrayList;
public class SignUp {
private String name;
private String email;
private String password;
private String birth;

public SignUp(String name, String email, String password, String birth) {
	super();
	this.name = name;
	this.email = email;
	this.password = password;
	this.birth = birth;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getBirth() {
	return birth;
}
public void setBirth(String birth) {
	this.birth = birth;
}


}


