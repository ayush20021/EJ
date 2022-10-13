<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guestbook</title>
    </head>
    <body bgcolor="pink">
        <table border="0" cellpadding="0" cellspacing="0" align="center" width="760">
            <tr>
                <td>
                    <%@ include file="header.jsp" %>
                </td>
            </tr>
            <tr align="left" valign="top">
                <td height="20"><hr /></td>
            </tr>
            <tr>
                <td>
                    <table border="0" cellpadding="0" cellspacing="0" align="center" width="100%">
                        <tr>
                            <td style="font:12px/16px Georgia; color:#786e4e;">
                                <%!
                                    String VisitorName;
                                    String Message;
                                %>
                                <%
                                    VisitorName = request.getParameter("guest");
                                    Message = request.getParameter("message");
                                %>
                                On <%=new java.util.Date()%>,<br />
                                <b><%=VisitorName%>:</b>
                                <%=Message%>
                                <br /><br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </body>
</html>
