package com.lear.dao;


import com.lear.domain.Company;
import com.lear.domain.Hr;
import com.lear.mapperprovider.HrMapperProvider;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IHrDao {
    @Select("select hr_id,head_portrait,name,post,company_id from hr where hr_id=#{hr_id}")
    @Results({
            @Result(column = "hr_id",property = "hr_id",id = true),
            @Result(column = "head_portrait",property = "head_portrait"),
            @Result(column = "name",property = "name"),
            @Result(column = "post",property = "post"),
            @Result(column = "company_id",property = "company",javaType = Company.class,
            one = @One(select = "com.lear.dao.ICompanyDao.findById"))
    })
    List<Hr> findByHr_id(int hr_id) throws Exception;

    /**
     * 查询表总记录数
     * @return
     * @throws Exception
     */
    @Select("select count(1) from hr")
    int allCount() throws Exception;

    /**
     * 查询所有
     * @return
     * @throws Exception
     */
    @Select("select * from hr")
    @Results({
            @Result(id = true,column = "hr_id",property = "hr_id"),
            @Result(column = "head_portrait",property = "head_portrait"),
            @Result(column = "name",property = "name"),
            @Result(column = "post",property = "post"),
            @Result(column = "company_id",property = "company",javaType = Company.class,
                    one = @One(select = "com.lear.dao.ICompanyDao.findById"))
    })
    List<Hr> all() throws Exception;

    

    /**
     * 根据登录id删除
     * @param hr_id
     * @return
     * @throws Exception
     */
    @Delete("delete from hr where hr_id=#{hr_id}")
    int deleteById(int hr_id) throws Exception;

    /**
     * 根据信息修改
     * @param hr
     * @return
     * @throws Exception
     */
    @UpdateProvider(type = HrMapperProvider.class,method = "update")
    int update(Hr hr) throws Exception;

    /**
     * 添加
     * @param hr
     * @return
     * @throws Exception
     */
    @InsertProvider(type = HrMapperProvider.class,method = "insert")
    int insert(Hr hr) throws Exception;

    @Select("select * from hr where hr_id=#{hr_id}")
    @Results({
            @Result(id = true,column = "hr_id",property = "hr_id"),
            @Result(column = "head_portrait",property = "head_portrait"),
            @Result(column = "name",property = "name"),
            @Result(column = "post",property = "post"),
            @Result(column = "company_id",property = "company",javaType = Company.class,
                    one = @One(select = "com.lear.dao.ICompanyDao.findById"))
    })
    Hr findById(int hr_id) throws Exception;
}
