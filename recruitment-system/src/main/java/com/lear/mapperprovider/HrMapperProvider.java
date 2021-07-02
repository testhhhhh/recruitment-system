package com.lear.mapperprovider;

import com.lear.domain.Hr;
import org.apache.ibatis.jdbc.SQL;

public class HrMapperProvider {
    public String update(final Hr hr) {
        SQL sql=new SQL(){
            {
                UPDATE("hr");
                if(hr.getHead_portrait()!=null && hr.getHead_portrait()!="")
                    SET("head_portrait=#{head_portrait}");
                if(hr.getName()!=null && hr.getName()!="")
                    SET("name=#{name}");
                if(hr.getPost()!=null && hr.getPost()!="")
                    SET("post=#{post}");
                if(hr.getCompany().getCompany_id()!=0)
                SET("company_id=#{company_id}");
                WHERE("hr_id=#{hr_id}");
            }
        };
        return sql.toString();
    }

    public String insert(final Hr hr) {
        return new SQL(){
            {
                INSERT_INTO("hr");
                if(hr.getHr_id()!=0 )
                    VALUES("hr_id",String.valueOf(hr.getHr_id()));
                if(hr.getHead_portrait()!=null && hr.getHead_portrait()!="")
                    VALUES("head_portrait","'"+hr.getHead_portrait().toString()+"'");
                if(hr.getName()!=null && hr.getName()!="")
                    VALUES("name","'"+hr.getName().toString()+"'");
                if(hr.getPost()!=null && hr.getPost()!="")
                    VALUES("post","'"+hr.getPost().toString()+"'");
                if(hr.getCompany().getCompany_id()!=0 )
                    VALUES("company_id",String.valueOf(hr.getCompany().getCompany_id()));
            }
        }.toString();
    }
}
