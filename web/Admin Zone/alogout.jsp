<%
    try{
session.setAttribute("aname", null);
session.invalidate();
response.sendRedirect("adminlogin.jsp");
        //out.print("<script>alert('Logging off');window.location.href='index.html';</script>");
    }
    catch(Exception e)
    {
    out.println(e);
    }
%>