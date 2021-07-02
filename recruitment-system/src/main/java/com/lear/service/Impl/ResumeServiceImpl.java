package com.lear.service.Impl;

import com.github.pagehelper.PageHelper;
import com.lear.dao.IResumeDao;
import com.lear.domain.Resume;
import com.lear.service.IResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class ResumeServiceImpl implements IResumeService {
    @Autowired
    private IResumeDao iResumeDao;

    @Override
    public List<Resume> findByCandidate_id(Integer page, Integer size, int candidate_id) throws Exception {
        PageHelper.startPage(page,size);
        return iResumeDao.findByCandidate_id(candidate_id);
    }

    @Override
    public int insert(Resume resume) throws Exception {
        return iResumeDao.insert(resume);
    }

    @Override
    public int update(Resume resume) throws Exception {
        return iResumeDao.update(resume);
    }

    @Override
    public int delete(int resume_id) throws Exception {
        return iResumeDao.delete(resume_id);
    }

    @Override
    public Resume findById(int resume_id) throws Exception {
        return iResumeDao.findById(resume_id);
    }

    @Override
    public int allCount() throws Exception {
        return iResumeDao.allCount();
    }

    @Override
    public List<Resume> all(int page,int size) throws Exception {
        PageHelper.startPage(page,size);//必须写在调用查询函数的前一句，前两句都不行
        return iResumeDao.all();
    }
}
