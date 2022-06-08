<html>
<head>
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
height:350px;
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
//text-align:center;
font-weight:bold;
}
.loginBox input
{
width:100%;
margin-bottom:20px;
}
.loginBox input[type="text"],.loginBox input[type="password"],.loginBox input[type="cpassword"]
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
<h2>Change First Name</h2></br>
<form method="post" action="efnamecode.jsp" >
<p>Security Question</p>
<input type="text" name="security"  title="Security Question can't  be blank and contain only letters" required="" required pattern="\w+" placeholder="Write the name of your favourite fruit"/>
<p>New Name</p>
<input type="text" name="fnname" required="" placeholder="Enter your new first name"/>
<input type="submit" name="changefname" value="Change First Name"/>
</form>
</div>

</body>
</html>