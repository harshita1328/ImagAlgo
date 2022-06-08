<%@page import="java.sql.*"%>
<%

    String security = request.getParameter("security").trim();
    String npassword = request.getParameter("npassword").trim();
    String cpassword = request.getParameter("cpassword").trim();
    try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/imagalgodb","root","root");
            Statement st=conn.createStatement();
            //String qlog="insert into login values('"+uname+"','"+password+"','true')";
            String q = "select * from signup where security='" +security + "'";
      
	 ResultSet rs;
    rs = st.executeQuery(q);
   /* if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }*/
    if (rs != null) {
        if (rs.next()) {
            if (npassword.equals(cpassword)) {
                st=conn.createStatement();
                st.executeUpdate("update signup set password='"+npassword+"' where security='"+security+"'");
            out.print("<script>alert('Password changed successfully');window.location.href='index.html';</script>");
            }
           else {
                out.print("<script>alert('Incorrect Security Answer');window.location.href='forget.jsp';</script>");
                }
        }
         else{
            out.print("<script>alert('Error in changing password');window.location.href='forget.jsp';</script>");

        }

    } 
    else 
    {
        out.print("<script>alert('Error in changing password');window.location.href='forget.jsp';</script>");
    }
    }
    catch(Exception e)
    {
    out.println(e);
    }
%>