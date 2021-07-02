package com.lear.service;

import com.lear.domain.Candidate;


import java.util.List;

public interface ICandidateService {
    int allCount() throws Exception;


    List<Candidate> all(int page,int size) throws Exception;


    int deleteById(int candidate_id) throws Exception;


    int update(Candidate candidate) throws Exception;


    int insert(Candidate candidate) throws Exception;


    Candidate findById(int candidate_id) throws Exception;

}
