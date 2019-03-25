package com.webaid.controller;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webaid.domain.MemberVO;
import com.webaid.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private MemberService mService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("main");

		search_blog();
		
		return "main/sns_test";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) {
		logger.info("main");

		List<MemberVO> list = mService.selectAll();

		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}

		return "main/index";
	}
	
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public String calendar(Model model) {
		logger.info("calendar");

		return "test/calendar";
	}
	
	@RequestMapping(value = "/calendar2", method = RequestMethod.GET)
	public String calendar2(Model model) {
		logger.info("calendar");
	
		return "test/calendar2";
	}
	
	@RequestMapping(value = "/jdental1", method = RequestMethod.GET)
	public String jdental1(Model model) {
		logger.info("j dental test1");

		return "main/jdentaltest1";
	}

	@RequestMapping(value = "/jdental2", method = RequestMethod.GET)
	public String jdental2(Model model) {
		logger.info("j dental test2");

		return "main/jdentaltest2";
	}

	@RequestMapping(value = "/excelDown", method = RequestMethod.POST)
	public void excelDown(Model model, HttpServletResponse response) throws IOException {
		logger.info("Excel Down Post");

		XSSFWorkbook objWorkBook = new XSSFWorkbook();
		XSSFSheet objSheet = null;
		XSSFRow objRow = null;
		XSSFCell objCell = null;

		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String nowDate = format.format(date);

		DateFormat format2 = DateFormat.getDateInstance(DateFormat.MEDIUM);

		objSheet = objWorkBook.createSheet("TestSheet");

		objRow = objSheet.createRow(0);

		// 행 높이 지정
		objRow.setHeight((short) 0x150);

		// 셀에 데이터 넣지
		objCell = objRow.createCell(0);
		objCell.setCellValue("아이디");

		objCell = objRow.createCell(1);
		objCell.setCellValue("비밀번호");

		objCell = objRow.createCell(2);
		objCell.setCellValue("이름");

		objCell = objRow.createCell(3);
		objCell.setCellValue("메일");

		objCell = objRow.createCell(4);
		objCell.setCellValue("등록일");

		List<MemberVO> memberList = mService.selectAll();

		int index = 1;

		for (MemberVO vo : memberList) {

			objRow = objSheet.createRow(index);

			objCell = objRow.createCell(0);
			objCell.setCellValue(vo.getId());

			objCell = objRow.createCell(1);
			objCell.setCellValue(vo.getPw());

			objCell = objRow.createCell(2);
			objCell.setCellValue(vo.getName());

			objCell = objRow.createCell(3);
			objCell.setCellValue(vo.getMail());

			objCell = objRow.createCell(4);
			objCell.setCellValue(format2.format(vo.getRegdate()));

			index++;
		}

		for (int i = 0; i < memberList.size(); i++) {
			objSheet.autoSizeColumn(i);
		}

		response.setContentType("Application/Msexcel");
		response.setHeader("Content-Disposition",
				"ATTachment; Filename=" + URLEncoder.encode("관심고객현황_" + nowDate, "UTF-8") + ".xlsx");

		OutputStream fileOut = response.getOutputStream();
		objWorkBook.write(fileOut);
		fileOut.close();

		response.getOutputStream().flush();
		response.getOutputStream().close();
	}

	@RequestMapping(value = "/sendMailWithFile", method = RequestMethod.GET)
	public String sendMailWithFile() {
		logger.info("sendMailWithFile");

		return "main/sendMailWithFile";
	}

	
	
	@RequestMapping(value="/WebSendMail", method=RequestMethod.POST)
	public String WebSendMail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{

		String to = "실제로 메일을 받을 주소";
		
		if (request.getContentType().startsWith("multipart/form-data")) {
			try {
				
				HashMap data = getMailData(request, response);
				sendMail(data);

				/*ServletContext sc = getServletContext();
				RequestDispatcher rd = sc.getRequestDispatcher("sendMailWithFile.jsp");
				rd.forward(request, response);*/
			} catch (MessagingException ex) {
				throw new ServletException(ex);
			}
		} else {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		}
		return "redirect:/sendMailWithFile";
		
	}
	
	private void sendMail(HashMap mailData) throws MessagingException {
        
		System.setProperty("mail.smtp.starttls.enable", "true"); 
        System.setProperty("mail.smtp.auth", "true"); 
        System.setProperty("mail.smtp.host", "smtp.gmail.com");
        System.setProperty("mail.smtp.port", "587");
        
        //구글 인증
        Authenticator auth = new MyAuthentication();
        Message msg = new MimeMessage(Session.getDefaultInstance(System.getProperties(), auth));
        //받는사람
        InternetAddress[] tos = InternetAddress.parse("bjj7425@naver.com");
        msg.setRecipients(Message.RecipientType.TO, tos);
        //한글을 위한 인코딩
        msg.setHeader("Content-Type", "text/html; charset=UTF-8");
        //제목
        msg.setSubject("webaid 상세 문의신청입니다.");
        msg.setSentDate(new Date());
        
        String PwMeg = "회사명:" + mailData.get("cname") + "\n" + "담당자:" + mailData.get("pname") + "\n" + "연락처:" + mailData.get("phone") + "\n" + "이메일:" + mailData.get("email")
		+ "\n" + "현재사이트:" + mailData.get("nsite") + "\n" + "참고사이트1:" + mailData.get("rsite1") + "\n" + "참고사이트2:" + mailData.get("rsite2")
		+ "\n" + "문의내용:"+mailData.get("content");
        
        //첨부파일이 없으면 내용만 전송
        if(null == mailData.get("upload")){
                 msg.setText(PwMeg);
          } else {
            //첨부파일이 있으면
            BodyPart body = new MimeBodyPart();
              BodyPart upload = (BodyPart)mailData.get("upload");
              body.setText(PwMeg);
              MimeMultipart multipart = new MimeMultipart();
              multipart.addBodyPart(body);
              multipart.addBodyPart(upload);
              msg.setContent(multipart);
              
           }
        //전송
        Transport.send(msg);
    }

	private HashMap getMailData(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, MessagingException {
		logger.info("getMailData 진입");
		String boundary = request.getHeader("Content-Type");
		int pos = boundary.indexOf('=');
		boundary = boundary.substring(pos + 1);
		boundary = "--" + boundary;
		ServletInputStream in = request.getInputStream();
		byte[] bytes = new byte[512];
		int state = 0;
		ByteArrayOutputStream buffer = new ByteArrayOutputStream();
		String name = null, value = null, filename = null, contentType = null;
		HashMap mailData = new HashMap();
		
		int i = in.readLine(bytes, 0, 512);
		
		while (-1 != i) {
			String st = new String(bytes, 0, i);
			if (st.startsWith(boundary)) {
				state = 0;
				if (null != name) {
					if (value != null)
						// -2 to remove CR/LF
						mailData.put(name, value.substring(0, value.length() - 2));
					else if (buffer.size() > 2) {
						System.out.println("파일이름1= "+filename);
						MimeBodyPart bodyPart = new MimeBodyPart();
						DataSource ds = new ByteArrayDataSource(buffer.toByteArray(), contentType, filename);
						System.out.println("파일이름2= "+filename);
						bodyPart.setDataHandler(new DataHandler(ds));
						bodyPart.setDisposition("attachment; filename=\"" + filename + "\"");
						bodyPart.setFileName(filename);
						mailData.put(name, bodyPart);
						System.out.println("파일이름3= "+filename);
					}
					name = null;
					value = null;
					filename = null;
					contentType = null;
					buffer = new ByteArrayOutputStream();
				}
			} else if (st.startsWith("Content-Disposition: form-data") && state == 0) {
				StringTokenizer tokenizer = new StringTokenizer(st, ";=\"");
				while (tokenizer.hasMoreTokens()) {
					String token = tokenizer.nextToken();
					if (token.startsWith(" name")) {
						name = tokenizer.nextToken();
						state = 2;
					} else if (token.startsWith(" filename")) {
						System.out.println("파일이름4= "+filename);
						filename = MimeUtility.encodeText(tokenizer.nextToken());
						System.out.println("파일이름5= "+filename);
						StringTokenizer ftokenizer = new StringTokenizer(filename, "\\/:");
						filename = ftokenizer.nextToken();
						while (ftokenizer.hasMoreTokens())
							filename = ftokenizer.nextToken();
						state = 1;
						break;
					}
				}
			} else if (st.startsWith("Content-Type") && state == 1) {
				pos = st.indexOf(":");
				// + 2 to remove the space
				// - 2 to remove CR/LF
				contentType = st.substring(pos + 2, st.length() - 2);
			} else if (st.equals("\r\n") && state == 1)
				state = 3;
			else if (st.equals("\r\n") && state == 2)
				state = 4;
			else if (state == 4)
				value = value == null ? st : value + st;
			else if (state == 3)
				buffer.write(bytes, 0, i);
			i = in.readLine(bytes, 0, 512);
		}
		return mailData;
	}
	
	public class ByteArrayDataSource implements DataSource {

		byte[] bytes;
		String contentType;
		String name;

		ByteArrayDataSource(byte[] bytes, String contentType, String name) {
			this.bytes = bytes;
			if (contentType == null)
				this.contentType = "application/octet-stream";
			else
				this.contentType = contentType;
			this.name = name;
		}

		@Override
		public String getContentType() {
			return contentType;
		}

		@Override
		public InputStream getInputStream() {
			// 가장 마지막의 CR/LF를 없앤다.
			return new ByteArrayInputStream(bytes, 0, bytes.length - 2);
		}

		@Override
		public String getName() {
			return name;
		}

		@Override
		public OutputStream getOutputStream() throws IOException {
			throw new FileNotFoundException();
		}
	}
	
	class MyAuthentication extends Authenticator {
		 
        private PasswordAuthentication pa;
        private String id;
        private String pw;
 
        private MyAuthentication() {
 
            id = "bjj7425@gmail.com"; // 구글 ID
            pw = "qowowls1"; // 구글 비밀번호
            pa = new PasswordAuthentication(id, pw);
        }
 
        // 시스템에서 사용하는 인증정보
        public PasswordAuthentication getPasswordAuthentication() {
            return pa;
        }
    }
	
	@RequestMapping(value = "/search_blog_get", method = RequestMethod.GET)
	public ResponseEntity<StringBuffer> register() {// @RequestBody이거 쓰면 무조건 json형식 사용할 때 씀
		
		ResponseEntity<StringBuffer> entity = null;
		try {
			StringBuffer str=search_blog();
			entity = new ResponseEntity<StringBuffer>(str, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<StringBuffer>(HttpStatus.BAD_REQUEST);// 400 error
		}
		return entity;
	}
	
	public static StringBuffer search_blog(){
		String clientId = "PyGCsWIsGzsdElyaiWIM";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "Q78eM76t3V";//애플리케이션 클라이언트 시크릿값";
        StringBuffer response = new StringBuffer();
        try {
            String text = URLEncoder.encode("대구홈페이지제작 웹에이드", "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/search/blog?query="+ text; // json 결과
            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine+"\n");
            }
            
            br.close();
            System.out.println(response.toString());
            return response;
        } catch (Exception e) {
            System.out.println(e);
        }
		return response;
	}
	
	//div drag test
	@RequestMapping(value = "/drag_test", method = RequestMethod.GET)
	public String drag_test(Model model) {
		logger.info("drag_test");
		
		return "test/div_drag";
	}
	
}
