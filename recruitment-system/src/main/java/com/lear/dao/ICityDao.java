package com.lear.dao;

import com.lear.domain.City;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ICityDao {
    @Select("select count(1) from city")
    int allCount();

    @MapKey("id")
    @Select("select id,name,father_id,level from city")
    @Results({
            @Result(column = "id",property = "id",id =true),
            @Result(column = "name",property = "name"),
            @Result(column = "father_id",property = "father_id"),
            @Result(column = "level",property = "level"),
            @Result(column = "id",property = "positionList",javaType = java.util.List.class,
            many = @Many(select = ("com.lear.dao.IPositionDao.findByCity_id")))
    })
    Map<Integer,City> cityMap() throws Exception;

    @Results({
            @Result(column = "id",property = "id",id =true),
            @Result(column = "name",property = "name"),
            @Result(column = "father_id",property = "father_id"),
            @Result(column = "level",property = "level")
    })
    @Select("select * from city")
    List<City> all() throws Exception;

    @Delete("delete from city where id=#{city_id}")
    int delete(int city_id) throws Exception;

    @Select("select * from city where id=#{city_id}")
    City findById(int city_id) throws Exception;

    @Insert("insert into city(id,name,father_id,level) values(0,#{name},#{father_id},#{level})")
    int insert(City city) throws Exception;

    @Update("update city set name=#{name},father_id=#{father_id},level=#{level} where id=#{id}")
    int update(City city) throws Exception;

    @Select("select * from city where level=#{level}")
    @MapKey("id")
    Map<Integer,City> fOrCCategoryMap(int level) throws Exception;
}
