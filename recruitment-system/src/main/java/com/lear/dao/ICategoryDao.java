package com.lear.dao;

import com.github.pagehelper.Page;
import com.lear.domain.Category;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ICategoryDao {
    @Select("select count(1) from category")
    int allCount();

    @MapKey("id")
    @Select("select id,name,father_id,level from category")
    @Results({
            @Result(column = "id",property = "id",id =true),
            @Result(column = "name",property = "name"),
            @Result(column = "father_id",property = "father_id"),
            @Result(column = "level",property = "level"),
            @Result(column = "id",property = "positionList",javaType = java.util.List.class,
                    many = @Many(select = ("com.lear.dao.IPositionDao.findByCategory_id")))
    })
    Map<Integer, Category> categoryMap() throws Exception;

    @Results({
            @Result(column = "id",property = "id",id =true),
            @Result(column = "name",property = "name"),
            @Result(column = "father_id",property = "father_id"),
            @Result(column = "level",property = "level")
    })
    @Select("select * from category")
    List<Category> all() throws Exception;

    @Delete("delete from category where id=#{category_id}")
    int delete(int category_id) throws Exception;

    @Select("select * from category where id=#{category_id}")
    Category findById(int category_id) throws Exception;

    @Insert("insert into category(id,name,father_id,level) values(0,#{name},#{father_id},#{level})")
    int insert(Category category) throws Exception;

    @Update("update category set name=#{name},father_id=#{father_id},level=#{level} where id=#{id}")
    int update(Category category) throws Exception;

    @Select("select * from category where level=#{level}")
    @MapKey("id")
    Map<Integer,Category> fOrCCategoryMap(int level) throws Exception;


}
