package com.lear.service;

import com.lear.domain.City;

import java.util.List;
import java.util.Map;

public interface ICityService {
    Map<Integer,City> cityMap() throws Exception;

    List<City> all(int page,int size) throws Exception;

    int delete(int city_id) throws Exception;

    City findById(int city_id) throws Exception;

    int insert(City city) throws Exception;

    int update(City city) throws Exception;

    Map<Integer,City> fOrCCategoryMap(int level) throws Exception;

    int allCount() throws Exception;
}
