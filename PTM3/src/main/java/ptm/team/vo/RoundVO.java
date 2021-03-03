package ptm.team.vo;

public class RoundVO extends MemberVO{
	private int    r_no;
	private int    t_no;
	private String m_qr;
	private int    p_no;
	private int    r_ct;
	private String r_date;
	
	public RoundVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public int getT_no() {
		return t_no;
	}
	public void setT_no(int t_no) {
		this.t_no = t_no;
	}
	public String getU_qr() {
		return m_qr;
	}
	public void setU_qr(String u_qr) {
		this.m_qr = u_qr;
	}	
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public int getR_ct() {
		return r_ct;
	}
	public void setR_ct(int r_ct) {
		this.r_ct = r_ct;
	}
	public String getR_date() {
		return r_date;
	}
	public void setR_date(String r_date) {
		this.r_date = r_date;
	}
	
	

}
