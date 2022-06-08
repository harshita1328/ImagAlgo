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
  width : 860px;
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
var imageArray = ['cocktail/ck1.png', 'cocktail/ck2.png', 'cocktail/ck3.png', 'cocktail/ck4.png', 'cocktail/ck5.png', 'cocktail/ck6.png', 'cocktail/ck7.png',
                  'cocktail/ck8.png', 'cocktail/ck9.png', 'cocktail/ck10.png', 'cocktail/ck11.png', 'cocktail/ck12.png', 'cocktail/ck13.png', 'cocktail/ck14.png',
				  'cocktail/ck15.png', 'cocktail/ck16.png', 'cocktail/ck17.png', 'cocktail/ck18.png', 'cocktail/ck19.png', 'cocktail/ck20.png', 'cocktail/ck21.png',
				  'cocktail/ck22.png', 'cocktail/ck23.png', 'cocktail/ck24.png', 'cocktail/ck25.png', 'cocktail/ck26.png', 'cocktail/ck27.png', 'cocktail/ck28.png',
				  'cocktail/ck29.png', 'cocktail/ck30.png', 'cocktail/ck31.png', 'cocktail/ck32.png', 'cocktail/ck33.png', 'cocktail/ck34.png', 'cocktail/ck35.png',
				  'cocktail/ck36.png'];
var steps = ["Considering this input array, let's start cocktail sort. This sort is divided into two passes : forward pass and backward pass",
"Starting with first forward pass, the first element (arr[i]) is compared with the next adjacent element (arr[i+1]). If the first element is greater , they are swapped else not",
"Moving ahead through the list, compare the element with its next adjacent one and if found greater, they are swapped",
"Compare and swap","Compare and swap","Compare and swap","Compare and swap","Compare and swap",
"At the end of first forward paas, the largest element moves to the end and list is now decreased by one as one element has already been sorted",
"Starting with first backward pass, the last element (arr[i]) is compared with the previous adjacent element (arr[i-1]). If the first element is smaller , they are swapped else not",
"Compare","Compare and swap","Compare and swap","Compare","Compare and swap",
"At the end of first backward paas, the smallest element moves to the start and list decreases by two as two elements are already sorted",
"Starting with second forward pass, the first element (arr[i]) is compared with the next adjacent element (arr[i+1]). If the first element is greater , they are swapped else not",
"Moving ahead through the list, compare the element with its next adjacent one and if found greater, they are swapped",
"Compare","Compare and swap","Compare and swap", "At the end of second forward paas, the second largest element moves to the end and list is now decreased by three as three element has already been sorted",
"Starting with second backward pass, the last element (arr[i]) is compared with the previous adjacent element (arr[i-1]). If the first element is smaller , they are swapped else not",
"Compare and swap","Compare and swap","Compare",
"At the end of second backward paas, the second smallest element moves to the start and list decreases by four as four elements are already sorted",
"Starting with third forward pass, the first element (arr[i]) is compared with the next adjacent element (arr[i+1]). If the first element is greater , they are swapped else not",
"Compare","Compare", "At the end of third forward paas, the third largest element moves to the end and list is now decreased by five as five element has already been sorted",
"Starting with third backward pass, the last element (arr[i]) is compared with the previous adjacent element (arr[i-1]). If the first element is smaller , they are swapped else not",
"Compare", "At the end of third backward paas, the third smallest element moves to the start and list decreases by six as six elements are already sorted",
"Starting with fourth forward pass, the first element (arr[i]) is compared with the next adjacent element (arr[i+1]). If the first element is greater , they are swapped else not",
, "Now, the array is sorted!"];
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
<p class="card-text" style="font-size:17px;" >Cocktail shaker sort is a slight variation of bubble sort. It differs in that instead of repeatedly
passing through the list from bottom to top, it passes alternately from bottom to top and then from top
to bottom. It can achieve slightly better performance than a standard bubble sort. The reason for this is
that bubble sort only passes through the list in one direction and therefore can only move items backward
one step each iteration.
<br>
<br>
Cocktail shaker sort, also known as bidirectional bubble sort, cocktail sort, shaker sort (which
can also refer to a variant of selection sort), ripple sort, shuffle sort, or shuttle sort, is a
variation of bubble sort that is both a stable sorting algorithm and a comparison sort. Cocktail sort
eliminates turtles by sorting bidirectionally. The first pass in cocktail sort moves from left-to-right
like bubble sort and moves the next highest item to the end of the list. The second pass moves in the
opposite direction, from right-to-left, and moves the next lowest item (turtle) to the front of the list.
By moving the turtles quickly to the front of the list on every other pass, cocktail sort hopes to improve
the performance of bubble sort by reducing the overall number of passes.
<br>
<br>
An example of a list that proves this point is the list (2,3,4,5,1), which would only need to go through
one pass of cocktail sort to become sorted, but if using an ascending bubble sort would take four passes.
However one cocktail sort pass should be counted as two bubble sort passes. Typically cocktail sort is less
than two times faster than bubble sort.
<br>
<br>
Another optimization can be that the algorithm remembers where the last actual swap has been done. In the
next iteration, there will be no swaps beyond this limit and the algorithm has shorter passes. As the cocktail
shaker sort goes bidirectionally, the range of possible swaps, which is the range to be tested, will reduce per
pass, thus reducing the overall running time slightly.
<br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" >The complexity of the cocktail shaker sort in big O notation is O(n^{2}) for both the worst case and the average
case, but it becomes closer to O(n) if the list is mostly ordered before applying the sorting algorithm. 
For example, if every element is at a position that differs by at most k (k >= 1) from the position it is going
to end up in, the complexity of cocktail shaker sort becomes O(kn).
<br>
<br>
</p>

</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for cocktail sort is shown as: 
</br></br>
function cocktailSort( arr : list of sortable items ) <br>
 do <br>
   swapped := false <br>
   //forward pass <br>
   for each i in 0 to length( arr ) - 2 do <br>
     if arr[ i ] > arr[ i+1 ] then <br>
       swap( arr[ i ], arr[ i+1 ] ) <br>
       swapped := true;<br>
   if swapped = false then <br>
     break do-while loop;<br>
   swapped := false<br>
   //backward pass <br>
   for each i in length( arr ) - 2 down to 0 do <br>
     if arr[ i ] > arr[ i+1 ] then <br>
       swap( arr[ i ], arr[ i+1 ] ) <br>
       swapped := true; <br>
 while swapped; <br>
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
</div>
<script src="js/jquery.js"></script>
<!--<script src="//code.jquery.com/jquery.min.js"></script>-->
<script src="js/bootstrap.min.js"></script>

</body>
</html>