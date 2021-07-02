package com.lear.controller;

import com.github.pagehelper.PageInfo;
import com.lear.domain.City;
import com.lear.domain.Login_password;
import com.lear.service.ICityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("city")
public class CityController {
    @Autowired
    private ICityService iCityService;
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "4")Integer size, @RequestParam String c) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<City> list= iCityService.all(page,size);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("city_list");
        return mv;
    }
    @RequestMapping("/cityMap.do")
    public String cityMap(HttpServletRequest request) throws Exception {
        Map<Integer,City> list= iCityService.cityMap();
        request.getSession().setAttribute("citys",list);
        return "";
    }
}
