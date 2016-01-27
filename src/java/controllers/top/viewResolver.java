package controllers.top;


import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.view.InternalResourceView;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ajith
 */
public class viewResolver extends InternalResourceView{
    
    @Override
    protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {
        String dispatcherPath = prepareForRendering(request, response);

        // set original view being asked for as a request parameter
        request.setAttribute("partial", dispatcherPath);

        // force everything to be template.jsp
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/template.jsp");
        rd.include(request, response);
    }
    
}
