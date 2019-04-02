<%-- 
    Document   : view-data
    Created on : Apr 1, 2019, 1:22:01 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    </head>
    <body>
    <table class="table table-striped">
    <thead>
      <tr>
        <th>ID</th>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
        <th>Password</th>
        <th>Contact</th>
        <th>Gender</th>
        <th>DOB</th>  
        <th>Edit</th>
        <th>Delete</th> 
      </tr>
    </thead>
    <tbody>
        <div>
            <%

                try{

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con  = DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from web111");

                   while(rs.next())
                   {
            %>

                <p>            
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2) %></td>                
                       <td><%=rs.getString(3) %></td>
                        <td><%=rs.getString(4) %></td>
                        <td><%=rs.getString(5) %></td>
                       <td><%=rs.getString(6) %></td>
                        <td><%=rs.getString(7) %></td>
                        <td><%=rs.getString(8) %></td>

                        <td>
                            <from action="UpdateActionForm" method="post">
                                <input type="hidden" name="Id" value='<%=rs.getString("id")%>'>
                                <a href="Update.jsp"> <input type="submit" value="Edit" /></a>
                            </from>
                        </td>
                        <td>
                            <form action="DeleteActionForm" method="post">
                                 <input type="hidden" name="Id" value='<%=rs.getString("id")%>'>
                                <input type="submit" value="Delete"/>
                            </form>
                        </td>
                    </tr>
                </p>

                <%
                   }
                } 
                catch(Exception ex){

                }
            %>
        </div>
    </tbody>
    </table>
        
    </body>
</html>
