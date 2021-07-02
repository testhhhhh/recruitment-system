package com.lear.service.Impl;


import com.github.pagehelper.PageHelper;
import com.lear.dao.INoticeDao;
import com.lear.domain.Notice;
import com.lear.service.INoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class NoticeServiceImpl implements INoticeService {
    @Autowired
    private INoticeDao iNoticeDao;
    @Override
    public int allCount() throws Exception {
        return iNoticeDao.allCount();
    }

    @Override
    public int someCount(String title) throws Exception {
        return iNoticeDao.someCount(title);
    }

    @Override
    public List<Notice> all(int page,int size) throws Exception {
        PageHelper.startPage(page,size);//必须写在调用查询函数的前一句，前两句都不行
        return iNoticeDao.all();
    }

    @Override
    public List<Notice> someForSearch(String title, int page,int size) throws Exception {
        PageHelper.startPage(page,size);//必须写在调用查询函数的前一句，前两句都不行
        return iNoticeDao.someForSearch(title);
    }

    @Override
    public int deleteById(int notice_id) throws Exception {
        return iNoticeDao.deleteById(notice_id);
    }

    @Override
    public int update(Notice notice) throws Exception {
        return iNoticeDao.update(notice);
    }

    @Override
    public int insert(Notice notice) throws Exception {
        return iNoticeDao.insert(notice);
    }

    @Override
    public Notice findById(int notice_id) throws Exception {
        return iNoticeDao.findById(notice_id);
    }
}
