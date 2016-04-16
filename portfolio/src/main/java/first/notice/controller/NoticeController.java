package first.notice.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import first.common.common.CommandMap;
import first.notice.service.NoticeService;

@Controller
public class NoticeController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="noticeService")
	private NoticeService noticeService;
	 
	/*
	 * 작성자 : 심진우
	 * 작성일 : 16.04.15
	 * 설   명 : 최초 알림사항 목록 오픈 (main)
	 */
	@RequestMapping(value="/notice/openNoticeList.do")
    public ModelAndView openMain(CommandMap commandMap) throws Exception{
    	ModelAndView mv = new ModelAndView("/notice/noticeList");
    	
    	return mv;
    }
}
