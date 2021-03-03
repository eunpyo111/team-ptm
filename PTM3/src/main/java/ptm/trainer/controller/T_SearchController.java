package ptm.trainer.controller;


import java.awt.image.BufferedImage;
import java.io.File;
import java.util.List;
import java.util.Locale;

import javax.imageio.ImageIO;
import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageConfig;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

import ptm.team.service.T_SearchService;
import ptm.team.vo.MemberVO;
import ptm.team.vo.PtVO;
import ptm.team.vo.SearchVO;












@Controller
@RequestMapping(value="/Trainer") 
public class T_SearchController 
{	
	
	@Inject
	private T_SearchService T_searchService; 
	
	@Autowired
	private JavaMailSender mailSender;
	
	
	
	@RequestMapping(value = "/T-Search")//uri
	public String Search(MemberVO membervo,HttpServletRequest request){	
		 HttpSession session = request.getSession();
		 int sT_no = (Integer)session.getAttribute("t_no");
		 membervo.setT_no(sT_no);
		return "Trainer/T-Search";//회원가입 화면으로 이동
	}
	//QR코드 사용하기 위해 난수발급(m_qr vo에 set 해줌 그리고 qr_create 호출 ) 및 파라미터 파일 set
	@RequestMapping(value = "/QRcreate", method=RequestMethod.POST)
	@ResponseBody
	public void RandomQR(MemberVO membervo,MultipartHttpServletRequest req) throws Exception 
	{
        MultipartFile file = req.getFile("file");
		 // req.getFile("file"); 
		  file.getOriginalFilename();
		  membervo.setM_realP(file.getOriginalFilename());
		  System.out.println(membervo.getM_realP());
		  System.out.println(file.getOriginalFilename());

			//int size = 0;
				char[] tmp = new char[6];
				for(int i=0; i<tmp.length; i++) {
					int div = (int) Math.floor( Math.random() * 2 );
					
					if(div == 0) { // 0이면 숫자로
						tmp[i] = (char) (Math.random() * 10 + '0') ;
					}else { //1이면 알파벳
						tmp[i] = (char) (Math.random() * 26 + 'A') ;
					}

			}
			String change="";
			for (int j = 0; j < tmp.length; j++) {
				change += Character.toString(tmp[j]);
			}
			
				System.out.println(change);
				membervo.setM_qr(change);
		
		  int result = T_searchService.SelectQR(change); 
		  if(result == 0) {
			qr_create(membervo, req); 
		  } else { RandomQR(membervo, req); }
		 			
	}
		
    // qr코드 등록(회원 정보 포함)및 파일에 qr코드이미지 저장
    public void qr_create(MemberVO membervo ,HttpServletRequest req) throws Exception{
     		
    	T_searchService.InsertMember(membervo);
    	
    	String m_name = membervo.getM_name();
        String m_phone = membervo.getM_phone();
        String m_email= membervo.getM_email();
        //String m_M_realP = membervo.getM_realP();
        String m_qr = membervo.getM_qr();
        
        
        String url = "http://localhost:9090/Member/M-List?m_qr="+m_qr;
        //m_qr="+m_qr+"&m_phone="+m_phone+"&m_email="+m_email
        
        try {
            File file = null;
            // qr코드 이미지를 저장할 디렉토리 지정
            file = new File("D:\\eunpyo\\PTM\\src\\main\\webapp\\resources\\QR");
            if(!file.exists()) {
                file.mkdirs();
            }
            // qr코드 인식시 이동할 url 주소	
            String codeurl = new String(url.getBytes("UTF-8"), "ISO-8859-1");
            // qr코드 바코드 생성값
            int qrcodeColor = 0xFF2e4e96;
            // qr코드 배경색상값 
            int backgroundColor = 0xFFFFFFFF;
              
            QRCodeWriter qrCodeWriter = new QRCodeWriter();
            // 3,4번째 parameter값 : width/height값 지정
            BitMatrix bitMatrix = qrCodeWriter.encode(codeurl, BarcodeFormat.QR_CODE,300, 300);
            //
            MatrixToImageConfig matrixToImageConfig = new MatrixToImageConfig(qrcodeColor,backgroundColor);
            BufferedImage bufferedImage = MatrixToImageWriter.toBufferedImage(bitMatrix,matrixToImageConfig);
            // ImageIO를 사용한 바코드 파일쓰기
            ImageIO.write(bufferedImage, "png", new File("D:\\eunpyo\\PTM\\src\\main\\webapp\\resources\\QR\\"+m_qr+".png"));

            mailSending(membervo,req);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    // 메일 보내는 부분 
    public void mailSending(MemberVO membervo ,HttpServletRequest req)throws Exception
    {
		String setfrom = "PTM";      // 여기 수정해야 할수도
		String tomail = membervo.getM_email(); // 받는 사람 이메일
		String m_name = membervo.getM_name();
		String m_qr = membervo.getM_qr();
		String title = m_name +"님 가입을 축하드립니다!!"; // 제목
		String contents = "첨부파일을 다운받아서 QR이미지를 볼수 있어요!!!";
		String filename =  "D:\\eunpyo\\PTM\\src\\main\\webapp\\resources\\QR\\"+m_qr+".png";
		System.out.println(contents);
		//String content = req.getParameter("content"); // 내용
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
		//	messageHelper.setText(content); // 메일 내용  
		    messageHelper.setText(contents);
			//FileSystemResource fsr = new FileSystemResource();
			FileSystemResource fsr = new FileSystemResource(filename);
		    messageHelper.addAttachment(filename, fsr);
			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}
    }
    
    
    	// 회원 조회
	 @RequestMapping(value="/SearchMember", method=RequestMethod.GET)
	 public String SearchMember(Locale locale,Model model,SearchVO searchvo, MemberVO membervo,HttpServletRequest request) throws Exception{
		 
		 HttpSession session = request.getSession();
		 int sT_no = (Integer)session.getAttribute("t_no");
		 searchvo.setT_no(sT_no);
		 		 
		 List<MemberVO> list = T_searchService.SearchMember(searchvo);
		  model.addAttribute("list",list); 
		  System.out.println(searchvo.getKeyword());
		 // System.out.println(membervo.getM_name());

		 return "Trainer/T-Search";
	 }
	
	 @RequestMapping(value="/InsertPT", method=RequestMethod.POST)
	 @ResponseBody
	 public void InsertPT(PtVO ptvo, HttpServletRequest request) throws Exception
	 {
		 HttpSession session = request.getSession();
		 int sT_no = (Integer)session.getAttribute("t_no");
		 ptvo.setT_no(sT_no);
		 System.out.println(ptvo.getT_no());
		 System.out.println(ptvo.getM_qr());
		 
		 T_searchService.InsertPT(ptvo);
		 
		 System.out.println(ptvo.getM_qr());
		 
	 }
}