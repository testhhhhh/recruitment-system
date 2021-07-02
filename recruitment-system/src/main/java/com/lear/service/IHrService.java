package com.lear.service;


import com.lear.domain.Hr;

import java.util.List;

public interface IHrService {
    List<Hr> findByHr_id(int hr_id) throws Exception;

    int allCount() throws Exception;

    List<Hr> all(int page,int size) throws Exception;

    int deleteById(int hr_id) throws Exception;

    int update(Hr hr) throws Exception;

    int insert(Hr hr) throws Exception;

    Hr findById(int hr_id) throws Exception;
}
