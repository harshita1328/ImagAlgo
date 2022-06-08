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
		    
            
            String e=request.getParameter("email");
            String feedback=request.getParameter("feedback");
			String q="select * from signup where email='"+e+"'";
        try
        {
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/imagalgodb","root","root");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(q);
			if(rs.next())
			{
            st.executeUpdate("insert into feedback(email,feedback)values('"+e+"','"+feedback+"')");
           out.print("<script>alert('Thank You for your feedback');window.location.href='index.html';</script>");
        }
		else
		{
		out.print("<script>alert('Opsie...you are not a registered user. Please register yourself and try again');window.location.href='index.html';</script>");
		}
		}
        catch(Exception ex)
        {
        out.print("<script>alert('Please try again..');window.location.href='index.html';</script>");
        }
        
        
        
        
        
        %>
    </body>
</html>
