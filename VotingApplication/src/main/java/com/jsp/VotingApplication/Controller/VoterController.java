package com.jsp.VotingApplication.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsp.VotingApplication.Dao.CandidateDao;
import com.jsp.VotingApplication.Dao.VoterDao;
import com.jsp.VotingApplication.Entity.CandidateList;
import com.jsp.VotingApplication.Entity.Voter;

@Controller
public class VoterController {
	@RequestMapping("/displayHome")
   public String displayHome()
   {
	   return "VoterHomePage";
   }
	@Autowired
	private VoterDao dao;
	@RequestMapping("/signup")
	public String signUp(Voter voter,Model model)
	{
	  dao.addVoter(voter);
	  model.addAttribute("msg","Rigistration successfull..!!");
	  return "VoterRig";
	}
	@Autowired
	private CandidateDao canDao;
	@RequestMapping("/voterLogin")
	public String voterLogin(String email,String password,Model model)
	{

		boolean status=dao.validateVoter(email,password);
		if(status) 
		{
			Voter vtr=dao.getVoter(email);
			List<CandidateList> ls =canDao.getAllCandidates();
			model.addAttribute("voter", vtr);
			model.addAttribute("listOfCan", ls);
			return "userDashboard";
		}
		else
		{
			model.addAttribute("loginStatus","invalid credentials..!!");
			return "SignIn";
		}
	}
	@RequestMapping("/getVoters")
	public String viewAllVoters(Model model)
	{
		List<Voter> lv=dao.getAllVoters();
		model.addAttribute("getAllVoters",lv);
		return "ViewVoters";
	}
}