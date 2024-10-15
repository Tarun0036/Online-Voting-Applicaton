package com.jsp.VotingApplication.Entity;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@NoArgsConstructor
@Data
@ToString
@Entity
public class Voter {
	private String firstName;
	private String lastName;
	@Id
	private String email;
	private String password;
	private String phone;
	private String gender;
	private String dob;
	private String adhaar_num;
	private String panNum;
	private String adress;
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String Status;
	public String getFirstName() {
		return firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public String getPhone() {
		return phone;
	}
	public String getGender() {
		return gender;
	}
	public String getDob() {
		return dob;
	}
	public String getAdhaar_num() {
		return adhaar_num;
	}
	public String getPanNum() {
		return panNum;
	}
	public String getAdress() {
		return adress;
	}
	public int getId() {
		return id;
	}
	public String getStatus() {
		return Status;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public void setAdhaar_num(String adhaar_num) {
		this.adhaar_num = adhaar_num;
	}
	public void setPanNum(String panNum) {
		this.panNum = panNum;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setStatus(String status) {
		Status = status;
	}
}