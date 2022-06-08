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
<body>
    </br></br>
    <%
    
            String name=(String)session.getAttribute("uname");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/imagalgodb","root","root");
            Statement st=conn.createStatement();
            String q="select * from signup where uname='"+name+"'";
        
            ResultSet rs=st.executeQuery(q);
			if(rs.next())
                        {
                            String fname=rs.getString("fname");
                            String lname=rs.getString("lname");
                            String uname=rs.getString("uname");
                            String email=rs.getString("email");
                            String course=rs.getString("course");
                            String branch=rs.getString("branch");
                        }%>
                        
     
        
    
<div class="container" style="background-color:#e6ffe6;border-radius:7px;" id="tut"></br>
    <h2 style="font-size:23px;color:black;text-align:center"><b>My Info</b></h2>
<p class="card-text" style="font-size:17px;" >
    </br>
<table>
    <tr>
         <td><b>First Name &nbsp;:</b></td>
         <td><%out.println(rs.getString("fname"));%></td>
         <td> <a href="efname.jsp">Edit</a></td>
     </tr>
     <tr>
         <td><b>Last Name &nbsp;:</b></td>
         <td><%out.println(rs.getString("lname"));%></td>
         <td> <a href="elname.jsp">Edit</a></td>
     </tr>
     <tr>
         <td><b>UserName &nbsp;:</b></td>
         <td><%out.println(rs.getString("uname"));%></td>
         
     </tr>
     <tr>
         <td><b>Email &nbsp;:</b></td>
         <td><%out.println(rs.getString("email"));%></td>
         <td> <a href="eemail.jsp">Edit</a></td>
     </tr>
     <tr>
         <td><b>Course &nbsp;:</b></td>
         <td><%out.println(rs.getString("course"));%></td>
         <td> <a href="ecourse.jsp">Edit</a></td>
     </tr>
     <tr>
         <td><b>Branch &nbsp;:</b></td>
         <td><%out.println(rs.getString("branch"));%></td>
         <td> <a href="ebranch.jsp">Edit</a></td>
     </tr>
     
</table>
     
    <a href="secondpage.jsp" class="btn btn-primary" role="button" style=" margin:0px auto;
	margin-top:15px;height:40px;width:160px;">Back to Dashboard</a>

</p>
</br>
</div>
    
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>