package com.jsp.VotingApplication.Dao;

import java.util.List;

import com.jsp.VotingApplication.Entity.Admin;

public interface AdminDao {
	public boolean validateAdmin(String email, String password);

	public Admin getAdmin(String email);

	public List<Admin> getAllAdmins();
}