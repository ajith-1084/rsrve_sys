/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package security;

import java.util.Collection;
import org.springframework.security.core.GrantedAuthority;

/**
 *
 * @author ajith
 */
public class ApplicationUser extends UserData{
    
    public ApplicationUser(String username, String password, String role, Collection<GrantedAuthority> grant){       
        super(username, password, role, grant);
    }
}
