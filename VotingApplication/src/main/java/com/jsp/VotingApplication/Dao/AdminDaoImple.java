package com.jsp.VotingApplication.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.VotingApplication.Entity.Admin;
import com.jsp.VotingApplication.Repository.AdminRepository;
@Component
public class AdminDaoImple implements AdminDao {
	    @Autowired
        private AdminRepository adminRepo;
		@Override
		public boolean validateAdmin(String email, String password) {
			Optional<Admin> opt=adminRepo.findById(email);
			if(opt.isPresent())
			{
				Admin v1=opt.get();
				if(v1.getPassword().equalsIgnoreCase(password))
				{
					return true;
				}
			}
			return false;
		}
		@Override
		public Admin getAdmin(String email) {
			
			return adminRepo.findById(email).get();
		}
		@Override
		public List<Admin> getAllAdmins() {
			
			return adminRepo.findAll();
			}
	}
