package com.lear.domain;

import java.util.List;

public class Company {
    private int company_id;
    private String name;
    private String business_registration_number;
    private int size;
    private String financing_stage;
    private String address;
    private Hr h;
    private List<Hr> hr;
    private int flag;


    public int getCompany_id() {
        return company_id;
    }

    public void setCompany_id(int company_id) {
        this.company_id = company_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBusiness_registration_number() {
        return business_registration_number;
    }

    public void setBusiness_registration_number(String business_registration_number) {
        this.business_registration_number = business_registration_number;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getFinancing_stage() {
        return financing_stage;
    }

    public void setFinancing_stage(String financing_stage) {
        this.financing_stage = financing_stage;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<Hr> getHr() {
        return hr;
    }

    public void setHr(List<Hr> hr) {
        this.hr = hr;
    }

    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public Hr getH() {
        return h;
    }

    public void setH(Hr h) {
        this.h = h;
    }

    @Override
    public String toString() {
        return "Company{" +
                "company_id=" + company_id +
                ", name='" + name + '\'' +
                ", business_registration_number='" + business_registration_number + '\'' +
                ", size=" + size +
                ", financing_stage='" + financing_stage + '\'' +
                ", address='" + address + '\'' +
                ", h=" + h +
                ", hr=" + hr +
                ", flag=" + flag +
                '}';
    }
}
