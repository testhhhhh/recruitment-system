package com.lear.controller;

import com.github.pagehelper.PageInfo;
import com.lear.domain.Company;
import com.lear.domain.Login_password;
import com.lear.service.ICompanyService;
import com.lear.service.IHrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.concurrent.ConcurrentMap;

@Controller
@RequestMapping("company")
public class CompanyController {
    @Autowired
    private ICompanyService iCompanyService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "10")Integer size, @RequestParam String c,int flag) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Company> list= iCompanyService.all(page,size,flag);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        if(c.equals("a")){
            mv.setViewName("company_list");
        }
        else if(c.equals("c")){

            mv.setViewName("companycheck_list");
        }

        return mv;
    }
    @RequestMapping("/delete.do")
    public String delete(@RequestParam int id, @RequestParam String c) throws Exception {
        if(id!=0&&c.equals("admin")){
            iCompanyService.deleteById(id);
        }
        return "redirect:findAll.do?page=1&size=4&c=admin";
    }
    @RequestMapping("/updateFlag.do")
    public String updateFlag(Company company) throws Exception {

        iCompanyService.updateFlag(company);

        return "redirect:findAll.do?c=c&cpage=1&flag=0";
    }
    @RequestMapping("/someForSearch.do")
    public ModelAndView someForSearch(String name,@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "10")Integer size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Company> list = iCompanyService.someForSearch("%"+name+"%",page,size);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("company_list");
        return mv;
    }
    @RequestMapping("/insert.do")
    public String insert(Company company,@RequestParam("c") String c) throws Exception {

        iCompanyService.insert(company);

        return "redirect:../user/hr_company.jsp";
    }
    @RequestMapping("/findById.do")
    public String findById(int id, HttpServletRequest request) throws Exception {

        Company company = iCompanyService.findById(id);
        request.setAttribute("company",company);

        return "redirect:user/hrc_company.jsp";
    }
}
