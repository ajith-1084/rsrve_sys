/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers.auth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 *
 * @author ajith
 */
@Controller
@RequestMapping("/auth/signup")
public class register {
    
    public register(){
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String doGet(){
     return "login/signup";
    }
    
}
