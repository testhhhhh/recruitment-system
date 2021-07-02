package com.lear.service;

import com.lear.domain.Category;

import java.util.List;
import java.util.Map;

public interface ICategoryService {
    Map<Integer, Category> categoryMap() throws Exception;

    List<Category> all(int page,int size) throws Exception;

    int delete(int category_id) throws Exception;

    Category findById(int category_id) throws Exception;

    int insert(Category category) throws Exception;

    int update(Category category) throws Exception;

    Map<Integer,Category> fOrCCategoryMap(int level) throws Exception;

    int allCount() throws Exception;
}
