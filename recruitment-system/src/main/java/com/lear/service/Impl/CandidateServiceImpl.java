package com.lear.service.Impl;

import com.github.pagehelper.PageHelper;
import com.lear.dao.ICandidateDao;
import com.lear.domain.Candidate;
import com.lear.service.ICandidateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CandidateServiceImpl implements ICandidateService {

    @Autowired
    private ICandidateDao iCandidateDao;
    @Override
    public int allCount() throws Exception {
        return iCandidateDao.allCount();
    }

    @Override
    public List<Candidate> all(int page,int size) throws Exception {
        //参数pageNum是页码值，参数pageSize代表是每页显示条数
        PageHelper.startPage(page,size);//必须写在调用查询函数的前一句，前两句都不行
        return iCandidateDao.all();
    }

    @Override
    public int deleteById(int candidate_id) throws Exception {
        return iCandidateDao.deleteById(candidate_id);
    }

    @Override
    public int update(Candidate candidate) throws Exception {
        return iCandidateDao.update(candidate);
    }

    @Override
    public int insert(Candidate candidate) throws Exception {
        return iCandidateDao.insert(candidate);
    }

    @Override
    public Candidate findById(int candidate_id) throws Exception {
        return iCandidateDao.findById(candidate_id);
    }
}
