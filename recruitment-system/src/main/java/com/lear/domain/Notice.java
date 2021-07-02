package com.lear.domain;

import java.io.Serializable;

public class Notice implements Serializable {
    private int notice_id;
    private String title;
    private String content;
    private String release_time;

    public int getNotice_id() {
        return notice_id;
    }

    public void setNotice_id(int notice_id) {
        this.notice_id = notice_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getRelease_time() {
        return release_time;
    }

    public void setRelease_time(String release_time) {
        this.release_time = release_time;
    }

    @Override
    public String toString() {
        return "Notice{" +
                "notice_id=" + notice_id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", release_time='" + release_time + '\'' +
                '}';
    }
}
