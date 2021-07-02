package com.lear.service.Impl;

import com.github.pagehelper.PageHelper;
import com.lear.dao.ICompanyDao;
import com.lear.domain.Company;
import com.lear.service.ICompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class CompanyServiceImpl implements ICompanyService {

    @Autowired
    private ICompanyDao iCompanyDao;
    @Override
    public List<Company> all(int page,int size,int flag) throws Exception {
        PageHelper.startPage(page,size);//必须写在调用查询函数的前一句，前两句都不行
        return iCompanyDao.all(flag);
    }

    @Override
    public List<Company> someForSearch(String name, int page, int size) throws Exception {
        PageHelper.startPage(page,size);//必须写在调用查询函数的前一句，前两句都不行
        return iCompanyDao.someForSearch(name);
    }


    @Override
    public int deleteById(int company_id) throws Exception {
        return iCompanyDao.deleteById(company_id);
    }

    @Override
    public int insert(Company company) throws Exception {
        return iCompanyDao.insert(company);
    }

    @Override
    public int updateFlag(Company company) throws Exception {
        return iCompanyDao.updateFlag(company);
    }

    @Override
    public Company findById(int company_id) throws Exception {
        return iCompanyDao.findById(company_id);
    }

    @Override
    public int allCount() throws Exception {
        return iCompanyDao.allCount();
    }
}
