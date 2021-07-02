package com.lear.dao;

import com.lear.domain.Login_password;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ILogin_passwordDao {
    @Select("select login_id,phone,password from login_password where phone=#{phone} and password=#{password}")
    @Results({
            @Result(column = "login_id",property = "login_id",id = true),
            @Result(column = "phone", property = "phone"),
            @Result(column = "password",property = "password")
    })
    Login_password findIdByLogin(Login_password login_password) throws Exception;

    @Insert("insert into login_password(login_id,phone,password) values(0,#{phone},#{password})")
    int save(Login_password login_password) throws Exception;

    @Select("select * from login_password")
    List<Login_password> all() throws Exception;

    @Select("select login_id,phone,password from login_password where phone=#{phone}")
    @Results({
            @Result(column = "login_id",property = "login_id",id = true),
            @Result(column = "phone", property = "phone"),
            @Result(column = "password",property = "password")
    })
    Login_password findByPhone(String phone);

    @Select("select login_id,phone,password from login_password where phone like #{phone}")
    @Results({
            @Result(column = "login_id",property = "login_id",id = true),
            @Result(column = "phone", property = "phone"),
            @Result(column = "password",property = "password")
    })
    List<Login_password> findByPhones(@Param("phone") String phone);

    @Select("select count(1) from login_password")
    int allCount();
}
