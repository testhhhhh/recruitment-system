package com.lear.service.Impl;

import com.github.pagehelper.PageHelper;
import com.lear.dao.ICityDao;
import com.lear.domain.City;
import com.lear.service.ICityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
@Service
@Transactional
public class CityServiceImpl implements ICityService {

    @Autowired
    private ICityDao iCityDao;
    @Override
    public Map<Integer,City> cityMap() throws Exception {
        return iCityDao.cityMap();
    }

    @Override
    public List<City> all(int page,int size) throws Exception {
        PageHelper.startPage(page,size);//必须写在调用查询函数的前一句，前两句都不行
        return iCityDao.all();
    }

    @Override
    public int delete(int city_id) throws Exception {
        return iCityDao.delete(city_id);
    }

    @Override
    public City findById(int city_id) throws Exception {
        return iCityDao.findById(city_id);
    }

    @Override
    public int insert(City city) throws Exception {
        return iCityDao.insert(city);
    }

    @Override
    public int update(City city) throws Exception {
        return iCityDao.update(city);
    }

    @Override
    public Map<Integer,City> fOrCCategoryMap(int level) throws Exception {
        return iCityDao.fOrCCategoryMap(level);
    }

    @Override
    public int allCount() throws Exception {
        return iCityDao.allCount();
    }
}
