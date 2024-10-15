package com.jsp.VotingApplication.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jsp.VotingApplication.Entity.CandidateList;

public interface CandidateRepository extends JpaRepository<CandidateList, String> {

}