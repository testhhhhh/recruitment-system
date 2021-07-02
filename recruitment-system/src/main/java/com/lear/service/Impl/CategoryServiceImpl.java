package com.lear.service.Impl;

import com.github.pagehelper.PageHelper;
import com.lear.dao.ICategoryDao;
import com.lear.domain.Category;

import com.lear.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
@Service
@Transactional
public class CategoryServiceImpl implements ICategoryService {


    @Autowired
    private ICategoryDao iCategoryDao;

    @Override
    public Map<Integer, Category> categoryMap() throws Exception {
        return iCategoryDao.categoryMap();
    }

    @Override
    public List<Category> all(int page,int size) throws Exception {
        PageHelper.startPage(page,size);//必须写在调用查询函数的前一句，前两句都不行
        return iCategoryDao.all();
    }

    @Override
    public int delete(int category_id) throws Exception {
        return iCategoryDao.delete(category_id);
    }

    @Override
    public Category findById(int category_id) throws Exception {
        return iCategoryDao.findById(category_id);
    }

    @Override
    public int insert(Category category) throws Exception {
        return iCategoryDao.insert(category);
    }

    @Override
    public int update(Category category) throws Exception {
        return iCategoryDao.update(category);
    }

    @Override
    public Map<Integer, Category> fOrCCategoryMap(int level) throws Exception {
        return iCategoryDao.fOrCCategoryMap(level);
    }

    @Override
    public int allCount() throws Exception {
        return iCategoryDao.allCount();
    }
}
