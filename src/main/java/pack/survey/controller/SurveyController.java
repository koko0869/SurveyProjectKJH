package pack.survey.controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import pack.survey.domain.SurveyVO;
import pack.survey.mapper.SurveyMapper;
import pack.survey.service.SurveyService;

@Controller
@SessionAttributes("sessionId")
public class SurveyController {

	@Resource(name="pack.survey.mapper.SurveyMapper")
	SurveyMapper mSurveyMapper;
	
	@Resource(name="pack.survey.service.SurveyService")
	SurveyService mSurveyService;
	
	@RequestMapping("/")
	private String SurveyInsertForm(Model model, HttpServletRequest request ) throws Exception {
		
		model.addAttribute("TotalCount", mSurveyMapper.surveyCount());
		model.addAttribute("MTiger", mSurveyMapper.MTiger());
		model.addAttribute("MEagle", mSurveyMapper.MEagle());
		model.addAttribute("WTiger", mSurveyMapper.WTiger());
		model.addAttribute("WEagle", mSurveyMapper.WEagle());
		
		model.addAttribute("MApple", mSurveyMapper.MApple());
		model.addAttribute("MStraw", mSurveyMapper.MStraw());
		model.addAttribute("WApple", mSurveyMapper.WApple());
		model.addAttribute("WStraw", mSurveyMapper.WStraw());
			return "index";			
		}
		
	@RequestMapping("/insertProc")
	private String surveyInsertProc(HttpServletRequest request, Model model) throws Exception{	
		
		SurveyVO survey = new SurveyVO();
		
		survey.setGender(request.getParameter("gender"));
		survey.setContent1(request.getParameter("content1"));
		survey.setQ1(request.getParameter("q1"));
		HttpSession session =  request.getSession();
		session.setAttribute("check", "OK");
		
		session = request.getSession();
		System.out.println(session.getAttribute("check"));
		
		mSurveyService.surveyInsertService(survey);
		
		return "redirect:/";
	}
}
