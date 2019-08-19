package com.ssm.demo.entity;

public class PUser {
    private Integer id;

    private String uname;

    private String upswd;

    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpswd() {
        return upswd;
    }

    public void setUpswd(String upswd) {
        this.upswd = upswd;
    }

    @Override
    public String toString() {
        return "PUser{" +
                "id=" + id +
                ", uname='" + uname + '\'' +
                ", upswd='" + upswd + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}