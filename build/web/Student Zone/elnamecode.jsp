<%@page import="java.sql.*"%>
<%

    String security = request.getParameter("security").trim();
    String fnname= request.getParameter("lnname").trim();
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
            
                st=conn.createStatement();
                st.executeUpdate("update signup set lname='"+fnname+"'where uname='"+name+"'");
            out.print("<script>alert('Last Name changed successfully');window.location.href='myinfo.jsp';</script>");
            
          
        }
         else{
            out.print("<script>alert('Error in changing Last Name');window.location.href='myinfo.jsp';</script>");

        }

    } 
    else 
    {
        out.print("<script>alert('Error in changing Last Name');window.location.href='myinfo.jsp';</script>");
    }
    }
    catch(Exception e)
    {
    out.println(e);
    }
%>