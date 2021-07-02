package com.lear.service.Impl;

import com.github.pagehelper.PageHelper;
import com.lear.dao.IPositionDao;
import com.lear.domain.Position;
import com.lear.service.IPositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class PositionServiceImpl implements IPositionService {
    @Autowired
    private IPositionDao iPositionDao;
    @Override
    public List<Position> findByCity_id(int city_id) throws Exception {
        return iPositionDao.findByCity_id(city_id);
    }

    @Override
    public List<Position> all(int page,int size) throws Exception {
        PageHelper.startPage(page,size);//必须写在调用查询函数的前一句，前两句都不行
        return iPositionDao.all();
    }

    @Override
    public List<Position> findByCategory_id(int category_id) throws Exception {
        PageHelper.startPage(1,100);
        return iPositionDao.findByCategory_id(category_id);
    }

    @Override
    public Position findByPosition_id(int position_id) throws Exception {
        return iPositionDao.findByPosition_id(position_id);
    }

    @Override
    public int allCount() throws Exception {
        return iPositionDao.allCount();
    }

    @Override
    public int delete(int id) throws Exception {
        return iPositionDao.delete(id);
    }

    @Override
    public List<Position> findBySome(Position position) throws Exception {
        PageHelper.startPage(1,100);
        return iPositionDao.findBySome(position);
    }

    @Override
    public int insert(Position position) throws Exception {
        return iPositionDao.insert(position);
    }
}
