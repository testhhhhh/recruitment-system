package com.lear.domain;

public class Login_password {
    private int login_id;
    private String phone;
    private String password;
    public int getLogin_id() {
        return login_id;
    }

    public void setLogin_id(int login_id) {
        this.login_id = login_id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Login_password{" +
                "login_id=" + login_id +
                ", phone='" + phone + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
