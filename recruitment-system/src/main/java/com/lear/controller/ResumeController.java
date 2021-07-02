package com.lear.controller;

import com.github.pagehelper.PageInfo;
import com.lear.domain.Candidate;
import com.lear.domain.Resume;
import com.lear.service.IResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("resume")
public class ResumeController {
    @Autowired
    private IResumeService iResumeService;
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "4")Integer size, @RequestParam String c) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Resume> list= iResumeService.all(page,size);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("resume_list");
        return mv;
    }
    @RequestMapping("/delete.do")
    public String delete(@RequestParam int id, @RequestParam String c) throws Exception {
        if(id!=0&&c.equals("admin")){
            iResumeService.delete(id);
        }
        return "redirect:findAll.do?page=1&size=4&c=admin";
    }
    @RequestMapping("/findByCandidate_id.do")
    public ModelAndView findByCandidate_id(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "10")Integer size,int id) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Resume> list= iResumeService.findByCandidate_id(page,size,id);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("resume_list");
        return mv;
    }
}
