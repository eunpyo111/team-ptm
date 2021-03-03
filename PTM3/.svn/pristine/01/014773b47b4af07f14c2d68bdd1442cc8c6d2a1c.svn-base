package ptm.team.service;

import java.util.List;

//VO 전부 import 했으니 쓸것만 쓰시고 안쓰면 지워주세요
import ptm.team.vo.ListVO;
import ptm.team.vo.PtVO;
import ptm.team.vo.RoundVO;

public interface T_ManagementService 
{
	public List<PtVO>    selectList(ListVO vo)      throws Exception; //PT등록된 회원 리스트
	public PtVO          selectPtm(RoundVO vo)		throws Exception; //PT등록된 회원의 정보
	public List<RoundVO> selectExercise(RoundVO vo) throws Exception; //PT받고있는 회원의 회차
	public int           insertRound(RoundVO vo)    throws Exception; //PT받고있는 회원의 회차 추가
	public RoundVO       selectRound(int r_no)      throws Exception; //PT받고있는 회원의 회차 추가 후 가장 마지막 회차 불러올때
	public int           updateList(RoundVO vo)     throws Exception; //PT등록된 회원 삭제
}
