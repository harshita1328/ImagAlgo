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
height:450px;
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
<h2>Change Password</h2></br>
<form method="post" action="forgetcode.jsp" name="ChangePasswordForm">
<p>Security Question</p>
<input type="text" name="security"  title="Security Question can't  be blank and contain only letters" required="" required pattern="\w+" placeholder="Write the name of your favourite fruit"/>
<p>Password</p>
<input type="password" required="" title="Password must contain atleast 6 characters including uppercase/lowercase letters,numbers and undercores" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="npassword" placeholder="Enter new password"/></br>
<p>Confirm Password</p>
<input type="password" required="" title="Please enter the same password as above" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="cpassword" placeholder="Confirm password"/></br>
<input type="submit" name="changepassword" value="Change Password" onclick="confirmPass()"/>
</form>
</div>
    <script>
        function confirmPass()
        {
            var confirm=document.ChangePasswordForm.cpassword.value;
            var password=document.ChangePasswordForm.npassword.value;
            if(confirm!=password)
            {
                alert("Password doesn't match");
                return false;
            }
        }
    </script>
</body>
</html>