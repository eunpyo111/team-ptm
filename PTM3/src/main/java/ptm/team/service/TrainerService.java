package ptm.team.service;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import ptm.team.vo.SessionVO;
import ptm.team.vo.TrainerVO;

public interface TrainerService 
{
	public int insertTrainer(TrainerVO vo) throws Exception;
	public int selectIdCheck(String t_id) throws Exception;
	public int selectEmailCheck(String t_email) throws Exception;
	public int selectPhoneCheck(String t_phone) throws Exception;
	public boolean selectLogin(TrainerVO vo, HttpSession session) throws Exception;
	public SessionVO selectInfo(TrainerVO vo) throws Exception;
	public void logout(HttpSession session);
	public String selectFindId(HttpServletResponse response, String t_email) throws Exception;
}

