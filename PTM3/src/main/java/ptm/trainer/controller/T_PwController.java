package ptm.trainer.controller;


import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/Trainer") 
public class T_PwController 
{	
	@RequestMapping(value = "/T-Pw")//uri
	public String join(){	
	
		return "Trainer/T-Pw";//회원가입 화면으로 이동
	}
}