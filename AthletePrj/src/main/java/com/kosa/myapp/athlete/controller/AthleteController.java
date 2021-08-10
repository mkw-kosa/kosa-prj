package com.kosa.myapp.athlete.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosa.myapp.athlete.model.AthleteVO;
import com.kosa.myapp.athlete.service.IAthleteService;


@Controller
public class AthleteController {

	@Autowired
	IAthleteService athleteService;
	
	@RequestMapping(value="/ath/update/{athid}", method=RequestMethod.GET) // DB에서 가져와서 폼에 출력.
	public String updateAth(@PathVariable int athid, Model model, HttpSession session) {
		 AthleteVO athlete = athleteService.getAthInfo(athid);
		 model.addAttribute("athlete", athlete);
		 String name = (String) session.getAttribute("name");
	      System.out.println(name);
	      if(!name.equals("admin")) {
	         System.out.println(name);
	         return "redirect:/login";
	      }else return "updateform"; // 원래는 jsp 파일의 경로
	}
	
	@RequestMapping(value="/ath/update/{athid}", method=RequestMethod.POST) // DB에 값을 줄때. 변경할 때.
	public String updateAth(AthleteVO athlete) {
		athleteService.updateAth(athlete);
		return "redirect:/ath/" + athlete.getId(); // redirect는 url
	}
	
	@RequestMapping(value="/ath/delete/{athid}", method=RequestMethod.GET)
	public String deleteAth(@PathVariable int athid, Model model, HttpSession session) {
		model.addAttribute("athlete", athleteService.getAthInfo(athid));
		String name = (String) session.getAttribute("name");
	      System.out.println(name);
	      if(!name.equals("admin")) {
	         System.out.println(name);
	         return "redirect:/login";
	      }else return "deleteform";
		
	}
	
	@RequestMapping(value="/ath/delete", method=RequestMethod.POST)
	public String deleteAth(int athid, Date birthDate) {
		athleteService.deleteAth(athid, birthDate);
		System.out.println(athid);
		System.out.println(birthDate);
		return "redirect:/ath/list";
	}
	
	 //입력창 띄우기
	   @RequestMapping(value="/ath/insert", method=RequestMethod.GET)
	   public String insertAth(HttpServletRequest request, HttpSession session) {
	      String name = (String) session.getAttribute("name");
	      //String id = request.getParameter("id");
	      System.out.println(name);
	      if(!name.equals("admin")) {
	         System.out.println(name);
	         return "redirect:/login";
	      }else return "insertform";
	      
//	      return "insertform";
	   }
	   
	   
	   //사원정보 디비로 넘기기
	   @RequestMapping(value= "/ath/insert", method=RequestMethod.POST)
	   public String insertAth(AthleteVO athlete, HttpServletRequest request) {
	      athleteService.insertAth(athlete);
	      return "redirect:/ath/list";
	   }

	   @RequestMapping(value={"/", "/ath/list"})
		public String getAthList(Model model) {
			List<AthleteVO> athList = athleteService.getAthList();
			model.addAttribute("athList", athList);
			return "list";
		}
		
		@RequestMapping(value="/ath/{id}")
		public String getAthInfo(@PathVariable int id, Model model) {
			AthleteVO ath = athleteService.getAthInfo(id);
			model.addAttribute("ath", ath);
			return "view";
		}
		
		@RequestMapping(value="/login", method=RequestMethod.GET)
		public String login() {
			return "login";
		}
			
		@RequestMapping(value="/login", method=RequestMethod.POST)
		public String login(String name, String password, HttpSession session, Model model) {
			AthleteVO admin = athleteService.selectAdmin(name);
			if(admin != null) {
				String dbPassword = admin.getSports();
					if(dbPassword == null) {
					//아이디가 없음
					model.addAttribute("message", "NOT_VALID_USER");
				}else {
					//아이디 있음
					if(dbPassword.equals(password)) {
						//비밀번호 일치
						session.setAttribute("name", name);
							return "login";
					}else {
						//비밀번호 불일치
						model.addAttribute("message", "WRONG_PASSWORD");
					}
				}
			}else {
				model.addAttribute("message", "USER_NOT_FOUND");
			}
			session.invalidate();	
			return "login";
		}
		
		@RequestMapping(value="/logout", method=RequestMethod.GET)
		public String logout(HttpSession session, HttpServletRequest request) {
			session.invalidate(); //로그아웃
			return "redirect:/login";
		}
		
		
		@RequestMapping("/search")
		public String search(@RequestParam(required=false, defaultValue="") String sports, Model model) {
			try {
				List<AthleteVO> sportsList = athleteService.searchListBySports(sports);
				model.addAttribute("sportsList", sportsList);
				model.addAttribute("sports", sports);
				System.out.println(sportsList);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "search";
		}
}
