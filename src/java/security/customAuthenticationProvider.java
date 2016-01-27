/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package security;

import java.util.Collection;
import java.util.HashSet;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

/**
 *
 * @author ajith
 */
public class customAuthenticationProvider implements AuthenticationProvider{

    @Override
    public Authentication authenticate(Authentication a) throws AuthenticationException {
        String username = a.getName();
        String password = a.getCredentials().toString().trim();
            
        login login = new login();
        String role = login.getCustomLoginStatus(username, password);
        if(role != null){
            SimpleGrantedAuthority sl = new SimpleGrantedAuthority(role);
            Collection authorities = new HashSet<>();
            authorities.add(sl.getAuthority());
            Collection<GrantedAuthority> grantedAuths = authorities;
           ApplicationUser appUser = new ApplicationUser(username, password, role, grantedAuths);
            UsernamePasswordAuthenticationToken tocken = new UsernamePasswordAuthenticationToken(appUser, password, grantedAuths);
           return tocken;
        }else{
        return null;
        }
    }

    
    @Override
    public boolean supports(Class<? extends Object> a) {
        return (UsernamePasswordAuthenticationToken.class.isAssignableFrom(a));
    }
    
}
