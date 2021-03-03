package ptm.member.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/Member") 
public class M_ListController 
{	
	@Inject
	//private BoardService boardService;
	
	@RequestMapping(value = "/M-List")//uri
	public String list(Locale locale, Model model) throws Exception {	
		//model.addAttribute("list", list);
		return "Member/M-List";//jsp∆ƒ¿œ
	}
}