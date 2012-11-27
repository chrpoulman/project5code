<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Context.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project 4</title>
    </head>
	<body>
        <div>
            <h2>Information from the listener for the context</h2>
        </div>
		<div>
            <table>
                <tr>
                    <td>Contexts activated</td>
                    <td><%out.println(Context.myContextListener.getCount()); %></td>
                </tr>
				<tr>
                    <td>Server's info</td>
                    <td><%out.println(Context.myContextListener.getServerInfo()); %></td>
                </tr>
				<tr>
                    <td>Servlet Context Name</td>
                    <td><%out.println(Context.myContextListener.getServletContextName()); %></td>
                </tr>
				<tr>
                    <td>Major Java api version of the servlet container</td>
                    <td><%out.println(Context.myContextListener.getMajorVersion()); %></td>
                </tr>
				<tr>
                    <td>Minor Java api version of the servlet container</td>
                    <td><%out.println(Context.myContextListener.getMinorVersion()); %></td>
                </tr>
            </table>
        </div>
	</body>


	
</html>