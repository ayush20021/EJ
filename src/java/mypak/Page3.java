

package mypak;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Page3 extends HttpServlet {
   
   
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
        out.println("<html><head><title> Page3 </title></head>");
         out.println("<body bgcolor=blue>");
         Cookie [] ck = request.getCookies();
         for(int i = 0;i<ck.length;i++){
             if(ck[i].getName().equals("visit")){
                 int count = Integer.parseInt(ck[i].getValue())+1;
                 out.println("<h1> Visit No:"+count+"</h1>");
                 ck[i]= new Cookie("visit",count+"");
                 response.addCookie(ck[i]);}else{

                 out.println(ck[i].getName()+"="+ck[i].getValue());
                 }



         }
//         out.println("<h1><a href = Page3> Click to visit Page3 </a></h1>");
         out.println("<h1><a href =Page4> Click to visit Page3 </a></h1>");
         out.println("<h1><a href =Page5> Click to visit Page3 </a></h1>");
         out.println("</body>");
         out.print("</html>");
    } 

  

}
