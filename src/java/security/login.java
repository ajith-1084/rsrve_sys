/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package security;

/**
 *
 * @author ajith
 */

public class login {
    
private static String username = "ajith";
private static String password = "password";
private static String role = "DEVELOPER";
    public login(){
    }
    
    public String getCustomLoginStatus(String username, String password){
        
        if((username == username) && (password == password)){
         return role;
        }
        return null;
    }
    
}
