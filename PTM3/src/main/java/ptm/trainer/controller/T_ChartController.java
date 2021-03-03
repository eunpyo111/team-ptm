package ptm.trainer.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ptm.team.service.T_ManagementService;
import ptm.team.vo.RoundVO;


@Controller
@RequestMapping(value="/Trainer") 
public class T_ChartController 
{	
	@Inject
	T_ManagementService t_managementService;
	
	// 차트 페이지
	@RequestMapping(value = "/T-Chart")
	public String chart(Model model, RoundVO vo, HttpServletRequest request) throws Exception
	{	
		HttpSession session = request.getSession();
		
		int T_no = (Integer)session.getAttribute("t_no");
		
		vo.setT_no(T_no);
		
		List<RoundVO> roundVO = t_managementService.selectExercise(vo);
		
		model.addAttribute("roundVO", roundVO);
		
		return "Trainer/T-Chart";
	}
}