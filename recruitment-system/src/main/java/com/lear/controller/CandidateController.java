package com.lear.controller;

import com.github.pagehelper.PageInfo;
import com.lear.domain.Candidate;
import com.lear.service.ICandidateService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("candidate")
public class CandidateController {
    @Autowired
    private ICandidateService iCandidateService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "4")Integer size, @RequestParam String c) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Candidate>  candidateList= iCandidateService.all(page,size);
        PageInfo pageInfo = new PageInfo(candidateList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("candidate_list");
        return mv;
    }
    @RequestMapping("/find.do")
    public ModelAndView findById(@RequestParam int id, @RequestParam String c) throws Exception {
        ModelAndView mv = new ModelAndView();
        Candidate candidate = iCandidateService.findById(id);
        mv.addObject("d",candidate);
        if(c.equals("a"))
        mv.setViewName("candidate_update");
        else if(c.equals("u"))
            mv.setViewName("../user/my.account");
        else if(c.equals("s"))
            mv.setViewName("../user/pdf");
        return mv;
    }
    @RequestMapping("/update.do")
    public ModelAndView update(Candidate candidate,@RequestParam("c") String c) throws Exception {
        System.out.println("------------------------"+candidate);
        ModelAndView mv = new ModelAndView();
            int result = iCandidateService.update(candidate);
            Candidate d=iCandidateService.findById(candidate.getCandidate_id());
            mv.addObject("d",d);
            System.out.println(d);
            mv.addObject("msg","success");
            if (c.equals("a"))
            mv.setViewName("candidate_list");
            else
                mv.setViewName("../user/my.account");
        return mv;
    }

    @RequestMapping("/delete.do")
    public String delete(@RequestParam int candidate_id, @RequestParam String c) throws Exception {
        if(candidate_id!=0&&c.equals("admin")){
            iCandidateService.deleteById(candidate_id);
        }
        return "redirect:findAll.do?page=1&size=4&c=admin";
    }
}
