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
var imageArray = ['bucket/bt1.png', 'bucket/bt2.png', 'bucket/bt3.png', 'bucket/bt4.png','bucket/bt5.png', 'bucket/bt6.png', 'bucket/bt7.png', 'bucket/bt8.png',
'bucket/bt9.png', 'bucket/bt10.png', 'bucket/bt11.png', 'bucket/bt12.png', 'bucket/bt13.png', 'bucket/bt14.png'];
var steps = ["Considering this input array, let's start bucket sort proceeding from left to right",
"To begin with the sort, the maximum element i.e. max, the divisor i.e. div are found out. The no. of buckets = 10 i.e. 0-9",
"In order to calculate the div, the formula used is, div= ceil(max/no. of buckets)", "The index of the bucket where the element is placed i.e. in, is given by in = floor(element/div). The element is placed in respective bucket",
"Element inserted into bucket index","Element inserted into bucket index","Element inserted into bucket index","Element inserted into bucket index","Element inserted into bucket index",
"Element inserted into bucket index","Element inserted into bucket index","Now, the bucket elements are sorted individually using insertion sort",
"The elements of the bucket are put back into the array in order from bucket 0-9","Now, the array is sorted!"];
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
<p class="card-text" style="font-size:17px;" >Bucket sort, or bin sort, is a sorting algorithm that works by distributing the elements of an array into
a number of buckets. Each bucket is then sorted individually, either using a different sorting
algorithm, or by recursively applying the bucket sorting algorithm. It is a distribution sort, a
generalization of pigeonhole sort, and is a cousin of radix sort in the most-to-least significant digit
flavor. Bucket sort can be implemented with comparisons and therefore can also be considered a
comparison sort algorithm. The computational complexity depends on the algorithm used to sort
each bucket, the number of buckets to use, and whether the input is uniformly distributed.
<br>
<br>
Bucket sort is mainly useful when input is uniformly distributed over a range.
For example, consider the following problem. 
Sort a large set of floating point numbers which are in range from 0.0 to 1.0 and are
uniformly distributed across the range. How do we sort the numbers efficiently?
<br>
A simple way is to apply a comparison based sorting algorithm. The lower bound for Comparison
based sorting algorithm (Merge Sort, Heap Sort, Quick-Sort .. etc) is O(nLogn), i.e., they
cannot do better than nLogn.
<br>
Can we sort the array in linear time? Counting sort can not be applied here as we use keys as
index in counting sort. Here keys are floating point numbers. 
The idea is to use bucket sort. <br>
Bucket sort works as follows: <br>
1. Set up an array of initially empty "buckets".<br>
2. Scatter: Go over the original array, putting each object in its bucket.
<br>3. Sort each non-empty bucket.<br>
4. Gather: Visit the buckets in order and put all elements back into the original array.
<br>

</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" >
<b>*</b> Bucket sort assumes that the input is drawn from a uniform distribution. <br>
<b>*</b> The computational complexity estimates involve the number of buckets. <br>
<b>*</b> Bucket sort can be exceptionally fast because of the way elements are assigned to buckets, typically
using an array where the index is the value. <br>
<b>*</b> This means that more auxiliary memory is required for the buckets at the cost of running time than
more comparison sorts. <br>
<b>*</b> The average time complexity for Bucket Sort is O(n + k). The worst time complexity is O(n²). <br>
<b>*</b> The space complexity for Bucket Sort is O(n+k). <br>


</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Use</h2></b>
<p class="card-text" style="font-size:17px;" >
Bucket sort can be used for distributed sorting - each bucket can be ordered by a different thread
or even by a different computer. Another use case is a sorting of huge input data, which cannot be
loaded into the main memory by an ordinary  algorithm. This problem can be solved by dividing the 
data into sufficiently small buckets, sorting them one by one by appropriate algorithm, while 
storing rest of the data in the external memory (e.g. hard drive).
 </br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for bucket sort is shown as: 
</br></br>
bucketSort(array, size)</br> 
   Input: An array of data, and the total number in the array </br>
   Output: The sorted Array </br>
      for i := 0 to size-1 do <br>
      insert array[i] into the bucket index (size *  array[i]) <br>
   done <br>

   for i := 0 to size-1 do <br>
      sort bucket[i] <br>
   done <br>

   for i := 0 to size -1 do <br>
      gather items of bucket[i] and put in array <br>
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