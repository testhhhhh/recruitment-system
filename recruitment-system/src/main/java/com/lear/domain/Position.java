package com.lear.domain;

public class Position {
    private int position_id;
    private String name;
    private String work_requirement;
    private String work_experience;
    private String education_requirement;
    private String salary_requirement;
    private String release_time;
    private Hr hr;
    private City city;
    private Category category;
    private String address;

    public String getEducation_requirement() {
        return education_requirement;
    }

    public void setEducation_requirement(String education_requirement) {
        this.education_requirement = education_requirement;
    }

    public int getPosition_id() {
        return position_id;
    }

    public void setPosition_id(int position_id) {
        this.position_id = position_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getWork_requirement() {
        return work_requirement;
    }

    public void setWork_requirement(String work_requirement) {
        this.work_requirement = work_requirement;
    }

    public String getWork_experience() {
        return work_experience;
    }

    public void setWork_experience(String work_experience) {
        this.work_experience = work_experience;
    }

    public String getSalary_requirement() {
        return salary_requirement;
    }

    public void setSalary_requirement(String salary_requirement) {
        this.salary_requirement = salary_requirement;
    }

    public String getRelease_time() {
        return release_time;
    }

    public void setRelease_time(String release_time) {
        this.release_time = release_time;
    }

    public Hr getHr() {
        return hr;
    }

    public void setHr(Hr hr) {
        this.hr = hr;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Position{" +
                "position_id=" + position_id +
                ", name='" + name + '\'' +
                ", work_requirement='" + work_requirement + '\'' +
                ", work_experience='" + work_experience + '\'' +
                ", salary_requirement='" + salary_requirement + '\'' +
                ", release_time='" + release_time + '\'' +
                ", hr=" + hr +
                ", city=" + city +
                ", category=" + category +
                ", address='" + address + '\'' +
                '}';
    }
}
