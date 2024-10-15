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
public class CandidateController {
	@Autowired
	private CandidateDao dao;
    @RequestMapping("/addCandidate")
	public String addCandidate(CandidateList cand,Model model)
	{   
		String message="Your Application is Rejrcted ";
		if(cand.getcAge()<24)
		{
			message+="Becouse Age is not matching..!!";
		}
		else if(cand.getMonthlyIncome()>10000)
		{
			message+="Becouse monthly income is more..!!";
		}
		else if(cand.getYearlyIncome()>120000)
		{
			message+="Becouse Yearly income is more..!!";
		}
		else if(cand.getTotalProperty()>10000000)
		{
			message+="Becouse Total property is more..!!";
		}
		else if(cand.getCriminalBackground().equalsIgnoreCase("yes"))
		{
			message+="Becouse your in Criminal case";
		}
		else
		{
			message="Your Application is Approved..!!";
			dao.addCandidate(cand);
			model.addAttribute("check", true);
			model.addAttribute("status", message);
			return "ApplyCandidate";	
		}
		model.addAttribute("status", message);
		model.addAttribute("check", false);
		return "ApplyCandidate";
	}
    @Autowired
    private VoterDao vDao;
    
    @RequestMapping("/addVote")
    public String addVote(String voter,String candidate,Model model)
    {
    	dao.doVoting(candidate);
    	vDao.changeStatus(voter);
    	CandidateList ca=dao.getCandidate(candidate);
    	Voter v=vDao.getVoter(voter);
    	model.addAttribute("name", ca.getcName());
        model.addAttribute("voter", v);
        model.addAttribute("listOfCan",dao.getAllCandidates());
    	return "userDashboard";
    }
    @RequestMapping("/AllCandies")
    public String getAllCandidates(Model model) {
    	List<CandidateList> cList=dao.getAllCandies();
    	model.addAttribute("listOfCandies", cList);
    	return "ViewCandidates";
    }
}
