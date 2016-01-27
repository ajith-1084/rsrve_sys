/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package service;


import dao.userDao;
import security.UserData;

/**
 *
 * @author ajith
 */
public class customerService {
    
    private UserData user;
    private userDao userdao;
    public void setuserdao(userDao userdao){
       this.userdao = userdao;
    }
    public UserData getUserFromName(String name){
        UserData u = userdao.getUserdetails(name);
        return u;
    }
}
