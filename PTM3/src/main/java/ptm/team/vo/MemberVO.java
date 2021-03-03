package ptm.team.vo;

public class MemberVO {
	
	private String	m_qr;
	private String  m_name;
	private String  m_email;
	private String  m_emailhash;
	private boolean m_emailchecked;
	private String  m_phone;
	private String  m_originP;
	private String  m_realP;
	private double  m_kg;
	private double  m_bone;
	private double  m_fat;
	private String  m_joindate;
	private char  	m_state; //Y:����, N:Ż��
	private int 	t_no;
	private int 	ptCnt;
	
	
	public int getPtCnt() {
		return ptCnt;
	}



	public void setPtCnt(int ptCnt) {
		this.ptCnt = ptCnt;
	}



	public int getT_no() {
		return t_no;
	}



	public void setT_no(int t_no) {
		this.t_no = t_no;
	}



	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}



	public String getM_qr() {
		return m_qr;
	}



	public void setM_qr(String m_qr) {
		this.m_qr = m_qr;
	}



	public String getM_name() {
		return m_name;
	}



	public void setM_name(String m_name) {
		this.m_name = m_name;
	}



	public String getM_email() {
		return m_email;
	}



	public void setM_email(String m_email) {
		this.m_email = m_email;
	}



	public String getM_emailhash() {
		return m_emailhash;
	}



	public void setM_emailhash(String m_emailhash) {
		this.m_emailhash = m_emailhash;
	}



	public boolean isM_emailchecked() {
		return m_emailchecked;
	}



	public void setM_emailchecked(boolean m_emailchecked) {
		this.m_emailchecked = m_emailchecked;
	}



	public String getM_phone() {
		return m_phone;
	}



	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}



	public String getM_originP() {
		return m_originP;
	}



	public void setM_originP(String m_originP) {
		this.m_originP = m_originP;
	}



	public String getM_realP() {
		return m_realP;
	}



	public void setM_realP(String m_realP) {
		this.m_realP = m_realP;
	}



	public double getM_kg() {
		return m_kg;
	}



	public void setM_kg(double m_kg) {
		this.m_kg = m_kg;
	}



	public double getM_bone() {
		return m_bone;
	}



	public void setM_bone(double m_bone) {
		this.m_bone = m_bone;
	}



	public double getM_fat() {
		return m_fat;
	}



	public void setM_fat(double m_fat) {
		this.m_fat = m_fat;
	}



	public String getM_joindate() {
		return m_joindate;
	}



	public void setM_joindate(String m_joindate) {
		this.m_joindate = m_joindate;
	}



	public char getM_state() {
		return m_state;
	}



	public void setM_state(char m_state) {
		this.m_state = m_state;
	}
	
	
}
