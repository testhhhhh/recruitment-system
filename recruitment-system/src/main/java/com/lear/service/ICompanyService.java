package com.lear.service;

import com.lear.domain.Company;

import java.util.List;

public interface ICompanyService {
    List<Company> all(int page,int size,int flag) throws Exception;

    List<Company> someForSearch(String name, int page,int size) throws Exception;

    int deleteById(int company_id) throws Exception;

    int insert(Company company) throws Exception;

    int updateFlag(Company company) throws Exception;

    Company findById(int company_id) throws Exception;

    int allCount() throws Exception;
}
