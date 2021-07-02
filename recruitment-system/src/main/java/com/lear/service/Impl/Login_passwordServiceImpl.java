package com.lear.service.Impl;

import com.github.pagehelper.PageHelper;
import com.lear.dao.ILogin_passwordDao;
import com.lear.domain.Login_password;
import com.lear.service.ILogin_passwordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class Login_passwordServiceImpl implements ILogin_passwordService {

    @Autowired
    private ILogin_passwordDao iLogin_passwordDao;

    @Override
    public Login_password  findIdByLogin(Login_password login_password) throws Exception {
        return iLogin_passwordDao.findIdByLogin(login_password);
    }

    @Override
    public int save(Login_password login_password) throws Exception {
        return iLogin_passwordDao.save(login_password);
    }

    @Override
    public List<Login_password> all(int page,int size) throws Exception {
        PageHelper.startPage(page,size);//必须写在调用查询函数的前一句，前两句都不行
        return iLogin_passwordDao.all();
    }

    @Override
    public Login_password findByPhone(String phone) throws Exception {
        return iLogin_passwordDao.findByPhone(phone);
    }

    @Override
    public List<Login_password> findByPhones(String phone,int page,int size) throws Exception {
        PageHelper.startPage(page,size);//必须写在调用查询函数的前一句，前两句都不行
        return iLogin_passwordDao.findByPhones(phone);
    }

    @Override
    public int allCount() throws Exception {
        return iLogin_passwordDao.allCount();
    }
}
