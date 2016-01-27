/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package security;

import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;

/**
 *
 * @author ajith
 */
public class authenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler{
    
    public authenticationFailureHandler(){}
    
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException ax) throws ServletException, IOException{
       
            super.onAuthenticationFailure(request, response, ax);
            if(ax.getClass().isAssignableFrom(UsernameNotFoundException.class)) {
    showMessage("BAD_CREDENTIAL");
  } else if (ax.getClass().isAssignableFrom(DisabledException.class)) {
    showMessage("USER_DISABLED");
  }
       
    }

    private void showMessage(String message) {
       out.print(message);
    }
    
}
