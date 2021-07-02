package com.lear.controller;


import com.github.pagehelper.PageInfo;
import com.lear.domain.Hr;
import com.lear.domain.Login_password;
import com.lear.service.IHrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("hr")
public class HrController {
    @Autowired
    private IHrService iHrService;
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "4")Integer size, @RequestParam String c) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Hr> list= iHrService.all(page,size);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("hr_list");
        return mv;
    }
    @RequestMapping("/delete.do")
    public String delete(@RequestParam int id, @RequestParam String c) throws Exception {
        if(id!=0&&c.equals("admin")){
            iHrService.deleteById(id);
        }
        return "redirect:findAll.do?page=1&size=4&c=admin";
    }
}
