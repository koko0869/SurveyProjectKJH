package pack;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pack.survey.mapper.SurveyMapper;

@Controller
public class Test {

	@Resource(name="pack.survey.mapper.SurveyMapper")
	SurveyMapper mSurveyMapper;
	
	@RequestMapping("/test")
	private String test(Model model) throws Exception{
		System.out.println(mSurveyMapper.surveyCount());
		model.addAttribute("mCount", mSurveyMapper.surveyCount());
		return "index";
	}
}
