package com.lear.mapperprovider;

import com.lear.domain.Notice;
import org.apache.ibatis.jdbc.SQL;

public class NoticeMapperProvider {
    public String update(final Notice notice) {
        SQL sql=new SQL(){
            {
                UPDATE("notice");
                if(notice.getTitle()!=null && notice.getTitle()!="")
                    SET("title=#{title}");
                if(notice.getContent()!=null && notice.getContent()!="")
                    SET("content=#{content}");
                if(notice.getRelease_time()!=null && notice.getRelease_time()!="")
                    SET("release_time=#{release_time}");
                WHERE("notice_id=#{notice_id}");
            }
        };
        return sql.toString();
    }

    public String insert(final Notice notice) {
        return new SQL(){
            {
                INSERT_INTO("notice");
                VALUES("notice_id",String.valueOf(0));
                if(notice.getTitle()!=null && notice.getTitle()!="")
                    VALUES("title","'"+notice.getTitle().toString()+"'");
                if(notice.getContent()!=null && notice.getContent()!="")
                    VALUES("content","'"+notice.getContent().toString()+"'");
                if(notice.getRelease_time()!=null && notice.getRelease_time()!="")
                    VALUES("release_time","'"+notice.getRelease_time().toString()+"'");
            }
        }.toString();
    }
}
