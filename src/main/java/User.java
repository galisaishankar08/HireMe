
public class User {
	private int id;
	private String username,email,password,name,phonenumber,location,skills,resumelink;
	
	public int getId() {
	 return id;
	}
	public void setId(int id) {
	 this.id = id;
	}
	
	public String getUsername() {
	 return username;
	}
	public void setUsername(String username) {
	 this.username = username;
	}
	
	public String getPassword() {
	 return password;
	}
	public void setPassword(String password) {
	 this.password = password;
	}
	
	public String getEmail() {
	 return email;
	}
	public void setEmail(String email) {
	 this.email = email;
	}
	
	public String getPhoneNumber() {
	 return phonenumber;
	}
	public void setPhoneNumber(String phonenumber) {
	 this.phonenumber = phonenumber;
	}
	
	public String getLocation() {
		 return location;
	}
	public void setLocation(String location) {
		 this.location = location;
	}
	
	public String getSkills() {
		 return skills;
	}
	public void setSkills(String skills) {
		 this.skills = skills;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getResumelink() {
		return resumelink;
	}
	public void setResumelink(String resumelink) {
		this.resumelink = resumelink;
	}	
}
