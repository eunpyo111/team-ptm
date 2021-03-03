package ptm.team.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


//VO 전부 import 했으니 쓸것만 쓰시고 안쓰면 지워주세요
import ptm.team.vo.ExerciseVO;
import ptm.team.vo.PtVO;
import ptm.team.vo.RoundVO;
import ptm.team.vo.TrainerVO;
import ptm.team.vo.MemberVO;
//DAO
import ptm.team.dao.MemberDAO;
@Service
public class MemberServiceImpl implements MemberService{
	@Inject
	MemberDAO memberDAO;
	@Override
	public int Update(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.Select아무거나(vo);
	}

}
