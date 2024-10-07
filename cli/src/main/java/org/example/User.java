package org.example;

import com.fasterxml.jackson.annotation.JsonProperty;

public class User {
    int id;
    String username;
    String first_name;
    String last_name;
    String email;
    String avatar;
    String password;

    public User(){
    }

//    public User(@JsonProperty("id") int id,
//                @JsonProperty("username") String username,
//                @JsonProperty("first_name") String first_name,
//                @JsonProperty("last_name") String last_name,
//                @JsonProperty("email") String email,
//                @JsonProperty("avatar") String avatar,
//                @JsonProperty("password")String password) {
//        this.id = id;
//        this.username = username;
//        this.first_name = first_name;
//        this.last_name = last_name;
//        this.email = email;
//        this.avatar = avatar;
//        this.password = password;
//    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", first_name='" + first_name + '\'' +
                ", last_name='" + last_name + '\'' +
                ", email='" + email + '\'' +
                ", avatar='" + avatar + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
