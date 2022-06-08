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
width:500px;
height:820px;
position:absolute;
top:53%;
left:50%;
transform:translate(-50%,-50%);
box-sizing:border-box;
background:rgba(0,0,0,0.5);
padding:80px 40px;
margin-bottom:10px;
margin-top:50px;
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
.loginBox input[type="text"],.loginBox input[type="password"],.loginBox input[type="tel"]
{
border:none;
border-bottom:1px solid white;
background:transparent;
outline:none;
height:25px;
color:white;
font-size:15px;
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

</style>
</head>
<body>
<div class="loginBox">
<img src="frontpageimages/icon1.jpg" id="user">
<h2>Sign Up Here</h2></br>
<form action="signupcode.jsp" method="post" name="SignupForm">
<p>Enter first name</p>
<input type="text" name="fname" required="" placeholder="Enter your first name"/>
<p>Enter last name</p>
<input type="text" name="lname" required="" placeholder="Enter your last name"/>
<p>User Name</p>
<input type="text" name="uname" title="Username must not be blank and contain only letters,numbers and underscores." required="" required pattern="\w+" placeholder="Enter your userid"/>
<p>Password</p>
<input type="password" name="password" title="Password must contain atleast 6 characters including uppercase/lowercase letters,numbers " required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required="" placeholder="Enter password"/>
<p>Confirm Password</p>
<input type="password" name="cpassword" title="Please enter the same password as above" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"  placeholder="Confirm password"/>
<p>Course</p>
<input type="text" name="course" required="" placeholder="Enter your course"/>
<p>Branch</p>
<input type="text" name="branch" required="" placeholder="Enter branch"/>
<p>Mobile Number</p>
<!--<input type="text" name="mnumber" required="" maxlength="10" placeholder="Enter mobile number"/>-->
 <input type="tel" name="mnumber" pattern="^\d{10}$" required="" placeholder="Enter mobile number" >
<p>Email</p>
<input type="email" name="email" required="" pattern="+@.com" placeholder="Enter email"/><br>
<p>Security Question for Password Recovery</p>
<input type="text" name="security" required pattern="\w+" title="Security Question can't  be blank space and contain only letters"   placeholder="Write the name of your favourite fruit"/>
<input type="submit" name="signup" value="Sign Up" onclick="confirmPass()"/>

</form>
</div>
    <script type="text/javascript">
        function confirmPass()
        {
            var confirm=document.SignupForm.cpassword.value;
            var password=document.SignupForm.password.value;
           if(confirm != password)
            {
                alert("Password doesn't match");
                return false;
            }
        }
    </script>
</body>
</html>