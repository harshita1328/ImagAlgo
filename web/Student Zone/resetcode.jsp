<%@page import="java.sql.*"%>
<%

    String security = request.getParameter("security").trim();
    String npassword = request.getParameter("npassword").trim();
    String cpassword = request.getParameter("cpassword").trim();
    try{
           Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/imagalgodb","root","root");
            Statement st=conn.createStatement();
            String q = "select * from signup where security='" +security + "'";
      
	 ResultSet rs;
    rs = st.executeQuery(q);
  String name=(String)session.getAttribute("uname");
    if (rs != null) {
        if (rs.next()) {
            if (npassword.equals(cpassword)) {
                st=conn.createStatement();
                st.executeUpdate("update signup set password='"+npassword+"',cpassword='"+npassword+"' where uname='"+name+"'");
            out.print("<script>alert('Password changed successfully');window.location.href='secondpage.jsp';</script>");
            }
           else {
                out.print("<script>alert('Incorrect Security Answer');window.location.href='reset.jsp';</script>");
                }
        }
         else{
            out.print("<script>alert('Error in changing password');window.location.href='reset.jsp';</script>");

        }

    } 
    else 
    {
        out.print("<script>alert('Error in changing password');window.location.href='reset.jsp';</script>");
    }
    }
    catch(Exception e)
    {
    out.println(e);
    }
%>