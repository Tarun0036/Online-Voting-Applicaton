package com.jsp.VotingApplication.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@NoArgsConstructor
@Data
@ToString
@Entity
public class CandidateList {

	private String cName;
	private int cAge;
	@Id
	private String cEmail;
	public String getcName() {
		return cName;
	}
	public int getcAge() {
		return cAge;
	}
	public String getcEmail() {
		return cEmail;
	}
	public String getcPhone() {
		return cPhone;
	}
	public String getGender() {
		return gender;
	}
	public String getcAdress() {
		return cAdress;
	}
	public String getAdhaarNum() {
		return adhaarNum;
	}
	public String getPanNum() {
		return panNum;
	}
	public int getMonthlyIncome() {
		return monthlyIncome;
	}
	public int getYearlyIncome() {
		return yearlyIncome;
	}
	public int getTotalProperty() {
		return totalProperty;
	}
	public String getCriminalBackground() {
		return criminalBackground;
	}
	public int getVotes() {
		return votes;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public void setcAge(int cAge) {
		this.cAge = cAge;
	}
	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}
	public void setcPhone(String cPhone) {
		this.cPhone = cPhone;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setcAdress(String cAdress) {
		this.cAdress = cAdress;
	}
	public void setAdhaarNum(String adhaarNum) {
		this.adhaarNum = adhaarNum;
	}
	public void setPanNum(String panNum) {
		this.panNum = panNum;
	}
	public void setMonthlyIncome(int monthlyIncome) {
		this.monthlyIncome = monthlyIncome;
	}
	public void setYearlyIncome(int yearlyIncome) {
		this.yearlyIncome = yearlyIncome;
	}
	public void setTotalProperty(int totalProperty) {
		this.totalProperty = totalProperty;
	}
	public void setCriminalBackground(String criminalBackground) {
		this.criminalBackground = criminalBackground;
	}
	public void setVotes(int votes) {
		this.votes = votes;
	}
	private String cPhone;
	private String gender;
	private String cAdress;
	private String adhaarNum;
	private String panNum;
	private int monthlyIncome;
	private int yearlyIncome; 
	private int totalProperty;
	private String criminalBackground;
	private int votes;
}