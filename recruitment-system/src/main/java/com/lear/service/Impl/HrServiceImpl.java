package com.lear.service.Impl;


import com.github.pagehelper.PageHelper;
import com.lear.dao.IHrDao;
import com.lear.domain.Hr;
import com.lear.service.IHrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class HrServiceImpl implements IHrService {
    @Autowired
    private IHrDao iHrDao;
    @Override
    public List<Hr> findByHr_id(int hr_id) throws Exception {
        return iHrDao.findByHr_id(hr_id);
    }

    @Override
    public int allCount() throws Exception {
        return iHrDao.allCount();
    }

    @Override
    public List<Hr> all(int page,int size) throws Exception {
        PageHelper.startPage(page,size);//必须写在调用查询函数的前一句，前两句都不行
        return iHrDao.all();
    }

    @Override
    public int deleteById(int hr_id) throws Exception {
        return iHrDao.deleteById(hr_id);
    }

    @Override
    public int update(Hr hr) throws Exception {
        return iHrDao.update(hr);
    }

    @Override
    public int insert(Hr hr) throws Exception {
        return iHrDao.insert(hr);
    }

    @Override
    public Hr findById(int hr_id) throws Exception {
        return iHrDao.findById(hr_id);
    }
}
