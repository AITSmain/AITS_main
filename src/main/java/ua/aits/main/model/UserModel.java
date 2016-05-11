/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.main.model;

import java.sql.SQLException;

/**
 *
 * @author kiwi
 */
public class UserModel {
    
    public String user_name;
    public String user_login;
    public String user_password;

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_login() {
        return user_login;
    }

    public void setUser_login(String user_login) {
        this.user_login = user_login;
    }
    
    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }
    
    
    public String isExitsUser(String user_login, String user_password) throws SQLException{
        if("admin".equals(user_login) && "K-support3!".equals(user_password)) {
            return "0";
        }
        else {
            return "-1";
        }
    }
    
    public UserModel getOneUserFullById(String user_number) {
        UserModel user = new UserModel();
        if("0".equals(user_number)) {
            user.setUser_login("admin");
            user.setUser_name("admin");
            user.setUser_password("K-support3!");
            return user;
        } 
        return null;
    }
}
