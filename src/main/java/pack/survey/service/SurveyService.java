package pack.survey.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import pack.survey.domain.SurveyVO;
import pack.survey.mapper.SurveyMapper;

@Service("pack.survey.service.SurveyService")
public class SurveyService {

	
	@Resource(name="pack.survey.mapper.SurveyMapper")
	SurveyMapper mSurveyMapper;
	
	public int surveyInsertService(SurveyVO survey) throws Exception{
		return mSurveyMapper.surveyInsert(survey);
	}
}
