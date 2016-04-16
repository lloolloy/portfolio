package first.notice.service;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import first.common.util.FileUtils;
import first.notice.dao.NoticeDAO;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Resource(name="noticeDAO")
	private NoticeDAO noticeDAO;


}
