
package mypack;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.util.logging.Level;
//import java.util.logging.Logger;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.io.*;
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out =response.getWriter();
        String id = request.getParameter("txtUid");
        String ps = request.getParameter("txtPass");
        String em = request.getParameter("txtEmail");
        String co = request.getParameter("txtCom");   
try
 {
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LoginDB");
        PreparedStatement pst = con.prepareStatement("insert into user values(?,?,?,?)");
          pst.setString(1,id);
          pst.setString(2,ps);
          pst.setString(3,em);
          pst.setString(4,co);
          int row = pst.executeUpdate();
          out.println("<h1> +row+ Updated</h1>");
       }
catch(Exception e){
    out.print(e);
}
    }
}
