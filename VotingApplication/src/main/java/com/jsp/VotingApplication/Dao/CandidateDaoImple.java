package com.jsp.VotingApplication.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.VotingApplication.Entity.CandidateList;
import com.jsp.VotingApplication.Repository.CandidateRepository;
@Component
public class CandidateDaoImple implements CandidateDao {
    @Autowired
	private CandidateRepository candRepo;
	@Override
	public void addCandidate(CandidateList cand) {
		
         candRepo.save(cand);
	}
	@Override
	public List<CandidateList> getAllCandidates() {
		
		List<CandidateList> li=candRepo.findAll();
		return li;
	}
	@Override
	public void doVoting(String candidate) {
		CandidateList candi=candRepo.findById(candidate).get();
		candi.setVotes(candi.getVotes()+1);
		candRepo.save(candi);
	}
	@Override
	public CandidateList getCandidate(String candidate) {
		CandidateList candi=candRepo.findById(candidate).get();
		return candi;
	}
	@Override
	public List<CandidateList> getAllCandies() {
		
		return candRepo.findAll();
	}

}
