package com.jsp.VotingApplication.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.jsp.VotingApplication.Entity.Voter;
import com.jsp.VotingApplication.Repository.VoterRepository;
@Component
public class VoterDaoImple implements VoterDao {
    @Autowired
	private VoterRepository voterRepo;
	@Override
	public void addVoter(Voter voter) {
		voter.setStatus("Not Voted");
		voterRepo.save(voter);
	}
	
	@Override
	public boolean validateVoter(String email, String password) {
		Optional<Voter> opt=voterRepo.findById(email);
		if(opt.isPresent())
		{
			Voter v1=opt.get();
			if(v1.getPassword().equalsIgnoreCase(password))
			{
				return true;
			}
		}
		return false;
	}

	@Override
	public Voter getVoter(String email) 
	{
		Optional<Voter> opt = voterRepo.findById(email);
		if(opt.isPresent()) 
		{
				return opt.get();
		}
		return null;
	}

	@Override
	public void changeStatus(String voter) {
		Voter vtr=voterRepo.findById(voter).get();
		vtr.setStatus("Voted");
		voterRepo.save(vtr);
	}

	@Override
	public List<Voter> getAllVoters() {
		return voterRepo.findAll();
	}

   
}