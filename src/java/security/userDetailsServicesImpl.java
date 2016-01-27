/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package security;

import java.util.Collection;
import java.util.HashSet;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import service.customerService;

/**
 *
 * @author ajith
 */
public class userDetailsServicesImpl implements UserDetailsService{ // Acts as custom authoentication provider

    private customerService customerservice;
    public void setcustomerService(customerService customerservice){
    this.customerservice = customerservice;
    }
 
    @Override
    public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
        UserData user = customerservice.getUserFromName(name);        
        if(user != null){
        GrantedAuthority sl = new SimpleGrantedAuthority(user.getRole().trim());
        Collection<GrantedAuthority> grants = new HashSet();
        grants.add(sl);       
        user.setAuthority(grants); 
       // UsernamePasswordAuthenticationToken tocken = new UsernamePasswordAuthenticationToken(user,user.getPassword(), grants);
      //  return tocken;
        }
        return user;
    }
   
    
}
