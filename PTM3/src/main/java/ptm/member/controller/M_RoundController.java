package ptm.member.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/Member") 
public class M_RoundController 
{	
	@Inject
	//private BoardService boardService;
	
	@RequestMapping(value = "/M-Round")//uri
	public String list(Locale locale, Model model) throws Exception {	
		//model.addAttribute("list", list);
		return "Member/M-Round";//jsp∆ƒ¿œ
	}
}