<%
    try{
session.setAttribute("uname", null);
session.invalidate();
response.sendRedirect("index.html");
        //out.print("<script>alert('Logging off');window.location.href='index.html';</script>");
    }
    catch(Exception e)
    {
    out.println(e);
    }
%>