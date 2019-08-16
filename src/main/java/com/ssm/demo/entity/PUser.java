package com.ssm.demo.entity;


public class PUser {

  private long id;
  private String uname;
  private String upswd;


  public long getId() {
    return id;
  }

  public void setId(long id) {
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
            '}';
  }
}
