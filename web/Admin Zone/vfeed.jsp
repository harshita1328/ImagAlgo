<html>
<head>
    <%@page import="java.sql.*"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
<link rel="stylesheet" href="gallery-grid.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Autour One' rel='stylesheet'>
<meta name="viewport" content="width=device-width, initial-scale=1">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/hellostyl_2.css">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <style>
      td{
          padding:15px;
      }
      </style>
</head>
<body style="background-color:#e6ffe6;">
    <br><br>
    <h2 style="text-align:center;margin:0px auto;"><b>View Feedbacks</b></h2>
    <form method="post">
        <table border ="2" style="align:center;margin:0px auto;">
            <tr>
                
                <td>Email</td>
                <td>Feedback</td>
            </tr>

    <br><br>
    <%
    try
    {
            //String name=(String)session.getAttribute("uname");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/imagalgodb","root","root");
            Statement st=conn.createStatement();
            String q="select * from feedback";
        
            ResultSet rs=st.executeQuery(q);
			while(rs.next())
                        {
                            %>
<tr> 
 <td> <%=rs.getString("email") %> </td>
        <td> <%=rs.getString("feedback")%> </td></tr>
                          <%  
                        }%>
</table>
<%
                        
conn.close();
}
catch(Exception e)
{
    e.printStackTrace();
}
                    
  %>   
    </form>
    
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>