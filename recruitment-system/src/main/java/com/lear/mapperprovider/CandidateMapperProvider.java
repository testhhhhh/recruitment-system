package com.lear.mapperprovider;

import com.lear.domain.Candidate;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;

public class CandidateMapperProvider {
    public String update(final Candidate candidate) {
        SQL sql=new SQL(){
            {
                UPDATE("candidate");
                if(candidate.getC_name()!=null&&candidate.getC_name()!="")
                    SET("c_name=#{c_name}");
                if(candidate.getSex()!=null && candidate.getSex()!="")
                    SET("sex=#{sex}");
                if(candidate.getBirthday()!=null && candidate.getBirthday()!="")
                    SET("birthday=#{birthday}");
                if(candidate.getEmail()!=null && candidate.getEmail()!="")
                    SET("email=#{email}");
                if(candidate.getPhone()!=null && candidate.getPhone()!="")
                    SET("phone=#{phone}");
                if(candidate.getPersonal_advantage()!=null && candidate.getPersonal_advantage()!="")
                    SET("personal_advantage=#{personal_advantage}");
                if(candidate.getInternship_experience()!=null && candidate.getInternship_experience()!="")
                    SET("internship_experience=#{internship_experience}");
                if(candidate.getProject_experience()!=null && candidate.getProject_experience()!="")
                    SET("project_experience=#{project_experience}");
                if(candidate.getQualification()!=null && candidate.getQualification()!="")
                    SET("qualification=#{qualification}");
                if(candidate.getService_experience()!=null && candidate.getService_experience()!="")
                    SET("service_experience=#{service_experience}");
                if(candidate.getSocial_home()!=null && candidate.getSocial_home()!="")
                    SET("social_home=#{social_home}");
                WHERE("candidate_id=#{candidate_id}");
            }
        };
        return sql.toString();
    }

    public String insert(final Candidate candidate) {
        return new SQL(){
            {
                INSERT_INTO("candidate");
                if(candidate.getCandidate_id()!=0)
                    VALUES("candidate_id",String.valueOf(candidate.getCandidate_id()));
                if(candidate.getC_name()!=null&&candidate.getC_name()!="")
                    VALUES("c_name","'"+candidate.getC_name().toString()+"'");
                if(candidate.getSex()!=null && candidate.getSex()!="")
                    VALUES("sex","'"+candidate.getSex().toString()+"'");
                if(candidate.getBirthday()!=null && candidate.getBirthday()!="")
                    VALUES("birthday","'"+candidate.getBirthday().toString()+"'");
                if(candidate.getEmail()!=null && candidate.getEmail()!="")
                    VALUES("email","'"+candidate.getEmail().toString()+"'");
                if(candidate.getPhone()!=null && candidate.getPhone()!="")
                    VALUES("phone","'"+candidate.getPhone().toString()+"'");
                if(candidate.getPersonal_advantage()!=null && candidate.getPersonal_advantage()!="")
                    VALUES("personal_advantage","'"+candidate.getPersonal_advantage().toString()+"'");
                if(candidate.getInternship_experience()!=null && candidate.getInternship_experience()!="")
                    VALUES("internship_experience","'"+candidate.getInternship_experience().toString()+"'");
                if(candidate.getProject_experience()!=null && candidate.getProject_experience()!="")
                    VALUES("project_experience","'"+candidate.getProject_experience().toString()+"'");
                if(candidate.getQualification()!=null && candidate.getQualification()!="")
                    VALUES("qualification","'"+candidate.getQualification().toString()+"'");
                if(candidate.getService_experience()!=null && candidate.getService_experience()!="")
                    VALUES("service_experience","'"+candidate.getService_experience().toString()+"'");
                if(candidate.getSocial_home()!=null && candidate.getSocial_home()!="")
                    VALUES("social_home","'"+candidate.getSocial_home().toString()+"'");

            }
        }.toString();
    }

}
