package com.lear.dao;

import com.lear.domain.Candidate;
import com.lear.domain.Position;
import com.lear.mapperprovider.CandidateMapperProvider;
import com.lear.mapperprovider.PositionMapperProvider;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IPositionDao {
    @Select("select count(1) from position")
    int allCount();

    @Select("select position_id,name,work_requirement,work_experience,education_requirement,salary_requirement,release_time" +
            ",hr_id,address from position where city_id=#{city_id}")
    @Results({
            @Result(column = "position_id",property = "position_id",id = true),
            @Result(column = "name",property = "name"),
            @Result(column = "work_requirement",property = "work_requirement"),
            @Result(column = "work_experience",property = "work_experience"),
            @Result(column = "education_requirement", property = "education_requirement"),
            @Result(column = "salary_requirement",property = "salary_requirement"),
            @Result(column = "release_time",property = "release_time"),
            @Result(column = "hr_id",property = "hr",
                    one = @One(select = ("com.lear.dao.IHrDao.findByHr_id"))),
            @Result(column = "address",property = "address")
    })
    //没有封装city和category
    List<Position> findByCity_id(int city_id) throws Exception;

    @Select("select * from position")
    @Results({
            @Result(column = "position_id",property = "position_id",id = true),
            @Result(column = "name",property = "name"),
            @Result(column = "work_requirement",property = "work_requirement"),
            @Result(column = "work_experience",property = "work_experience"),
            @Result(column = "education_requirement", property = "education_requirement"),
            @Result(column = "salary_requirement",property = "salary_requirement"),
            @Result(column = "release_time",property = "release_time"),
            @Result(column = "hr_id",property = "hr",
                    one = @One(select = ("com.lear.dao.IHrDao.findByHr_id"))),
            @Result(column = "city_id",property = "city",
                    one = @One(select = ("com.lear.dao.ICityDao.findById"))),
            @Result(column = "category_id",property = "category",
                    one = @One(select = ("com.lear.dao.ICategoryDao.findById"))),
            @Result(column = "address",property = "address")
    })
    //没有封装city和category
    List<Position> all() throws Exception;
    @Select("select * from position where category_id=#{category_id}")
    @Results({
            @Result(column = "position_id",property = "position_id",id = true),
            @Result(column = "name",property = "name"),
            @Result(column = "work_requirement",property = "work_requirement"),
            @Result(column = "work_experience",property = "work_experience"),
            @Result(column = "education_requirement", property = "education_requirement"),
            @Result(column = "salary_requirement",property = "salary_requirement"),
            @Result(column = "release_time",property = "release_time"),
            @Result(column = "hr_id",property = "hr",
                    one = @One(select = ("com.lear.dao.IHrDao.findByHr_id"))),
            @Result(column = "city_id",property = "city",
                    one = @One(select = ("com.lear.dao.ICityDao.findById"))),
            @Result(column = "category_id",property = "category",
                    one = @One(select = ("com.lear.dao.ICategoryDao.findById"))),
            @Result(column = "address",property = "address")
    })
    List<Position> findByCategory_id(int category_id) throws Exception;


    @Select("select * from position where position_id=#{position_id}")
    @Results({
            @Result(column = "position_id",property = "position_id",id = true),
            @Result(column = "name",property = "name"),
            @Result(column = "work_requirement",property = "work_requirement"),
            @Result(column = "work_experience",property = "work_experience"),
            @Result(column = "education_requirement", property = "education_requirement"),
            @Result(column = "salary_requirement",property = "salary_requirement"),
            @Result(column = "release_time",property = "release_time"),
            @Result(column = "hr_id",property = "hr",
                    one = @One(select = ("com.lear.dao.IHrDao.findByHr_id"))),
            @Result(column = "city_id",property = "city",
                    one = @One(select = ("com.lear.dao.ICityDao.findById"))),
            @Result(column = "category_id",property = "category",
                    one = @One(select = ("com.lear.dao.ICategoryDao.findById"))),
            @Result(column = "address",property = "address")
    })
    Position findByPosition_id(int position_id) throws Exception;

    @Delete("delete from position where position_id=#{id}")
    int delete(int id) throws Exception;

    @Results({
            @Result(column = "position_id",property = "position_id",id = true),
            @Result(column = "name",property = "name"),
            @Result(column = "work_requirement",property = "work_requirement"),
            @Result(column = "work_experience",property = "work_experience"),
            @Result(column = "education_requirement", property = "education_requirement"),
            @Result(column = "salary_requirement",property = "salary_requirement"),
            @Result(column = "release_time",property = "release_time"),
            @Result(column = "hr_id",property = "hr",
                    one = @One(select = ("com.lear.dao.IHrDao.findByHr_id"))),
            @Result(column = "city_id",property = "city",
                    one = @One(select = ("com.lear.dao.ICityDao.findById"))),
            @Result(column = "category_id",property = "category",
                    one = @One(select = ("com.lear.dao.ICategoryDao.findById"))),
            @Result(column = "address",property = "address")
    })
    @SelectProvider(type = PositionMapperProvider.class,method = "findBySome")
    List<Position> findBySome(Position position) throws Exception;

    @InsertProvider(type = PositionMapperProvider.class,method = "insert")
    int insert(Position position) throws Exception;
}
