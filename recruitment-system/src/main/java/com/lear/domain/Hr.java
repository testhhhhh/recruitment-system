package com.lear.domain;

public class Hr {
    private int hr_id;
    private String head_portrait;
    private String name;
    private String post;
    private Company company;

    public int getHr_id() {
        return hr_id;
    }

    public void setHr_id(int hr_id) {
        this.hr_id = hr_id;
    }

    public String getHead_portrait() {
        return head_portrait;
    }

    public void setHead_portrait(String head_portrait) {
        this.head_portrait = head_portrait;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    @Override
    public String toString() {
        return "Hr{" +
                "hr_id=" + hr_id +
                ", head_portrait='" + head_portrait + '\'' +
                ", name='" + name + '\'' +
                ", post='" + post + '\'' +
                ", company=" + company +
                '}';
    }
}
