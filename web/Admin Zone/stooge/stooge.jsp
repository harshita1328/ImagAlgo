<html>
<head>
     <link href="../css/hellostyl_2.css" rel="stylesheet" type="text/css"/>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>

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
  #myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color:red;
  color: white;
  cursor: pointer;
  padding: 15px;
border-radius: 50%;
}

#myBtn:hover {
  background-color: #555;
} 

#slideshowdiv1 {

  outline: 1px solid #008080;
  height : 60px;
  width : 730px;
}
</style>
</head>
<body onload="slideShow(); stopShow();">
<button onclick="topFunction()" id="myBtn" title="Go to top" style="background-color:blue;"><i class="fa fa-arrow-up"></i></button>
<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("myBtn").style.display = "block";
  } else {
    document.getElementById("myBtn").style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>
  <script type = "text/javascript">
   // creates array and holds images
var imageArray = ['Stooge1.png', 'Stooge2.png', 'Stooge3.png', 'Stooge4.png',
 'Stooge5.png','Stooge6.png','Stooge7.png','Stooge8.png','Stooge9.png','Stooge10.png','Stooge11.png',
 'Stooge12.png','Stooge13.png','Stooge14.png','Stooge15.png','Stooge16.png','Stooge17.png','Stooge18.png',
'Stooge19.png','Stooge20.png','Stooge21.png','Stooge22.png','Stooge23.png','Stooge24.png','Stooge25.png',
'Stooge26.png','Stooge27.png','Stooge28.png','Stooge29.png','Stooge30.png','Stooge31.png','Stooge32.png','Stooge33.png',
'Stooge34.png','Stooge35.png','Stooge36.png','Stooge37.png','Stooge38.png','Stooge39.png','Stooge40.png','Stooge41.png',
'Stooge42.png','Stooge43.png','Stooge44.png','Stooge45.png','Stooge46.png','Stooge47.png','Stooge48.png','Stooge49.png',
'Stooge50.png','Stooge51.png','Stooge52.png','Stooge53.png','Stooge54.png'];
var steps = 
["For sorting initially following elements are given:",
"In the first step of stooge sort first element is compared with the last element of the array if the first element is greater than the last element than they are swapped",
"Swap","After swapping, last element becomes the first element and the first element become the last element",
"Now 2/3rd of the array has to be sorted recursively ","For the 2/3rd array first and last element are compared",
"Since the first element is smaller than the last element so no swapping will take place","Now 2/3rd of initial array has to be sorted",
"Now the first and last element are compared ","As first element is less than last element so no swapping will take place",
"2/3rd of the array is has to be sorted","Compare the first and last element ","As first element is less so no swapping",
"2/3rd of the array has to be sorted ","Compare first and last element ","As first element is less so no swapping",
"Now only one element remains that is sorted","Now 2/3rd of the array has to be sorted",
"First and last element are compared and first elemenet was greater so they are swapped",
"2/3rd array","compare","no swapping","2/3rd array","compare","no swapping",
"2/3rd array","compare","no swapping","Now this element is sorted","2/3rd array","compare","elements are swapped",
"2/3rd of the array","Compare","Swap",
"Compare","No swapping the elemenet is sorted","Compare","Swap","2/3rd array ","Compare ","No Swap",
"Intial 2/3rd array is now sorted",
"Now last 2/3rd of the array has to be sorted",
"Now compare the first and the last element ","As first element is less than last element so no swapping is required",
"Now the first and last element of the array are compared and no swapping is required ",
"First and last element are compared and no swapping is required","First and last element are compared and first element is greater than the last elemenet",
"So they are swapped","The elements are compared and first elemenet is graeter than the last elemenet","So they are swapped",
"After initial 2/3rd and the end 2/3rd part are sorted the algorithm will again sort the initial 2/3rd array",
"And Finally the sorted array is obtained"];
// set the array to start at 0
var i = 0;

var speed = 2000;
var speed1 = 2000;
var minSpeed = 3000;
var maxSpeed = 0;
var pre=0;
// create function 'slideShow'
function slideShow() {
// creates variable 'div' to load images into a div selected using 'getElementById'
var div = document.getElementById('slideshowdiv');
div.innerHTML = '<img src="' + imageArray[i] + '" />';
var div1 = document.getElementById('slideshowdiv1');
div1.innerHTML = steps[i];
pre = i;
//increment i by 1
i++;

// checks if i is greater than or equal to the length

// every 2 seconds change image
timer = setTimeout('slideShow()', speed);
if( i == imageArray.length )
	stopShow();
};
function slidenext() {
// creates variable 'div' to load images into a div selected using 'getElementById'
i = (i >= imageArray.length - 1) ? (imageArray.length-1) : i + 1;
var div = document.getElementById('slideshowdiv');

div.innerHTML = '<img src="' + imageArray[i] + '" />';
var div1 = document.getElementById('slideshowdiv1');
div1.innerHTML = steps[i];

stopShow();
};
function slidepre() {
// creates variable 'div' to load images into a div selected using 'getElementById'
if(i > pre)
    i--;
 i = (i > 0) ? i - 1 : 0;var div = document.getElementById('slideshowdiv');

div.innerHTML = '<img src="' + imageArray[i] + '" />';
var div1 = document.getElementById('slideshowdiv1');
div1.innerHTML = steps[i];

stopShow();
};
function displayNextImage() {
              
			  timer=setTimeout('slidenext()',200);
          };

          function displayPreviousImage() {
             
			 			  timer=setTimeout('slidepre()',200);

          };
function stopShow() {
    clearTimeout(timer);
};
function playShow() {
    if( i >= imageArray.length - 1 )
	i = 0;
    timer = setTimeout('slideShow()', speed);
};
function increase() {
  if(speed -100 > maxSpeed )
    speed = 1500; 
};
function decrease() {
  if(speed +100 <= minSpeed)      
    speed = 4500;
};
function normal() {
  if(speed < speed1|| speed > speed1)      
    speed = 3000;
};
</script>

<div class="nav1">
<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-fixed-left">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav m-auto">
      <li class="nav-item">
        <a class="nav-link" href="../secondpage.jsp">Dashboard</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#tut">Tutorial</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="#algo">Algorithm</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="#visu">Visualization</a>
      </li>
	  
    </ul>
    </div>
  </nav>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="tut"></br>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Description</h2></b>
<p class="card-text" style="font-size:17px;" >Stooge sort is a recursive sorting algorithm. It is notable for its exceptional 
bad time complexity of O(nlog 3 / log 1.5 ) = O(n2.7095...). The running time of the algorithm is thus slower compared to 
reasonable sorting algorithms, and is slower than Bubble sort, a canonical example of a fairly inefficient sort. It is however 
more efficient than Slowsort. The name comes from The Three Stooges. 
<br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" >
<b>Case 1)</b> O(nlog 3/log 1.5) (Worst case) 
</br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Important Points</h2></b>
<p class="card-text" style="font-size:17px;" >
It is important to get the integer sort size used in the recursive calls by 
rounding the 2/3 upwards, e.g. rounding 2/3 of 5 should give 4 rather than 3, as otherwise the sort can fail on certain data. 
However, if the code is written to end on a base case of size 1, rather than terminating on either size 1 or size 2, rounding 
the 2/3 of 2 upwards gives an infinite number of calls.

 </br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for Stooge sort is shown as: 
</br></br>
function stoogesort(array L, i = 0, j = length(L)-1){</br>
     if L[i] > L[j] then</br>
         swap(L[i],L[j])</br>
     if (j - i + 1) > 2 then</br>
         t = (j - i + 1) / 3</br>
         stoogesort(L, i  , j-t)</br>
         stoogesort(L, i+t, j  )</br>
         stoogesort(L, i  , j-t)</br>
     return L</br>
 }</br>
<br>
<br>
</p>

</div>
</br/></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="visu"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Visualization</h1></b>
<div class="btn-group">

    <button type="button" class="btn btn-info btn-sm" onclick="decrease()">Slow</button>
    <button type="button" class="btn btn-default btn-sm" onclick="normal()">Normal</button>
    <button type="button" class="btn btn-warning btn-sm" onclick="increase()">Fast</button>
	</div>
<br>
<br>
<div id="slideshowdiv"></div>
<br>
<b>Steps :</b>
<br>
<div id="slideshowdiv1"></div>
<div class="change">
<br>
<div class="btn-group">
 <button type="button" class="btn btn-primary btn-sm" onclick="displayPreviousImage()">Previous</button>
    <button type="button" class="btn btn-danger btn-sm" onclick="stopShow()">Stop</button>
    <button type="button" class="btn btn-success btn-sm" onclick="playShow()">Play</button>
	<button type="button" class="btn btn-primary btn-sm" onclick="displayNextImage()">Next</button>
  </div>

</div>
<br>
<br>
</div>
<script src="js/jquery.js"></script>
<!--<script src="//code.jquery.com/jquery.min.js"></script>-->
<script src="js/bootstrap.min.js"></script>

</body>
</html>