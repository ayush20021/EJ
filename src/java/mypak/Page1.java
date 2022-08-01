

package mypak;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Page1 extends HttpServlet {
   
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
        } finally { 
            out.close();
        }
    } 

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        processRequest(request, response);
        response.setContentType("text/jsp;Charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html><head><title> Page1 </title></head>");
        out.println("<body bgcolor=pink>");
        String uname = request.getParameter("txtName");
        out.println("<h1> Welcome" + uname + "</h1>" );
        Cookie ck1 = new Cookie("username",uname);
        Cookie ck2 = new Cookie ("visit","1");

        response.addCookie(ck1);
        response.addCookie(ck2);
        out.println("<h1> <a href =Page2> Click To Visit Page 2 </a></h1>");
        out.println("</body>");
        out.println("</html>");


    } 

    

}
