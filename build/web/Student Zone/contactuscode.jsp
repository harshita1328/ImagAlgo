<%-- 
    Document   : insertdata
    Created on : Mar 26, 2019, 4:59:35 PM
    Author     : Lenovo
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
		    
            
            String email=request.getParameter("email");
            String subject=request.getParameter("subject");
        try
        {
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/imagalgodb","root","root");
            Statement st=conn.createStatement();
            out.println("hello");
            st.executeUpdate("insert into contactus(email,subject)values('"+email+"','"+subject+"')");
           out.print("<script>alert('Thank You for contacting...your queries will be considered soon');window.location.href='index.html';</script>");
        }
        catch(Exception e)
        {
        out.print("<script>alert('Please try again..');window.location.href='index.html';</script>");
        }
        
        
        
        
        
        %>
    </body>
</html>
