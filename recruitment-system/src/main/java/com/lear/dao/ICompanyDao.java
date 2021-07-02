package com.lear.dao;


import com.lear.domain.Company;
import com.lear.mapperprovider.CompanyMapperProvider;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ICompanyDao {
    @Select("select count(1) from company")
    int allCount();
    /**
     * 查询所有
     * @return
     * @throws Exception
     */
    @Select("select * from company where flag =#{flag}")
    @Results({
            @Result(id = true,column = "company_id",property = "company_id"),
            @Result(column = "name",property = "name"),
            @Result(column = "business_registration_number",property = "business_registration_number"),
            @Result(column = "size",property = "size"),
            @Result(column = "financing_stage",property = "financing_stage"),
            @Result(column = "address",property = "address"),
            @Result(column = "hr_id",property = "hr",javaType = java.util.List.class,
                    many = @Many(select = ("com.lear.dao.IHrDao.findByHr_id")
            )),
            @Result(column = "flag",property = "flag")
    })
    List<Company> all(int flag) throws Exception;

    @Select("select * from company where name like #{name} and flag=1 order by company_id")
    @Results({
            @Result(id = true,column = "company_id",property = "company_id"),
            @Result(column = "name",property = "name"),
            @Result(column = "business_registration_number",property = "business_registration_number"),
            @Result(column = "size",property = "size"),
            @Result(column = "financing_stage",property = "financing_stage"),
            @Result(column = "address",property = "address"),
            @Result(column = "hr_id",property = "hr",javaType = java.util.List.class,
                    many = @Many(select = ("com.lear.dao.IHrDao.findByHr_id")
                    )),
            @Result(column = "flag",property = "flag")
    })
        //这里的name传过来前要拼接"%"+name+"%"
    List<Company> someForSearch(String name) throws Exception;

    /**
     * 根据登录id删除
     * @param company_id
     * @return
     * @throws Exception
     */
    @Delete("delete from company where company_id=#{company_id}")
    int deleteById(int company_id) throws Exception;

    /**
     * 添加
     * @param company
     * @return
     * @throws Exception
     */
    @InsertProvider(type = CompanyMapperProvider.class,method = "insert")
    int insert(Company company) throws Exception;

    /**
     * 审核
     * @param company
     * @return
     * @throws Exception
     */
    @UpdateProvider(type = CompanyMapperProvider.class,method = "updateFlag")
    int updateFlag(Company company) throws Exception;

    /**
     * 根据公司id查找公司
     * @param company_id
     * @return
     * @throws Exception
     */
    @Select("select * from company where company_id=#{company_id}")
    Company findById(int company_id) throws Exception;
}
