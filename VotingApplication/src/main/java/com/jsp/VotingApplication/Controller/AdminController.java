package com.jsp.VotingApplication.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsp.VotingApplication.Dao.AdminDao;
import com.jsp.VotingApplication.Dao.CandidateDao;
import com.jsp.VotingApplication.Entity.Admin;
import com.jsp.VotingApplication.Entity.CandidateList;
@Controller
public class AdminController {
	@Autowired
	private AdminDao dao;
	
	@Autowired
	private CandidateDao cDao;
	@RequestMapping("/adminLogin")
	public String adminLogin(String email,String password,Model model)
	{
		boolean status=dao.validateAdmin(email,password);
		if(status)
		{   
			List<CandidateList> listCand=cDao.getAllCandidates();
			model.addAttribute("listOfCans", listCand);
			Admin ad=dao.getAdmin(email);
			model.addAttribute("admin", ad);
			return "AdminDAshboard";
		}
		else 
		{
			model.addAttribute("loginStatus","invalid credentials..!!");
			return "AdminSignIn";
		}
	}
	@RequestMapping("/viewAllAdmins")
	public String viewAllAdmins(Model model)
	{
		List<Admin> adList=dao.getAllAdmins();
		model.addAttribute("allAdmins", adList);
		return "ViewAdmins";
	}
}
