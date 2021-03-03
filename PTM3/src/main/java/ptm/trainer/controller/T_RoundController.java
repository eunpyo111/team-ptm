package ptm.trainer.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ptm.team.service.T_ManagementService;
import ptm.team.vo.PtVO;
import ptm.team.vo.RoundVO;

@Controller
@RequestMapping(value="/Trainer") 
public class T_RoundController 
{	
	@Inject
	T_ManagementService t_managementService;
	
	//PT받고있는 회원의 회차
	@RequestMapping(value = "/T-Round")
	public String selectExercise(Model model, PtVO ptVO, RoundVO vo, HttpServletRequest request) throws Exception
	{	
		HttpSession session = request.getSession();
		
		int T_no = (Integer)session.getAttribute("t_no");
		
		vo.setT_no(T_no);
		
		PtVO ptvo = t_managementService.selectPtm(vo);
		
		model.addAttribute("ptvo", ptvo);
		
		return "Trainer/T-Round";
	}
	
	//PT받고있는 회원의 회차 추가
	//PT받고있는 회원의 회차 추가 후 가장 마지막 회차 불러올때
	@RequestMapping(value="/ajaxroundAdd", method = RequestMethod.POST)
	@ResponseBody
	public RoundVO insertRound(RoundVO vo, HttpServletRequest request) throws Exception
	{
		//1.넘어온 roundVO(vo)를 이용하여 insert
		//2.insert 후 vo에 r_no 에는 max 값이 담겨있음
		//3.r_no를 이용하여 round select
		//4.결과를 roundVO에 담아서 return
		HttpSession session = request.getSession();
		
		int T_no = (Integer)session.getAttribute("t_no");
		
		vo.setT_no(T_no);
		
		
		t_managementService.insertRound(vo);
		
		RoundVO roundVO = t_managementService.selectRound(vo.getR_no());
		
		
		return roundVO; 
	}
}