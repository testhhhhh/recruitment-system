package com.lear.domain;

public class Resume {
    private int resume_id;
    private String path;
    private Candidate candidate;
    private Position position;

    public int getResume_id() {
        return resume_id;
    }

    public void setResume_id(int resume_id) {
        this.resume_id = resume_id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Candidate getCandidate() {
        return candidate;
    }

    public void setCandidate(Candidate candidate) {
        this.candidate = candidate;
    }

    public Position getPosition() {
        return position;
    }

    public void setPosition(Position position) {
        this.position = position;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "resume_id=" + resume_id +
                ", path='" + path + '\'' +
                ", candidate=" + candidate +
                ", position=" + position +
                '}';
    }
}
