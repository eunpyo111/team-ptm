package ptm.trainer.controller;



import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptm.team.service.TrainerService;
import ptm.team.util.SHA256;
import ptm.team.vo.TrainerVO;

@Controller
public class T_LoginController
{	
	//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(T_LoginController.class);
	
	
	@Inject
	private TrainerService trainerService;
	
	
	//로그인 화면(메인)
	@RequestMapping(value = "/")//uri
	public String login(){	
	
		return "Trainer/T-Login";//회원가입 화면으로 이동
	}
	
	//로그인 처리
	@RequestMapping(value="/T-LoginOK",method=RequestMethod.POST)
	public String loginOK(Model model,TrainerVO trainerVO, HttpServletRequest hsr, HttpSession session, HttpServletResponse response, String user_check) throws Exception
	{
		String encryPassword = SHA256.encrypt(trainerVO.getT_pw());
		trainerVO.setT_pw(encryPassword);
		
		/*
		 * String t_id = trainerVO.getT_id();
		 * 
		 * hsr.getCookies(user_check);
		 * 
		 * Cookie cookie = new Cookie("user_check", t_id); if
		 * (user_check.equals("true")) { response.addCookie(cookie);
		 * System.out.println("쿠키 아이디저장 O"); // 쿠키 확인 System.out.println("Service check"
		 * + cookie); } else { System.out.println("쿠키 아이디저장 X");
		 * cookie.setMaxAge(60*60); response.addCookie(cookie); }
		 */
		boolean result = trainerService.selectLogin(trainerVO, session);
		if(result == true) {
			model.addAttribute("msg", "success");
			return "redirect:Trainer/T-List";
		}else {
			model.addAttribute("msg", "failure");
			
			response.setCharacterEncoding("UTF-8"); 
			response.setContentType("text/html; charset=UTF-8");


			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('아이디 또는 비밀번호가 일치하지 않습니다.');");
			script.println("history.back();");
			script.println("</script>");
			script.close();
			
			return "redirect:/";
		}
		
	}
	
	@RequestMapping(value="/Trainer/T-Logout")
	public String logout(HttpSession session) throws Exception
	{
		trainerService.logout(session);
		return "redirect:/";
	}
}