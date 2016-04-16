package first.main.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import first.common.common.CommandMap;
import first.main.service.MainService;

@Controller
public class MainController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="mainService")
	private MainService mainService;
	
	/*
	 * 작성자 : 심진우
	 * 작성일 : 16.04.14
	 * 설   명 : 최초 메인화면 로드 (main)
	 */
	@RequestMapping(value="/main/openMain.do")
    public ModelAndView openMain(CommandMap commandMap) throws Exception{
    	ModelAndView mv = new ModelAndView("/main/main");
    	
    	return mv;
    }
	

	/*
	 * 작성자 : 심진우
	 * 작성일 : 16.04.14
	 * 설   명 : 최초 메인화면 로드  (top)
	 */
	@RequestMapping(value="/main/openMainTop.do")
    public ModelAndView openMainTop(CommandMap commandMap) throws Exception{
    	ModelAndView mv = new ModelAndView("/main/mainTop");
    	
    	return mv;
    }
	
	
	/*
	 * 작성자 : 심진우
	 * 작성일 : 16.04.14
	 * 설   명 : 최초 메인화면 로드 (left)
	 */
	@RequestMapping(value="/main/openMainLeft.do")
    public ModelAndView openMainLeft(CommandMap commandMap) throws Exception{
    	ModelAndView mv = new ModelAndView("/main/mainLeft");
    	
    	return mv;
    }
}
