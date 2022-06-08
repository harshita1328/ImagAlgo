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
  width : 740px
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
var imageArray = ['gnome/g1.png','gnome/g2.png','gnome/g3.png','gnome/g4.png','gnome/g5.png','gnome/g6.png','gnome/g7.png','gnome/g8.png',
'gnome/g9.png','gnome/g10.png','gnome/g11.png','gnome/g12.png','gnome/g13.png','gnome/g14.png','gnome/g15.png','gnome/g16.png','gnome/g17.png',
'gnome/g18.png','gnome/g19.png','gnome/g20.png','gnome/g21.png','gnome/g22.png','gnome/g23.png','gnome/g24.png','gnome/g25.png','gnome/g26.png',
'gnome/g27.png','gnome/g28.png','gnome/g29.png','gnome/g30.png','gnome/g31.png','gnome/g32.png','gnome/g33.png','gnome/g34.png','gnome/g35.png',];
var steps = ["Considering this input array, let's start gnome sort proceeding from left to right",
"To begin with the sort, the first element (arr[i]) is compared with the next adjacent element (arr[i+1])",
"If the first element is greater , they are swapped","The next element is compared with its adjacent element",
"The next element is compared with its adjacent element","The element seems greater hence, it is swapped",
"The element seems greater hence, it is swapped.","As swapping happens, the array is traced backwards, the element arr[i] is compared with arr[i-1].If no change, the array proceeds with the place where it left earlier",
"The next element is compared with its adjacent element","The element seems greater hence, it is swapped","As swapping happens, the array is traced backwards, the element arr[i] is compared with arr[i-1]",
"The element seems smaller hence, it is swapped","As swapping happens, the array is again traced backwards, the element arr[i] is compared with arr[i-1]. If no change, the array proceeds with the place where it left earlier in the forward tracing",
"The next element is compared with its adjacent element","The element seems greater hence, it is swapped","As swapping happens, the array is traced backwards, the element arr[i] is compared with arr[i-1]",
"The element seems smaller hence, it is swapped","As swapping happens, the array is again traced backwards, the element arr[i] is compared with arr[i-1]","The element seems smaller hence, it is swapped",
"As swapping happens, the array is again traced backwards, the element arr[i] is compared with arr[i-1]","The element seems smaller hence, it is swapped","As swapping happens, the array is again traced backwards, the element arr[i] is compared with arr[i-1]",
"The element seems smaller hence, it is swapped. Now, as no more elements exist previous to this position therefore, the index where the forward tracing left is picked from",
"The next element is compared with its adjacent element","The element seems greater hence, it is swapped","As swapping happens, the array is traced backwards, the element arr[i] is compared with arr[i-1]",
"The elements are in order therefore, pick up where forward tracing was stopped",
"The next element is compared with its adjacent element","The element seems greater hence, it is swapped","As swapping happens, the array is traced backwards, the element arr[i] is compared with arr[i-1]",
"The element seems smaller hence, it is swapped","As swapping happens, the array is again traced backwards, the element arr[i] is compared with arr[i-1]","The element seems smaller hence, it is swapped",
"As swapping happens, the array is again traced backwards, the element arr[i] is compared with arr[i-1]","The element seems smaller hence, it is swapped","As swapping happens, the array is again traced backwards, the element arr[i] is compared with arr[i-1]",
"The elements are in order therefore, no change. Now, as the end is reached, the traversal ends", "Now, the array is sorted!"];
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
 i = (i > 0) ? i - 1 : 0;
 var div = document.getElementById('slideshowdiv');

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
        <a class="nav-link" href="secondpage.jsp">Dashboard</a>
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
<p class="card-text" style="font-size:17px;" >The gnome sort is a sorting algorithm which is similar to insertion sort in that it works with one item at a time but gets the item to the proper place by a series of swaps, similar to a bubble sort. It is conceptually simple, requiring no nested loops. 
    Gnome Sort also called Stupid sort is based on the concept of a Garden Gnome sorting his flower pots.<br>
    Here is how a garden gnome sorts a line of flower pots: <br>
Basically, he looks at the flower pot next to him and the previous one; if they are in the right order he steps one pot forward, otherwise, he swaps them and steps one pot backward. 
<br>Boundary conditions: if there is no previous pot, he steps forwards; if there is no pot next to him, he is done.
<br>
<br>
The algorithm finds the first place where two adjacent elements are in the wrong order and swaps them. It takes advantage of the fact that performing a swap can introduce a new out-of-order adjacent pair next to the previously swapped elements. It does not assume that elements forward of the current position are sorted, so it only needs to check the position directly previous to the swapped elements
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" ><b>Worst-case performance :</b> O(n^{2}) <br>
<b>Best-case performance :</b> O(n) <br>
<b>Average performance : </b> O(n^{2}) <br>
<b>Worst-case space complexity :</b>  O(1) auxiliary <br>

</br> 

</p>

</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for gnome sort is shown as: 
</br></br>
gnomeSort(arr,size)<br>
    i := 1<br>
    j := 2<br>
    while i < size do <br>
        if a[i-1] <= a[i] then <br>
            i := j<br>
            j := j + 1 <br>
        else<br>
            swap a[i-1] and a[i]<br>
            i := i - 1<br>
            if i = 0 then<br>
                i := j<br>
                j := j + 1<br>
            endif<br>
        endif<br>
    done <br>
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