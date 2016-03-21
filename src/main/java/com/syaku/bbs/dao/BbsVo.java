package com.syaku.bbs.dao;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class BbsVo {
	private Integer idx;
    @NotNull
    private String user_name;
    @Size(max = 250)
    @NotEmpty
    private String subject;
    @NotEmpty
    private String content;
    private String reg_datetime;

    public Integer getIdx() {
        return idx;
    }
    public void setIdx(Integer idx) {
        this.idx = idx;
    }
    public String getUser_name() {
        return user_name;
    }
    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
    public String getSubject() {
        return subject;
    }
    public void setSubject(String subject) {
        this.subject = subject;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getReg_datetime() {
        return reg_datetime;
    }
    public void setReg_datetime(String reg_datetime) {
        this.reg_datetime = reg_datetime;
    }
    
}