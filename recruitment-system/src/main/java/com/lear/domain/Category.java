package com.lear.domain;

import java.util.List;

public class Category {
    private int id;
    private  String name;
    private  int father_id;
    private String level;
    private List<Position> positionList;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getFather_id() {
        return father_id;
    }

    public void setFather_id(int father_id) {
        this.father_id = father_id;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public List<Position> getPositionList() {
        return positionList;
    }

    public void setPositionList(List<Position> positionList) {
        this.positionList = positionList;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", father_id=" + father_id +
                ", level='" + level + '\'' +
                ", positionList=" + positionList +
                '}';
    }
}
