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
		    
            String fname=request.getParameter("fname");
		    String lname=request.getParameter("lname");
            String uname=request.getParameter("uname");
			String password=request.getParameter("password");
			String cpassword=request.getParameter("cpassword");
			String course=request.getParameter("course");
			String branch=request.getParameter("branch");
			String mnumber=request.getParameter("mnumber");
            String email=request.getParameter("email");
            String security=request.getParameter("security");
        try
        {
            if (password.equals(cpassword)) 
            {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/imagalgodb","root","root");
            Statement st=conn.createStatement();
            st.executeUpdate("insert into signup(fname,lname,uname,password,cpassword,course,branch,mnumber,email,security)values('"+fname+"','"+lname+"','"+uname+"','"+password+"','"+cpassword+"','"+course+"','"+branch+"','"+mnumber+"','"+email+"','"+security+"')");
           out.print("<script>alert('Data Inserted Successfully');window.location.href='index.html';</script>");
        }
            else
            {
            out.print("<script>window.location.href='signup.jsp';</script>");
            }
        }
        catch(Exception e)
        {
        out.print("<script>alert('Invalid Input entered');window.location.href='index.html';</script>");
        }
        
        
        
        
        
        %>
    </body>
</html>
