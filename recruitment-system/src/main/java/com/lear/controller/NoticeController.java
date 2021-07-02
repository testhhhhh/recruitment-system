package com.lear.controller;


import com.github.pagehelper.PageInfo;
import com.lear.domain.Notice;

import com.lear.service.INoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("notice")
public class NoticeController {
    @Autowired
    private INoticeService iNoticeService;
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "100")Integer size, @RequestParam String c) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Notice> list= iNoticeService.all(page,size);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        if(c.equals("a"))
        mv.setViewName("notice_list");
        else
            mv.setViewName("../user/notice_list");
        return mv;
    }
    @RequestMapping("/delete.do")
    public String delete(@RequestParam int id, @RequestParam String c) throws Exception {
        if(id!=0&&c.equals("admin")){
            iNoticeService.deleteById(id);
        }
        return "redirect:findAll.do?page=1&size=4&c=admin";
    }
    @RequestMapping("/update.do")
    public ModelAndView update(Notice notice) throws Exception {
        ModelAndView mv = new ModelAndView();
            iNoticeService.update(notice);
        mv.addObject("msg","successful");
        mv.setViewName("notice_update");
        return mv;
    }
    @RequestMapping(value = "/add.do",method = RequestMethod.POST)
    public ModelAndView add( Notice notice) throws Exception {
        ModelAndView mv = new ModelAndView();
        iNoticeService.insert(notice);
        mv.addObject("msg","successful");
        mv.setViewName("notice_add");
        return mv;
    }
    @RequestMapping(value = "/findById.do",method = RequestMethod.GET)
    public ModelAndView findById(@RequestParam("id") int id,String c) throws Exception {
        ModelAndView mv = new ModelAndView();
        Notice notice = iNoticeService.findById(id);
        mv.addObject("notice",notice);
        if(c.equals("a"))
            mv.setViewName("notice_update");
        else
            mv.setViewName("../user/simple-product");

        return mv;
    }
    @RequestMapping(value = "/someForSearch.do",method = RequestMethod.GET)
    public ModelAndView someForSearch(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "10")Integer size,@RequestParam("title") String title) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Notice> list= iNoticeService.someForSearch("%"+title+"%",page,size);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("notice_list");
        return mv;
    }
}
