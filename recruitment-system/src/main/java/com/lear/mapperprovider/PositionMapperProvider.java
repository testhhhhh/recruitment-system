package com.lear.mapperprovider;

import com.lear.domain.Notice;
import com.lear.domain.Position;
import org.apache.ibatis.jdbc.SQL;

public class PositionMapperProvider {
    public String findBySome(Position position) {
        SQL sql=new SQL(){
            {
                SELECT("*");
                FROM("position");
                if(position.getPosition_id()!=0)
                   WHERE("position_id=#{position_id}");
                if(position.getName()!=null && position.getName()!="")
                    WHERE("name=#{name}");
                if(position.getWork_requirement()!=null && position.getWork_requirement()!="")
                    WHERE("work_requirement=#{work_requirement}");
                if(position.getWork_experience()!=null && position.getWork_experience()!="")
                    WHERE("work_experience=#{work_experience}");
                if(position.getEducation_requirement()!=null && position.getEducation_requirement()!="")
                    WHERE("education_requirement=#{education_requirement}");
                if(position.getSalary_requirement()!=null && position.getSalary_requirement()!="")
                    WHERE("salary_requirement=#{salary_requirement}");
                if(position.getRelease_time()!=null && position.getRelease_time()!="")
                    WHERE("release_time=#{release_time}");
                if(position.getHr()!=null&&position.getHr().getHr_id()!=0 )
                    WHERE("hr_id=#{hr.hr_id}");
                if(position.getCity()!=null&&position.getCity().getId()!=0 )
                    WHERE("city_id=#{city.id}");
                if(position.getCategory()!=null&&position.getCategory().getId()!=0 )
                    WHERE("category_id=#{category.id}");
                if(position.getAddress()!=null && position.getAddress()!="")
                    WHERE("address=#{address}");
            }
        };
        return sql.toString();
    }

    public String insert(Position position) {
        return new SQL(){
            {
                INSERT_INTO("position");
                VALUES("position_id",String.valueOf(0));
                if(position.getName()!=null && position.getName()!="")
                    VALUES("name","'"+ position.getName().toString()+"'");
                if(position.getWork_requirement()!=null && position.getWork_requirement()!="")
                    VALUES("work_requirement","'"+position.getWork_requirement().toString()+"'");
                if(position.getWork_experience()!=null && position.getWork_experience()!="")
                    VALUES("work_experience","'"+position.getWork_experience().toString()+"'");
                if(position.getEducation_requirement()!=null && position.getEducation_requirement()!="")
                    VALUES("education_requirement","'"+position.getEducation_requirement().toString()+"'");
                if(position.getSalary_requirement()!=null && position.getSalary_requirement()!="")
                    VALUES("salary_requirement","'"+position.getSalary_requirement().toString()+"'");
                if(position.getRelease_time()!=null && position.getRelease_time()!="")
                    VALUES("release_time","'"+position.getRelease_time().toString()+"'");
                if(position.getHr()!=null&&position.getHr().getHr_id()!=0 )
                    VALUES("hr_id","'"+position.getHr().getHr_id()+"'");
                if(position.getCity()!=null&&position.getCity().getId()!=0 )
                    VALUES("city_id","'"+position.getCity().getId()+"'");
                if(position.getCategory()!=null&&position.getCategory().getId()!=0 )
                    VALUES("category_id","'"+position.getCategory().getId()+"'");
                if(position.getAddress()!=null && position.getAddress()!="")
                    VALUES("address","'"+position.getAddress().toString()+"'");
            }
        }.toString();
    }
}
