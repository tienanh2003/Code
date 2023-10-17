/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package murach.hello;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import murach.business.User;
/**
 *
 * @author ADMIN
 */
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get parameters from the request
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String dateOfBirth = request.getParameter("dateOfBirth");
        String heardFrom = request.getParameter("heardFrom");
        String wantsLike = request.getParameter("wantsLike");
        String wantsUpdates = request.getParameter("wantsUpdates");
        String contactVia = request.getParameter("contactVia");
        
        // process paramters
        if (heardFrom == null) {
            heardFrom = "NA";
        }
        if (wantsLike == null) {
            wantsLike = "No";
        }
        else {
            wantsLike = "Yes";
        }
        if (wantsUpdates == null) {
            wantsUpdates = "No";
        }
        else {
            wantsUpdates = "Yes";
        }
 
        
        // store data in User object
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);      
        user.setDateOfBirth(dateOfBirth);
        user.setHeardFrom(heardFrom); 
        user.setWantsLike(wantsLike);
        user.setWantsUpdates(wantsUpdates);
        user.setContactVia(contactVia);

        // store User object in request
        request.setAttribute("user", user);

        // forward request to JSP
        String url = "/servey.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    
}
