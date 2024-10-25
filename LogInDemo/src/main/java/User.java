
public class User {
	private String userName;
	private String password;
	private String image;
	
	public User(String userName, String password, String image) {
		super();
		this.userName = userName;
		this.password = password;
		this.image = image;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}
