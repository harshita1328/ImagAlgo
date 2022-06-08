<%@page import="java.sql.*"%>
<%

    String uname = request.getParameter("uname").trim();
    String password = request.getParameter("password").trim();
    try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/imagalgodb","root","root");
            Statement st=conn.createStatement();
            
            String q = "select * from signup where uname='" +uname + "' and password='" +password + "'";
      
	 ResultSet rs;
    rs = st.executeQuery(q);
   
    if (rs != null) {
        if (rs.next()) {
            if (rs.getString("password").equals(password)) {
                session.setAttribute("uname",uname);
                String qlog="insert into login values('"+uname+"','"+password+"','true')";
                int x= st.executeUpdate(qlog);
            out.print("<script>alert('login successful');window.location.href='secondpage.jsp';</script>");
            } else {
                out.print("<script>alert('Invalid User Details');window.location.href='login.jsp';</script>");

            }

        } else {
            out.print("<script>alert('Invalid User Details');window.location.href='login.jsp';</script>");

        }

    }
         else {
                out.print("<script>alert('Invalid User Details');window.location.href='login.jsp';</script>");

         }
    }
    catch(Exception e)
    {
    out.println(e);
    }
%>