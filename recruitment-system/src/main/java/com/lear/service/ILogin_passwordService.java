package com.lear.service;

import com.lear.domain.Login_password;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ILogin_passwordService {

    Login_password findIdByLogin(Login_password login_password) throws Exception;

    int save(Login_password login_password) throws Exception;

    List<Login_password> all(int page,int size) throws Exception;

    Login_password findByPhone(String phone) throws Exception;

    List<Login_password> findByPhones(@Param("phone") String phone, @Param("page")int page,@Param("size")int size) throws Exception;

    int allCount() throws Exception;
}
