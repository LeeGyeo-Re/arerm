package com.syaku.bbs;

import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.MessageSource;
import org.springframework.oxm.xstream.XStreamMarshaller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.View;

import com.syaku.bbs.dao.BbsDao;
import com.syaku.bbs.dao.BbsVo;
import com.thoughtworks.xstream.XStream;

@Controller(value = "viewController")
public class ViewController {
    private static final Logger logger = LoggerFactory.getLogger(ViewController.class);

    // Resource ������̼��� �̿��Ͽ� BbsDao ����.
    @Resource(name = "bbsDao")
    private BbsDao bbsDao;
    
    @Resource(name="messageSource")
	private MessageSource messageSource;

    // �Խ��� ���
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String dispBbsList(Model model) {
        logger.info("display view BBS list");
        List<BbsVo> list = this.bbsDao.getSelect();
        model.addAttribute("list", list);

        logger.info("totcal count" + list.size() );

        return "bbs.list";
    }
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String mainArerm() {
        logger.info("display view Main for arerm");

        return "index1";
    }

    /*@RequestMapping("/list")
    public String dispBbsList(@PathVariable int idx, Model model) {
    	 logger.info("display view BBS list");
         List<BbsVo> list = this.bbsDao.getSelect();
         model.addAttribute("list", list);

         logger.info("totcal count" + list.size() );

         return "bbs.list";
    }*/
    // �Խ��� �󼼺�
    // PathVariable ������̼��� �̿��Ͽ� RESTful ��� ����
    // bbs/1 -> id = 1; id = �Խù� ��ȣ�� �ν���.
    // �Ϲ� ������ (@ReuqstParam(value = "bbsVo", required = false, defaultValue = "0"), int idx, Model model)
    @RequestMapping("/{idx}")
    public String dispBbsView(@PathVariable int idx, Model model) {
        logger.info("display view BBS view idx = {}", idx);
        BbsVo object = this.bbsDao.getSelectOne(idx);

        model.addAttribute("object", object);
        return "bbs.view";
    }
    
    

    // �Խ��� ����
    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String dispBbsWrite(@RequestParam(value="idx", defaultValue="0") int idx, Model model) {
        logger.info("display view BBS write");

        if (idx > 0) {
            BbsVo object = this.bbsDao.getSelectOne(idx);
            model.addAttribute("object", object);
        }

        return "bbs.write";
    }

    @RequestMapping(value = "/write_ok", method = RequestMethod.POST)
    public View procBbsWrite(@ModelAttribute("bbsVo") @Valid BbsVo bbsVo, BindingResult result,Model model) {
        XStream xst = xstreamMarshaller.getXStream();
        xst.alias("result", XmlResult.class);

        XmlResult xml = new XmlResult();
        
        if (result.hasErrors()) {
        	//String message = (String) result.getFieldErrors().iterator().next().getDefaultMessage();
        	//String message = messageSource.getMessage(result.getFieldError(), Locale.getDefault());
        	String message = messageSource.getMessage(result.getFieldError(), Locale.ENGLISH);
        	xml.setMessage( message );
            xml.setError(true);
            model.addAttribute("xmlData", xml);
            return xmlView;
        }
        
        Integer idx = bbsVo.getIdx();
        /*
        if (idx == null || idx == 0) { 
            this.bbsDao.insert(bbsVo);
            xml.setMessage("�߰��Ǿ����ϴ�.");
            xml.setError(false);
        } else {
            this.bbsDao.update(bbsVo);
            xml.setMessage("�����Ǿ����ϴ�.");
            xml.setError(false);
        }*/
        
        try {
            if (idx == null || idx == 0) {
                 this.bbsDao.insert(bbsVo);
                 xml.setMessage("�߰��Ǿ����ϴ�.");
                 xml.setError(false);
            } else {
                 this.bbsDao.update(bbsVo);
                 xml.setMessage("�����Ǿ����ϴ�.");
                 xml.setError(false);
            }
       } catch(Exception e) {
            xml.setMessage(e.getMessage());
            xml.setError(true);
       }

        model.addAttribute("xmlData", xml);
        return xmlView;
    }

    @Resource(name = "xstreamMarshaller")
    private XStreamMarshaller xstreamMarshaller;

    @Resource(name = "xmlView")
    private View xmlView;

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public View procBbsDelete(@RequestParam(value = "idx", required = true) int idx, Model model) {
    	XStream xst = xstreamMarshaller.getXStream();
    	xst.alias("result", XmlResult.class);
    	
        //this.bbsDao.delete(idx);

        XmlResult xml = new XmlResult();
        //xml.setMessage("�����Ǿ����ϴ�.");
        //xml.setError(false);
        try {
            this.bbsDao.delete(idx);
            xml.setMessage("�����Ǿ����ϴ�.");
            xml.setError(false);
       } catch (Exception e) {
            xml.setMessage(e.toString());
            xml.setError(true);
       }

        model.addAttribute("xmlData", xml);
        return xmlView;
    }

}


// ���ϴܿ� XmlResult Ŭ���� �߰�
class XmlResult {

    private String message;
    private boolean error = false;

    public void setMessage(String message) {
        this.message = message;
    }
    public String getMessage() {
        return this.message;
    }

    public void setError(boolean error) {
        this.error = error;
    }
    public boolean getError() {
        return this.error;
    }
}