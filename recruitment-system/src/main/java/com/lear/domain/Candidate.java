package com.lear.domain;

import java.util.List;

public class Candidate {
    private int candidate_id;
    private String c_name;
    private String sex;
    private String birthday;
    private String email;
    private String phone;
    private String personal_advantage;
    private String internship_experience;
    private String project_experience;
    private String educational_experience;
    private String qualification;
    private String service_experience;
    private String social_home;
    private List<Resume> resumeList;

    public int getCandidate_id() {
        return candidate_id;
    }

    public void setCandidate_id(int candidate_id) {
        this.candidate_id = candidate_id;
    }

    public String getC_name() {
        return c_name;
    }

    public String getEducational_experience() {
        return educational_experience;
    }

    public void setEducational_experience(String educational_experience) {
        this.educational_experience = educational_experience;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPersonal_advantage() {
        return personal_advantage;
    }

    public void setPersonal_advantage(String personal_advantage) {
        this.personal_advantage = personal_advantage;
    }

    public String getInternship_experience() {
        return internship_experience;
    }

    public void setInternship_experience(String internship_experience) {
        this.internship_experience = internship_experience;
    }

    public String getProject_experience() {
        return project_experience;
    }

    public void setProject_experience(String project_experience) {
        this.project_experience = project_experience;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getService_experience() {
        return service_experience;
    }

    public void setService_experience(String service_experience) {
        this.service_experience = service_experience;
    }

    public String getSocial_home() {
        return social_home;
    }

    public void setSocial_home(String social_home) {
        this.social_home = social_home;
    }

    public List<Resume> getResumeList() {
        return resumeList;
    }

    public void setResumeList(List<Resume> resumeList) {
        this.resumeList = resumeList;
    }

    @Override
    public String toString() {
        return "Candidate{" +
                "candidate_id=" + candidate_id +
                ", c_name='" + c_name + '\'' +
                ", sex='" + sex + '\'' +
                ", birthday='" + birthday + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", personal_advantage='" + personal_advantage + '\'' +
                ", internship_experience='" + internship_experience + '\'' +
                ", project_experience='" + project_experience + '\'' +
                ", qualification='" + qualification + '\'' +
                ", service_experience='" + service_experience + '\'' +
                ", social_home='" + social_home + '\'' +
                ", resumeList=" + resumeList +
                '}';
    }
}
