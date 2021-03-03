package ptm.team.dao;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


//VO 전부 import 했으니 쓸것만 쓰시고 안쓰면 지워주세요
import ptm.team.vo.ExerciseVO;
import ptm.team.vo.PtVO;
import ptm.team.vo.RoundVO;
import ptm.team.vo.ListVO;
import ptm.team.vo.TrainerVO;
import ptm.team.vo.MemberVO;

@Repository
public class T_ManagementDAO 
{
	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "ptm.team.mapper.T_ManagementMapper";

	//PT등록된 회원 리스트
	public List<PtVO> selectList(ListVO vo) 
	{
		return sqlSession.selectList(Namespace+".selectList",vo);
	}
	
	//PT등록된 회원의 정보
	public PtVO selectPtm(RoundVO vo) 
	{
		return sqlSession.selectOne(Namespace+".selectPtm", vo);
	}
	
	//PT받고있는 회원의 회차
	public List<RoundVO> selectExercise(RoundVO vo) 
	{
		return sqlSession.selectOne(Namespace+".selectExercise", vo);
	}
	
	//PT받고있는 회원의 회차 추가
	public int insertRound(RoundVO vo) 
	{
		return sqlSession.insert(Namespace+".insertRound", vo);
	}

	//PT받고있는 회원의 회차 추가 후 가장 마지막 회차 불러올때
	public RoundVO selectRound(int r_no) 
	{
		return sqlSession.selectOne(Namespace+".selectRound", r_no);
	}
	
	//PT 리스트에서 회원 삭제처리
	public int updateList(RoundVO vo) 
	{
		return sqlSession.update(Namespace+".updateList", vo);
	}
}
