

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
       
        <title>Registration Page</title>
    </head>
    <body>
        <form action=RegisterServlet">
            <h1>Welcome to Registration page</h1>
            Enter userName = <input type ="text" name ="txtUid"><br>
            Enter Passsword <input type ="password" name ="txtPass"><br>
            Enter email <input type ="text" name ="txtEmail"><br>
            Enter country <input type ="text" name ="txtCon"><br>
            <input type="reset">
            <input type="submit" value="Register">



        </form>
    </body>
</html>
