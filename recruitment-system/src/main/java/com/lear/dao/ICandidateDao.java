package com.lear.dao;

import com.lear.domain.Candidate;
import com.lear.mapperprovider.CandidateMapperProvider;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ICandidateDao {

    @Select("select count(1) from candidate")
    int allCount() throws Exception;

    /**
     * 查询所有
     * @return
     * @throws Exception
     */
    @Select("select * from candidate")
    @Results({
            @Result(id = true,column = "candidate_id",property = "candidate_id"),
            @Result(column = "c_name",property = "c_name"),
            @Result(column = "sex",property = "sex"),
            @Result(column = "birthday",property = "birthday"),
            @Result(column = "email",property = "email"),
            @Result(column = "phone",property = "phone"),
            @Result(column = "personal_advantage",property = "personal_advantage"),
            @Result(column = "internship_experience",property = "internship_experience"),
            @Result(column = "project_experience",property = "project_experience"),
            @Result(column = "educational_experience",property = "educational_experience"),
            @Result(column = "qualification",property = "qualification"),
            @Result(column = "service_experience",property = "service_experience"),
            @Result(column = "social_home",property = "social_home"),
//            @Result(column = "candidate_id",property = "resumeList",javaType = java.util.List.class,
//            many = @Many(select = ("com.lear.dao.IResumeDao.findByCandidate_id"))
//            )
    })
    List<Candidate> all() throws Exception;

    /**
     * 根据登录id删除
     * @param candidate_id
     * @return
     * @throws Exception
     */
    @Delete("delete from candidate where candidate_id=#{candidate_id}")
    int deleteById(int candidate_id) throws Exception;

    /**
     * 根据信息修改
     * @param candidate
     * @return
     * @throws Exception
     */
    @UpdateProvider(type = CandidateMapperProvider.class,method = "update")
    int update(Candidate candidate) throws Exception;

    /**
     * 添加
     * @param candidate
     * @return
     * @throws Exception
     */
    @InsertProvider(type = CandidateMapperProvider.class,method = "insert")
    int insert(Candidate candidate) throws Exception;

    @Select("select * from candidate where candidate_id=#{candidate_id}")
    @Results({
            @Result(id = true,column = "candidate_id",property = "candidate_id"),
            @Result(column = "c_name",property = "c_name"),
            @Result(column = "sex",property = "sex"),
            @Result(column = "birthday",property = "birthday"),
            @Result(column = "email",property = "email"),
            @Result(column = "phone",property = "phone"),
            @Result(column = "personal_advantage",property = "personal_advantage"),
            @Result(column = "internship_experience",property = "internship_experience"),
            @Result(column = "project_experience",property = "project_experience"),
            @Result(column = "educational_experience",property = "educational_experience"),
            @Result(column = "qualification",property = "qualification"),
            @Result(column = "service_experience",property = "service_experience"),
            @Result(column = "social_home",property = "social_home"),
            @Result(column = "candidate_id",property = "resumeList",javaType = java.util.List.class,
                    many = @Many(select = ("com.lear.dao.IResumeDao.findByCandidate_id"))
            )
    })
    Candidate findById(int candidate_id) throws Exception;



}
