package pack.survey.mapper;

import org.springframework.stereotype.Repository;

import pack.survey.domain.SurveyVO;

@Repository("pack.survey.mapper.SurveyMapper")
public interface SurveyMapper {

	// 참가자 갯수
	public int surveyCount() throws Exception;

	// 설문조사 내용추가
	public int surveyInsert(SurveyVO survey) throws Exception;

	// 남자호랑이
	public int MTiger() throws Exception;

	// 여자호랑이
	public int WTiger() throws Exception;

	// 남자독수리
	public int MEagle() throws Exception;

	// 여자독수리
	public int WEagle() throws Exception;

	// 남자호랑이
	public int MApple() throws Exception;

	// 여자호랑이
	public int WApple() throws Exception;

	// 남자독수리
	public int MStraw() throws Exception;

	// 여자독수리
	public int WStraw() throws Exception;

}
