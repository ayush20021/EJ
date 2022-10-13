<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guest Book</title>
    </head>
    <body style="background-color: pink;">
        <table style="width: 100%; alignment-adjust: central; border: 0px;">
            <tr>
                <td>
                    <table style="width: 100%; border: 0px;">
                        <tr>
                            <td style="text-align: left; vertical-align: middle; padding-right:0px; padding-left:0px; padding-bottom:0px; font:24px/30px Georgia; width:228px; color:#786e4e; padding-top:0px; height:37px;">
                                Sign the Guest Book
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
                    <form action="GuestBookView.jsp" method="post">
                        <table style="border-spacing: 2px; border: 0px;">
                            <tr>
                                <td style="text-align: right; font-size:15px; font-family:Arial,Times,serif; font-weight:bold;">
                                    Visitor Name:
                                </td>
                                <td>
                                    <input name="guest" maxlength="25" size="50" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; font-size:15px; font-family:Arial,Times,serif; font-weight:bold;">
                                    Message:
                                </td>
                                <td>
                                    <textarea rows="5" cols="36" name="message"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: right;">
                                    <input type="submit" name="btnSubmit" value="Submit" />
                                </td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
        </table>
    </body>
</html>
