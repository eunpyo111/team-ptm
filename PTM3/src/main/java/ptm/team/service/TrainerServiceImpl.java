package ptm.team.service;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import ptm.team.vo.SessionVO;
import ptm.team.vo.TrainerVO;
import ptm.team.dao.TrainerDAO;


@Service
public class TrainerServiceImpl implements TrainerService{
	
	@Inject
	TrainerDAO trainerDAO;
	
	//회원가입
	@Override
	public int insertTrainer(TrainerVO vo)throws Exception
	{	
		return trainerDAO.insertTrainer(vo);
	}
	
	//아이디 중복확인
	@Override
	public int selectIdCheck(String t_id)throws Exception
	{	
		return trainerDAO.selectIdcheck(t_id);
	}
	
	//이메일중복확인
	@Override
	public int selectEmailCheck(String t_email)throws Exception
	{	
		return trainerDAO.selectEmailCheck(t_email);
	}
	
	//전화번호중복확인
	@Override
	public int selectPhoneCheck(String t_phone)throws Exception
	{	
		return trainerDAO.selectPhoneCheck(t_phone);
	}
	
	//로그인 체크
	@Override
	public boolean selectLogin(TrainerVO vo, HttpSession session)throws Exception
	{	
		boolean result = trainerDAO.selectLogin(vo);
		if(result) {//true일 경우 세션에 등록
			SessionVO vo2 = selectInfo(vo);
			//세션 변수 등록
			session.setAttribute("t_id", vo2.getT_id());
			session.setAttribute("t_no", vo2.getT_no());
			//System.out.println("vo::no->"+vo2.getT_no()+",id->"+vo2.getT_id());
			//System.out.println("session::no->"+session.getAttribute("t_no")+",id->"+session.getAttribute("t_id"));
		}
		return result;
	}
	//로그인시 정보불러오기 세션에 넣어줄 vo2를 위해
	@Override
	public SessionVO selectInfo(TrainerVO vo)throws Exception
	{		
		return trainerDAO.selectInfo(vo);
	}
	//로그아웃
	@Override
	public void logout(HttpSession session)
	{
		//세션 변수 개별 삭제
		//session.removeAttribute("t_no");
		//세션 정보 초기화
		session.invalidate();
	}
	//아이디 찾기
	@Override
	public String selectFindId(HttpServletResponse response, String t_email) throws Exception
	{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String t_id = trainerDAO.selectFindId(t_email);
		
		if(t_id == null) {
			out.println("<script>");
			out.println("alert('가입된 아이디가 없습니다');");
			out.println("alert('history.go(-1)');");
			out.println("</script>");
			out.close();
			return null;
		}else {
			return t_id;
		}
	}

}
