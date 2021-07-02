package com.lear.controller;

import com.github.pagehelper.PageInfo;
import com.lear.domain.City;
import com.lear.domain.Login_password;
import com.lear.domain.Position;
import com.lear.service.IPositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("position")
public class PositionController {
    @Autowired
    private IPositionService iPositionService;
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "100")Integer size, @RequestParam String c) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Position> list= iPositionService.all(page,size);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        if(c.equals("a"))
        mv.setViewName("position_list");
        else
            mv.setViewName("../user/index");
        return mv;
    }
    @RequestMapping("/delete.do")
    public String delete(@RequestParam int id, @RequestParam String c) throws Exception {
        if(id!=0&&c.equals("admin")){
            iPositionService.delete(id);
        }
        return "redirect:findAll.do?page=1&size=4&c=admin";
    }
    @RequestMapping("/findBySome.do")
    public ModelAndView findBySome(Position position,@RequestParam("c") String c) throws Exception {
        System.out.println("-------------------------------"+position);
        System.out.println("++++++++++++++++++++++++++++++++++"+position);
        ModelAndView mv = new ModelAndView();
        List<Position> list= iPositionService.findBySome(position);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        if(c.equals("a"))
        mv.setViewName("position_list");
        else if(c.equals("u"))
            mv.setViewName("../user/index");
        else if(c.equals("h"))
            mv.setViewName("../user/hrindex");
        return mv;
    }
    @RequestMapping("/findById.do")
    public String findById(int id, String c,HttpServletRequest request) throws Exception {
        Position position = iPositionService.findByPosition_id(id);
        request.setAttribute("p",position);
        if(c.equals("a"))
        return "redirect:findAll.do?page=1&size=4&c=admin";
        else
            return "forward:/user/contact-us.jsp";
    }
    @RequestMapping(value = "/findByCategory_id.do",method = RequestMethod.GET)
    public String findByCategory_id(int id, HttpServletRequest request) throws Exception {
        List<Position> list = iPositionService.findByCategory_id(id);
        System.out.println("------------------"+list.size());
        PageInfo pageInfo = new PageInfo(list);
        request.getSession().setAttribute("category_id",id);
        request.setAttribute("pageInfo",pageInfo);
        return "forward:/user/index.jsp";
    }
    @RequestMapping(value = "/insert.do",method = RequestMethod.GET)
    public String insert(Position position,@RequestParam("c") String c,HttpServletRequest request) throws Exception {
        System.out.println(position);
        Login_password login_password = (Login_password) request.getSession().getAttribute("user");
        System.out.println(login_password);
        position.setRelease_time(new Date().toString());
        iPositionService.insert(position);
        return "forward:/user/hr_position.jsp";
    }
}
