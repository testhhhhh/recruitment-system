package com.lear.dao;

import com.lear.domain.Resume;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IResumeDao {
    @Select("select count(1) from resume")
    int allCount();

    @Select("select * from resume where candidate_id=#{candidate_id}")
    @Results({
            @Result(column = "resume_id",property = "resume_id",id = true),
            @Result(column = "path",property = "path"),
            @Result(column = "candidate_id",property = "candidate",
                    one = @One(select = ("com.lear.dao.ICandidateDao.findById"))),
            @Result(column = "position_id",property = "position",
                    one = @One(select = ("com.lear.dao.IPositionDao.findByPosition_id"))
            )
    })
    List<Resume> findByCandidate_id(int candidate_id) throws Exception;

    @Insert("insert into resume(resume_id,path,candidate_id,position_id) values(0,#{path},#{candidate.candidate_id},#{position.position_id})")
    int insert(Resume resume) throws Exception;

    @Update("update resume set path=#{path},candidate_id=#{candidate.candidate_id},position_id=#{position.position_id} where resume_id=#{resume_id}")
    int update(Resume resume) throws Exception;

    @Delete("delete from resume where resume_id=#{resume_id}")
    int delete(int resume_id) throws Exception;

    @Select("select * from resume where resume_id=#{resume_id}")
    @Results({
            @Result(column = "resume_id",property = "resume_id",id = true),
            @Result(column = "path",property = "path"),
            @Result(column = "candidate_id",property = "candidate",
            one = @One(select = ("com.lear.dao.ICandidateDao.findById"))),
            @Result(column = "position_id",property = "position",
                    one = @One(select = ("com.lear.dao.IPositionDao.findByPosition_id"))
            )
    })
    Resume findById(int resume_id) throws Exception;

    @Select("select * from resume")
    @Results({
            @Result(column = "resume_id",property = "resume_id",id = true),
            @Result(column = "path",property = "path"),
            @Result(column = "candidate_id",property = "candidate",
                    one = @One(select = ("com.lear.dao.ICandidateDao.findById"))),
            @Result(column = "position_id",property = "position",
                    one = @One(select = ("com.lear.dao.IPositionDao.findByPosition_id"))
            )
    })
    List<Resume> all() throws Exception;
}
