package ptm.team.dao;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


//VO 전부 import 했으니 쓸것만 쓰시고 안쓰면 지워주세요
import ptm.team.vo.ExerciseVO;
import ptm.team.vo.PtVO;
import ptm.team.vo.RoundVO;
import ptm.team.vo.SearchVO;
import ptm.team.vo.ListVO;
import ptm.team.vo.TrainerVO;
import ptm.team.vo.MemberVO;

@Repository
public class T_SearchDAO 
{
	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "ptm.team.mapper.T_SearchMapper";

	public int InsertMember(MemberVO membervo) 
	{
		System.out.println(membervo.getM_qr());
		return sqlSession.insert(Namespace+".InsertMember",membervo);
	}
	public int SelectQR(String m_qr) {

		return sqlSession.selectOne(Namespace+".SelectQR",m_qr);
	}
	public List<MemberVO> SearchMember(SearchVO searchvo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(Namespace+".SearchMember",searchvo);
	}
	public int InsertPT(PtVO ptvo) 
	{
		System.out.println(ptvo.getM_qr());
		return sqlSession.insert(Namespace+".InsertPT",ptvo);
	}
}
