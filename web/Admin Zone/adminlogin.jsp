<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
<link rel="stylesheet" href="gallery-grid.css"
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
body
{
margin:0px;
padding:0px;
background:url(frontpageimages/u.jpg);	
background-size:cover;
font-family:sans-serif;
}
.loginBox
{
width:350px;
height:400px;
position:absolute;
top:50%;
left:50%;
transform:translate(-50%,-50%);
box-sizing:border-box;
background:rgba(0,0,0,0.5);
padding:80px 40px;
}
#user
{
width:100px;
height:100px;
border-radius:50px;
overflow:hidden;
position:absolute;
top:calc(-100px/2);
left:calc(50% - 50px);
}
h2
{
margin:0px;
padding:0px;
color:white;
text-align:center;
}
.loginBox p
{
margin:0px;
padding:0px;
color:white;

font-weight:bold;
}
.loginBox input
{
width:100%;
margin-bottom:20px;
}
.loginBox input[type="text"],.loginBox input[type="password"]
{
border:none;
border-bottom:1px solid white;
background:transparent;
outline:none;
height:40px;
color:white;
font-size:16px;
}
::placeholder
{
color:rgba(255,255,255,0.5);
}
.loginBox input[type="submit"]
{
border:none;
outline:none;
height:40px;
color:white;
font-size:16px;
background:#ff267e;
cursor:pointer;
border-radius:20px;
}
.loginBox a
{
color:white;
font-size:14px;
font-weight:bold;
text-decoration:none;
}

</style>
</head>
<body>
   
<div class="loginBox">
<img src="frontpageimages/icon1.jpg" id="user">
<h2>Admin Login </h2></br>
<form method="post" action="adminlogincode.jsp">
<p>Username</p>
<input type="text" required="" name="aname" placeholder="Admin name"/>
<p>Password</p>
<input type="password" required="" name="password" placeholder="Enter password"/></br>
<input type="submit" name="login" value="Login"/>
</form>
</div>
</body>
</html>