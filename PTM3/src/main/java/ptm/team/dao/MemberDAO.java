package ptm.team.dao;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


//VO 전부 import 했으니 쓸것만 쓰시고 안쓰면 지워주세요
import ptm.team.vo.ExerciseVO;
import ptm.team.vo.PtVO;
import ptm.team.vo.RoundVO;
import ptm.team.vo.TrainerVO;
import ptm.team.vo.MemberVO;

@Repository
public class MemberDAO 
{
	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "ptm.team.mapper.MemberMapper";

	public int Select아무거나(MemberVO vo) 
	{
		return sqlSession.selectOne(Namespace+".select*(기입)",vo);
	}
}
