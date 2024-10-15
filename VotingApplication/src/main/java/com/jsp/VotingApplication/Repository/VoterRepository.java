package com.jsp.VotingApplication.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jsp.VotingApplication.Entity.Voter;

public interface VoterRepository extends JpaRepository<Voter, String>{

}