package com.lear.service;

import com.lear.domain.Resume;


import java.util.List;

public interface IResumeService {
    List<Resume> findByCandidate_id(Integer page,Integer size,int candidate_id) throws Exception;

    int insert(Resume resume) throws Exception;

    int update(Resume resume) throws Exception;

    int delete(int resume_id) throws Exception;

    Resume findById(int resume_id) throws Exception;

    int allCount() throws Exception;

    List<Resume> all(int page,int size) throws Exception;
}
