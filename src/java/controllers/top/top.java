/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers.top;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ajith
 */
@Controller
@RequestMapping("/top")
public class top {
    
    public top(){
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String doGet(){
        return "top";
    }
}
