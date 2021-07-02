package com.lear.service;

import com.lear.domain.Notice;
import com.lear.mapperprovider.NoticeMapperProvider;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface INoticeService {
    int allCount() throws Exception;

        //这里的title传过来前要拼接"%"+title+"%"
    int someCount(String title) throws Exception;

    List<Notice> all(int page,int size) throws Exception;

        //这里的title传过来前要拼接"%"+title+"%"
    List<Notice> someForSearch(String title,int page,int size) throws Exception;

    @Delete("delete from notice where notice_id=#{notice_id}")
    int deleteById(int notice_id) throws Exception;

    @UpdateProvider(type = NoticeMapperProvider.class,method = "update")
    int update(Notice notice) throws Exception;

    int insert(Notice notice) throws Exception;

    Notice findById(int notice_id) throws Exception;
}
