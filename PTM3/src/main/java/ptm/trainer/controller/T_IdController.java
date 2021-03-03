package ptm.trainer.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptm.team.service.TrainerService;

@Controller
@RequestMapping(value="/Trainer") 
public class T_IdController 
{	
	@Autowired
	private TrainerService trainerService;
	
	//아이디찾기 화면
	@RequestMapping(value = "/T-Id")//uri
	public String findid() throws Exception{	

		return "Trainer/T-Id";
	}
	
	//아이디찾기 처리
	@RequestMapping(value = "/T-IdOK", method = RequestMethod.POST)//uri
	public String findidOK(HttpServletResponse response, @RequestParam("t_email") String t_email, Model model) throws Exception{	
	
		model.addAttribute("t_id", trainerService.selectFindId(response, t_email));

		return "Trainer/T-Id";
	}
	
	
	
}