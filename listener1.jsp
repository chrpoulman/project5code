<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Session.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project 4</title>
    </head>
    <body>
        <div>
            <h2>Information from the listener for the session</h2>
        </div>
        <div>
            <table>
                <tr>
                    <td>Sessions activated</td>
                    <td><%out.println(Session.myHttpSessionListener.getSessionsNum()); %></td>
                </tr>
				<tr>
                    <td>Session's Id</td>
                    <td><%out.println(Session.myHttpSessionListener.getSessionId()); %></td>
                </tr>
				<tr>
                    <td>Session's Started time</td>
                    <td><%out.println(Session.myHttpSessionListener.getSessionStart()); %></td>
                </tr>
				<tr>
                    <td>Session's LastAccess</td>
                    <td><%out.println(Session.myHttpSessionListener.getSessionLastAccess()); %></td>
                </tr>
				
            </table>
        </div>
    </body>
</html>
