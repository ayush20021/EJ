<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
    </head>
    <body>
        <p>
            <%
                int numtimes = Integer.parseInt(request.getParameter("numtimes"));
                for (int i = 0; i < numtimes; i++) {
            %>
                Hello World! <br>
            <%
                }
            %>
        </p>
        <%@include file="footer.html" %>
    </body>
</html>
