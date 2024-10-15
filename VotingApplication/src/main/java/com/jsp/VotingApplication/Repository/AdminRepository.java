package com.jsp.VotingApplication.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jsp.VotingApplication.Entity.Admin;

public interface AdminRepository extends JpaRepository<Admin,String>{

}