package com.lear.controller;

import com.github.pagehelper.PageInfo;
import com.lear.domain.Category;
import com.lear.domain.Login_password;
import com.lear.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("category")
public class CategoryController {
    @Autowired
    private ICategoryService iCategoryService;
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")Integer page,@RequestParam(name = "size",required = true,defaultValue = "10")Integer size, @RequestParam String c) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Category> list= iCategoryService.all(page,size);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("category_list");
        return mv;
    }
    @RequestMapping("/delete.do")
    public String delete(@RequestParam int id, @RequestParam String c) throws Exception {
        if(id!=0&&c.equals("admin")){
            iCategoryService.delete(id);
        }
        return "redirect:findAll.do?page=1&size=4&c=admin";
    }
    @RequestMapping("/add.do")
    public ModelAndView insert(Category category) throws Exception {
        ModelAndView mv = new ModelAndView();
        int result= iCategoryService.insert(category);
        mv.addObject("msg","success");
        mv.setViewName("category_add");
        return mv;
    }
    @RequestMapping("/update.do")
    public ModelAndView update(Category category) throws Exception {
        ModelAndView mv = new ModelAndView();
        int result= iCategoryService.update(category);
        mv.addObject("category",category);
        mv.addObject("msg","success");
        mv.setViewName("category_update");
        return mv;
    }
    @RequestMapping("/findById.do")
    public ModelAndView findById(int id) throws Exception {
        ModelAndView mv = new ModelAndView();
        Category category= iCategoryService.findById(id);
        mv.addObject("category",category);
        mv.setViewName("category_update");
        return mv;
    }

}
