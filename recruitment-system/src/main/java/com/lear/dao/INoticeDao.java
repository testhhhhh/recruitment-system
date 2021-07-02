package com.lear.dao;


import com.lear.domain.Notice;
import com.lear.mapperprovider.NoticeMapperProvider;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface INoticeDao {

    @Select("select count(1) from notice")
    int allCount() throws Exception;

    @Select("select count(1) from notice where title like #{title}")
    //这里的title传过来前要拼接"%"+title+"%"
    int someCount(String title) throws Exception;

    /**
     * 查询所有
     * @return
     * @throws Exception
     */
    @Select("select * from notice")
    @Results({
            @Result(id = true,column = "notice_id",property = "notice_id"),
            @Result(column = "title",property = "title"),
            @Result(column = "content",property = "content"),
            @Result(column = "release_time",property = "release_time")
    })
    List<Notice> all() throws Exception;

    @Select("select * from notice where title like #{title} order by notice_id")
    @Results({
            @Result(id = true,column = "notice_id",property = "notice_id"),
            @Result(column = "title",property = "title"),
            @Result(column = "content",property = "content"),
            @Result(column = "release_time",property = "release_time")
    })
        //这里的title传过来前要拼接"%"+title+"%"
    List<Notice> someForSearch(String title) throws Exception;

    /**
     * 根据登录id删除
     * @param notice_id
     * @return
     * @throws Exception
     */
    @Delete("delete from notice where notice_id=#{notice_id}")
    int deleteById(int notice_id) throws Exception;

    /**
     * 根据信息修改
     * @param notice
     * @return
     * @throws Exception
     */
    @UpdateProvider(type = NoticeMapperProvider.class,method = "update")
    int update(Notice notice) throws Exception;

    /**
     * 添加
     * @param notice
     * @return
     * @throws Exception
     */
    @InsertProvider(type = NoticeMapperProvider.class,method = "insert")
    int insert(Notice notice) throws Exception;

    @Select("select * from notice where notice_id=#{notice_id}")
    @Results({
            @Result(id = true,column = "notice_id",property = "notice_id"),
            @Result(column = "title",property = "title"),
            @Result(column = "content",property = "content"),
            @Result(column = "release_time",property = "release_time")
    })
    Notice findById(int notice_id) throws Exception;

}
