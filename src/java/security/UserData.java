/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;

/**
 *
 * @author ajith
 */
public class UserData implements UserDetails{
   
   private String username;
   private String password;
   private String role;
   private Collection<GrantedAuthority> authority;
   
    public UserData(){}
    public UserData(String username, String password, String role, Collection<GrantedAuthority> authority){
    
    
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

//    public void setcustomerAuthorities(List<String> roles){
//    
//        List<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
//        
//        for(String r : roles){
//          auth.add(new GrantedAuthorityImpl(r));
//        }
//        authority = (GrantedAuthority[]) auth.toArray();
//    
//    }
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authority;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    void setAuthority(Collection<GrantedAuthority> grants) {
        authority = grants;
    }
    
}
