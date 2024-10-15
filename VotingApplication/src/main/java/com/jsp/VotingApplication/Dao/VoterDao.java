package com.jsp.VotingApplication.Dao;

import java.util.List;

import com.jsp.VotingApplication.Entity.Voter;

public interface VoterDao {
	public void addVoter(Voter voter);

	public boolean validateVoter(String email, String password);

	public Voter getVoter(String email);

	public void changeStatus(String voter);

	public List<Voter> getAllVoters();
}