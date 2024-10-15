package com.jsp.VotingApplication.Dao;

import java.util.List;

import com.jsp.VotingApplication.Entity.CandidateList;

public interface CandidateDao {
	
    public void addCandidate(CandidateList cand);

	public List<CandidateList> getAllCandidates();

	public void doVoting(String candidate);

	public CandidateList getCandidate(String candidate);

	public List<CandidateList> getAllCandies();
}