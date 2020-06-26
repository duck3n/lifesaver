package kr.co.lifesaver.user.web;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.lifesaver.user.service.JoinVO;
import kr.co.lifesaver.user.service.KakaoAPI2;
import kr.co.lifesaver.user.service.KakaoAPI3;
import kr.co.lifesaver.user.service.UserService;
import kr.co.lifesaver.user.service.impl.UserDAO;

  
@Controller
public class RegisterController {
	
	KakaoAPI2 kakao2 = new KakaoAPI2();
	KakaoAPI3 kakao3 = new KakaoAPI3();
	
	@Inject
	UserDAO dao;
	
	
	public void setDao(UserDAO dao) {
		this.dao = dao;
	}
	
	
	@RequestMapping(value = "/registerSelect")
	public String regisetSelectIndext() {
		return "login/selectjoin";
	}
	
	@RequestMapping(value = "/registerAgree")
	public String AgreeIndex() {
		return "login/agree";
	}
	
	@RequestMapping(value = "/registerSaver")
	public String registerSaverIndex() {
		return "login/saverjoin";
	}
	
	@RequestMapping(value = "/registerLaw")
	public String registerLawIndex() {
		return "login/lawjoin";
	}
		
	
	@RequestMapping(value = "/registerAuth")
	public String login(@RequestParam("code") String code, HttpSession session) {
	    String access_Token = kakao2.getAccessToken(code);
	    
	    System.out.println("로그인 성공 - 액세스 토큰 : " + access_Token);
	    HashMap<String, Object> userInfo = kakao2.getUserInfo(access_Token);
	    System.out.println("login Controller : " + userInfo);
	    
	    //    클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
	    if (userInfo.get("email") != null) {
	        session.setAttribute("userId", userInfo.get("email"));
	        session.setAttribute("access_Token", access_Token);
	    }
	    return "login/saverjoin"; // 로그인 대신에 메인으로 이동
	}
	
	@RequestMapping(value = "/registerAuthLaw")
	public String login2(@RequestParam("code") String code, HttpSession session) {
	    String access_Token = kakao3.getAccessToken(code);
	    
	    System.out.println("로그인 성공 - 액세스 토큰 : " + access_Token);
	    HashMap<String, Object> userInfo = kakao2.getUserInfo(access_Token);
	    System.out.println("login Controller : " + userInfo);
	    
	    //    클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
	    if (userInfo.get("email") != null) {
	        session.setAttribute("userId", userInfo.get("email"));
	        session.setAttribute("access_Token", access_Token);
	    }
	    return "login/lawjoin"; // 로그인 대신에 메인으로 이동
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/idChk", method = RequestMethod.GET)
	public int idChk(JoinVO vo) throws Exception{
		int result = dao.idChk(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value ="/sLicenseChk", method = RequestMethod.GET)
	public int sLicenseChk(String saver_license) throws Exception{
		int result2 = dao.sLicenseChk(saver_license);
		return result2;
	}
	
	@ResponseBody
	@RequestMapping(value ="/lLicenseChk", method = RequestMethod.GET)
	public int lLicenseChk(String law_license) throws Exception{
		int result2 = dao.sLicenseChk(law_license);
		return result2;
	}
	
	@ResponseBody
	@RequestMapping(value = "/phoneChk", method = RequestMethod.GET)
	public int phoneChk(String common_phone) throws Exception{
		int result3 = dao.phoneChk(common_phone);
		return result3;
	}
	
	
	
	@RequestMapping(value = "/saverjoinOK") // 서블릿 주소(주소창에 입력)
	public String registerSaver(HttpServletRequest req, HttpSession session) throws UnsupportedEncodingException {
		
		req.setCharacterEncoding("UTF-8");
		
		String saver_license = req.getParameter("saver_license");
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String birth = req.getParameter("year") + req.getParameter("month") + req.getParameter("day");
		String gender = req.getParameter("checkgender");
		String common_phone = req.getParameter("phone");
		String address = req.getParameter("postnumber") + req.getParameter("postaddress");
		
		String jobaddr = req.getParameter("jobaddr");
		String saver_grade = req.getParameter("saver_grade");
		
		String saver_job = "";
		
		
		
			if(saver_grade.equals("1")) {
				saver_job = "doctor";
			}
			else if(saver_grade.equals("2")) {
				saver_job = "nurse, guard";
			}
			else if(saver_grade.equals("3")) {
				saver_job = "medical workers";
			}
			else if(saver_grade.equals("4")) {
				saver_job = "certificate possessor";
			}
		
		JoinVO voCom = new JoinVO(id, pw, name, birth, gender, common_phone, address);
		
		try {
			int result = dao.idChk(voCom);
			int result2 = dao.sLicenseChk(saver_license);
			int result3 = dao.phoneChk(common_phone);
			
			if(result == 1 || result2 == 1 || result == 1) {
				return "/login/saverjoin";
			
			}else if(result == 0 && result2 == 0 && result3 == 0) {
				
				dao.register(voCom);
				
				JoinVO voSav = new JoinVO(saver_license, saver_grade, saver_job, jobaddr);
				voSav.setCommon_id(id);
				dao.insertSaver(voSav);
				
				session.setAttribute("id", id);
				session.setAttribute("name", name);
				session.setAttribute("saver_job", saver_job);
				
					
				return "main"; //jsp주소
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "main";

	}
	
	@RequestMapping(value = "/lawjoinOK")
	public String registerLaw(HttpServletRequest req, HttpSession session) throws UnsupportedEncodingException {
		
		req.setCharacterEncoding("UTF-8");
		
		String law_license = req.getParameter("law_license");
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String birth = req.getParameter("year") + req.getParameter("month") + req.getParameter("day");
		String gender = req.getParameter("checkgender");
		String common_phone = req.getParameter("phone");
		String address = req.getParameter("postnumber") + req.getParameter("postaddress");
	
		
			
			JoinVO voCom = new JoinVO(id, pw, name, birth, gender, common_phone, address);
			
			try {
				int result = dao.idChk(voCom);
				int result2 = dao.lLicenseChk(law_license);
				int result3 = dao.phoneChk(common_phone);
				
				if(result == 1 || result2 == 1 || result == 1) {
					return "login/lawjoin";
				}
				else if(result == 0 && result2 == 0 && result == 0) {
					// 가입
					dao.register(voCom);
					
					JoinVO voLaw = new JoinVO(law_license);
					voLaw.setCommon_id(id);
					dao.insertLaw(voLaw);
					
					session.setAttribute("id", id);
					session.setAttribute("name", name);
					session.setAttribute("law_license", law_license);
					
						
					return "main"; //jsp주소
				
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return "main";
	}

	@RequestMapping(value = "/agreecontext")
	public String agreecontextIndex() {
		return "login/agreecontext";
	}
}
