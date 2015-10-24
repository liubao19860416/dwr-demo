package com.entity;

import java.io.Serializable;

public class Accpusers implements Serializable {

    private Long id;

    private String username;

    private String password;

    public Accpusers() {
    }

    public Accpusers(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}