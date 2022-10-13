<%@page import="java.util.Iterator,javax.persistence.Persistence,java.util.List,myApp.GuestBook,javax.persistence.EntityTransaction,javax.persistence.EntityManager,javax.persistence.EntityManagerFactory" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
    private EntityManagerFactory entityManagerFactory;
    private EntityManager entityManager;
    private EntityTransaction entityTransaction;
    List<GuestBook> guestbook;
%>
<%
    entityManagerFactory = Persistence.createEntityManagerFactory("GuestBookJPAPU");
    entityManager = entityManagerFactory.createEntityManager();
    String submit = request.getParameter("btnSubmit");
    if(submit != null && ("Submit").equals(submit)) {
        try {
            String guest = request.getParameter("guest");
            String message = request.getParameter("message");
            String messageDate = new java.util.Date().toString();

            GuestBook gb = new GuestBook();
            gb.setVisitorName(guest);
            gb.setMessage(message);
            gb.setMessageDate(messageDate);

            entityTransaction = entityManager.getTransaction();
            entityTransaction.begin();
            entityManager.persist(gb);
            entityTransaction.commit();
        } catch (RuntimeException e) {
            if(entityTransaction != null) entityTransaction.rollback();
            throw e;
        }
        response.sendRedirect("GuestBookView.jsp");
    }

    try {
        guestbook = entityManager.createQuery("SELECT g from GuestBook g").getResultList();
    } catch (RuntimeException e) {
        throw e;
    }
   entityManager.close();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guest Book</title>
    </head>
    <body style="background-color: pink;">
        <table style="alignment-adjust: central; width: 100%; border: 0px;">
            <tr>
                <td>
                    <table style="width: 100%; border: 0px;">
                        <tr>
                            <td style="width: 60%; vertical-align: middle; text-align: left; padding-right:0px; padding-left:0px; padding-bottom:0px; font:24px/30px Georgia; width:228px; color:#786e4e; padding-top:0px; height:37px;">
                                View the Guest Book
                            </td>
                            <td style="vertical-align: bottom; text-align: right; font:12px/16px Georgia, serif; color:#786e4e;">
                                <b>Click <a href="index.jsp"> here</a> to sign the guestbook.</b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="text-align: left; vertical-align: top;">
                <td style="height: 20px;"><hr /></td>
            </tr>
            <tr>
                <td>
                    <table style="text-align: left; width: 100%; border: 0px;">
                        <%
                            Iterator iterator = guestbook.iterator();
                            while (iterator.hasNext()) {
                                GuestBook objGb = (GuestBook) iterator.next();
                        %>
                        <tr>
                            <td style="font:12px/16px Georgia; color:#786e4e;">
                                On <%=objGb.getMessageDate()%>,<br />
                                <b><%=objGb.getVisitorName()%>:</b>
                                <%=objGb.getMessage()%>
                                <br /><br />
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </table>
                </td>
            </tr>
        </table>
    </body>
</html>
