package ptm.team.dao;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import ptm.team.vo.SessionVO;
import ptm.team.vo.TrainerVO;

@Repository
public class TrainerDAO 
{
	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "ptm.team.mapper.TrainerMapper";
	
	//회원가입
	public int insertTrainer(TrainerVO vo) 
	{	
		return sqlSession.insert(Namespace+".insertTrainer", vo);
	}
	
	//아이디중복확인
	public int selectIdcheck(String t_id) 
	{	
		return sqlSession.selectOne(Namespace+".selectIdCheck", t_id);
	}
	
	//이메일중복확인
	public int selectEmailCheck(String t_email) 
	{	
		return sqlSession.selectOne(Namespace+".selectEmailCheck", t_email);
	}
	
	//전화번호중복확인
	public int selectPhoneCheck(String t_phone) 
	{	
		return sqlSession.selectOne(Namespace+".selectPhoneCheck", t_phone);
	}
	
	//로그인 체크
	public boolean selectLogin(TrainerVO vo) 
	{	
		String t_no =  sqlSession.selectOne(Namespace+".selectLogin", vo);
		return(t_no == null) ? false : true;
	}
	
	//로그인된 회원 정보
	public SessionVO selectInfo(TrainerVO vo)
	{
		return sqlSession.selectOne(Namespace+".selectInfo", vo);
	}
	
	//로그아웃
	public void logout(HttpSession session){
	}
	
	//아이디찾기
	public String selectFindId(String t_email) throws Exception
	{
		return sqlSession.selectOne(Namespace+".selectFindId",t_email);
	}
}
