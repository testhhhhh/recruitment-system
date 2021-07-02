package com.lear.controller;

import com.github.pagehelper.PageInfo;
import com.lear.domain.Category;
import com.lear.domain.City;
import com.lear.domain.Login_password;
import com.lear.service.ICategoryService;
import com.lear.service.ICityService;
import com.lear.service.ILogin_passwordService;
import com.lear.service.IPositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("users")
public class Login_passwordController {

    @Autowired
    private ILogin_passwordService iLogin_passwordService;
    @Autowired
    private IPositionService iPositionService;
    @Autowired
    private ICityService iCityService;
    @Autowired
    private ICategoryService iCategoryService;

    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    public String login(String phone, String password, HttpServletRequest request, String c) throws Exception {
        Login_password login_password = new Login_password();
        login_password.setPhone(phone);
        login_password.setPassword(password);
        login_password = iLogin_passwordService.findIdByLogin(login_password);
        if(login_password!=null){
            request.getSession().setAttribute("user",login_password);
            if(c.equals("a"))
                return "admin";
            else{
                Map<Integer, Category> categoryMap = iCategoryService.categoryMap();
                Map<Integer, City> cityMap = iCityService.cityMap();
                request.getSession().setAttribute("citys",cityMap);
                System.out.println("----------------------"+cityMap.values());
                for (City ci:cityMap.values()) {
                    System.out.println(ci.getName());
                }
                request.getSession().setAttribute("categorys",categoryMap);
                request.getSession().setAttribute("category_id",0);
                return "../position/findAll.do?c=u&cpage=1";
            }

        }
        else{
            request.getSession().setAttribute("user",null);
            request.setAttribute("msg","登录失败");
            return "admin_login.jsp";
        }
    }

    @RequestMapping(value = "/register.do",method = RequestMethod.POST)
    public ModelAndView save(String phone,String password,String repassword,String c) throws Exception {
        ModelAndView mv = new ModelAndView();
        if(!password.equals(repassword)){
            mv.addObject("msg","false");
            mv.setViewName("admin_login");
        }
        Login_password login_password = new Login_password();
        login_password.setPhone(phone);
        login_password.setPassword(password);
        if(iLogin_passwordService.findByPhone(phone)!=null){
            mv.addObject("user",null);
            mv.addObject("msg","exit");
            mv.setViewName("manager_add");
        }

        int result = iLogin_passwordService.save(login_password);
        if(result!=0){
           mv.addObject("user",login_password);
            mv.addObject("msg","success");
            if(c.equals("a"))
                mv.setViewName("manager_add");
            else
                mv.setViewName("admin_login");
        }
        else{
            mv.addObject("user",null);
            mv.addObject("msg","success");
            mv.setViewName("admin_login");
        }
        return mv;
    }

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "10")Integer size, @RequestParam String c) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Login_password> list= iLogin_passwordService.all(page,size);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("member_list");
        return mv;
    }

    @RequestMapping("/search.do")
    public ModelAndView findByPhones(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "4")Integer size,String phone) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Login_password> list = iLogin_passwordService.findByPhones("%"+phone+"%",page,size);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("member_list");
        return mv;
    }

}
