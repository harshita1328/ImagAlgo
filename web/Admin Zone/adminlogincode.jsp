<%@page import="java.sql.*"%>
<%

    String aname = request.getParameter("aname").trim();
    String password = request.getParameter("password").trim();
    try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/imagalgodb","root","root");
            Statement st=conn.createStatement();
            
            String q = "select * from adminlogin where aname='" +aname + "' and password='" +password + "'";
      
	 ResultSet rs;
    rs = st.executeQuery(q);
   
    if (rs != null) {
        if (rs.next()) {
            if (rs.getString("password").equals(password)) {
                session.setAttribute("aname",aname);
            out.print("<script>alert('login successful,welcome Admin');window.location.href='welcomeadmin.jsp';</script>");
            } else {
                out.print("<script>alert('Invalid Admin Details');window.location.href='adminlogin.jsp';</script>");

            }

        } else {
            out.print("<script>alert('Invalid Admin Details');window.location.href='adminlogin.jsp';</script>");

        }

    }
         else {
                out.print("<script>alert('Invalid Admin Details');window.location.href='adminlogin.jsp';</script>");

         }
    }
    catch(Exception e)
    {
    out.println(e);
    }
%>