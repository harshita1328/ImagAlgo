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
  width : 660px
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
var imageArray = ['bubble/b1.png', 'bubble/b2.png', 'bubble/b3.png', 'bubble/b4.png', 'bubble/b5.png', 'bubble/b6.png', 'bubble/b7.png',
                  'bubble/b8.png', 'bubble/b9.png', 'bubble/b10.png', 'bubble/b11.png', 'bubble/b12.png', 'bubble/b13.png', 'bubble/b14.png',
				  'bubble/b15.png', 'bubble/b16.png', 'bubble/b17.png', 'bubble/b18.png', 'bubble/b19.png', 'bubble/b20.png', 'bubble/b21.png',
				  'bubble/b22.png', 'bubble/b23.png', 'bubble/b24.png', 'bubble/b25.png', 'bubble/b26.png', 'bubble/b27.png', 'bubble/b28.png',
				  'bubble/b29.png', 'bubble/b30.png', 'bubble/b31.png', 'bubble/b32.png', 'bubble/b33.png', 'bubble/b34.png', 'bubble/b35.png',
				  'bubble/b36.png', 'bubble/b37.png', 'bubble/b38.png', 'bubble/b39.png', 'bubble/b40.png', 'bubble/b41.png', 'bubble/b42.png',
				  'bubble/b43.png', 'bubble/b44.png', 'bubble/b45.png', 'bubble/b46.png', 'bubble/b47.png', 'bubble/b48.png'];
var steps = ["Considering this input array, let's start bubble sort proceeding from left to right",
"To begin with the sort, the first element (arr[i]) is compared with the next adjacent element (arr[i+1]). If the first element is greater , they are swapped else not",
"Moving ahead through the list, compare the element with its next adjacent", "And if found greater, they are swapped",
"Compare","Swap","Compare","Swap","Compare","Swap","Compare","Swap","Compare","Swap",
"At the end of first paas, the largest element moves to the end and list is now decreased by one as one element has already been sorted",
"In second pass, the elements are compared and swapped. After each pass, the larger elements move to the left", "Compare and swap","Compare","Swap","Compare","Compare",
"Swap","Compare","Compare","Swap","At the end of second paas, the second largest element moves to the end and list decreases by two as two elements are already sorted",
"In third pass, the elements are compared and swapped, the same way. After each pass, the larger elements move to the left","Compare", "Compare","Swap","Compare","Compare",
"At the end of third paas, the third largest element moves to the end and list decreases by three as three elements are already sorted",
"In fourth pass, the elements are compared and swapped. After each pass, the larger elements move to the left", "Compare","Swap","Compare","Compare",
"At the end of fourth paas, the fourth largest element moves to the end and list decreases by four as four elements are already sorted",
"In fifth pass, the elements are compared and swapped. After each pass, the larger elements move to the left", "Compare","Compare",
"At the end of fifth paas, the fifth largest element moves to the end and list decreases by five as five elements are already sorted", 
"In sixth pass, the elements are compared and swapped. After each pass, the larger elements move to the left", "Compare",
"At the end of sixth paas, the sixth largest element moves to the end and list decreases by six as six elements are already sorted",
"In seventh pass, the elements are compared and swapped", "Now, the array is sorted!"];
// set the array to start at 0
var i = 0;

var speed = 2000;
var speed1 = 2000;
var minSpeed = 3000;
var maxSpeed = 0;
var pre = 0;
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
{
    stopShow();
}
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
	   </li>
	 
    </ul>
    </div>
  </nav>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="tut"></br>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Description</h2></b>
<p class="card-text" style="font-size:17px;" >Bubble sort is a simple sorting algorithm. 
This sorting algorithm is comparison-based algorithm in which each pair of adjacent elements is 
compared and the elements are swapped if they are not in order.
Bubble sort,is also referred to as sinking sort.The algorithm,is named for the way smaller or 
larger elements "bubble" to the top of the list. Although the algorithm is simple, 
it is too slow and impractical for most problems.  Bubble sort can be practical if the input 
is in mostly sorted order with some out-of-order elements nearly in position. 
</p>
</br>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" ><b>Case 1)</b> O(n) (Best case) This time complexity can 
occur if the array is already sorted, and that means that no swap occurred and only 1 iteration of
 n elements.<br/>
<b>Case 2)</b> O(n^2) (Worst case) The worst case is if the array is already sorted but in descending 
order. This means that in the first iteration it would have to look at n elements, then after that
 it would look n - 1 elements (since the biggest integer is at the end) and so on and so forth
 till 1 comparison occurs. Big-O = n + n - 1 + n - 2 ... + 1 = (n*(n + 1))/2 = O(n^2).
</br>
<b>Case 3)</b> O(n^2) (Average case) The average case is if the array elements lies somewhere 
between worst case and best case.
</br></br>
The only significant advantage that bubble sort has over most other algorithms, even quicksort,
 but not insertion sort, is that the ability to detect that the list is sorted efficiently is
 built into the algorithm. When the list is already sorted (best-case), the complexity of bubble
 sort is only O(n). By contrast, most other algorithms, even those with better average-case 
 complexity, perform their entire sorting process on the set and thus are more complex. However, 
 not only does insertion sort share this advantage, but it also performs better on a list that is 
 substantially sorted (having a small number of inversions). 
Bubble sort should be avoided in the case of large collections. It will not be efficient in the 
case of a reverse-ordered collection. 

</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Use</h2></b>
<p class="card-text" style="font-size:17px;" >
Although bubble sort is one of the simplest sorting algorithms to understand and implement, 
its O(n^2) complexity means that its efficiency decreases dramatically on lists of more than a 

small number of elements. Even among simple O(n^2) sorting algorithms, algorithms like insertion
 sort are usually considerably more efficient. </br></br>
Due to its simplicity, bubble sort is often used to introduce the concept of an algorithm,
 or a sorting algorithm, to introductory computer science students. However, some researchers 
 such as Owen Astrachan have gone to great lengths to disparage bubble sort and its continued 
 popularity in computer science education, recommending that it no longer even be taught.</br></br>
 Bubble sort is asymptotically equivalent in running time to insertion sort in the worst case,
 but the two algorithms differ greatly in the number of swaps necessary. Experimental results 
 such as those of Astrachan have also shown that insertion sort performs considerably better even 
 on random lists. For these reasons many modern algorithm textbooks avoid using the bubble sort 
 algorithm in favor of insertion sort.</br> </br>
Bubble sort also interacts poorly with modern CPU hardware. It produces at least twice as many 
writes as insertion sort, twice as many cache misses, and asymptotically more branch mispredictions.
 Experiments by Astrachan sorting strings in Java show bubble sort to be roughly one-fifth as fast
 as an insertion sort and 70% as fast as a selection sort.</br></br>
In computer graphics bubble sort is popular for its capability to detect a very small error 
(like swap of just two elements) in almost-sorted arrays and fix it with just linear complexity 
(2^n). For example, it is used in a polygon filling algorithm, where bounding lines are sorted by
 their x coordinate at a specific scan line (a line parallel to the x axis) and with incrementing
 y their order changes (two elements are swapped) only at intersections of two lines. Bubble sort
 is a stable sort algorithm, like insertion sort. 
 </br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for bubble sort is shown as: 
<br/></br>
void bubbleSort(int arr[], int n)</br> 
{ </br>
   int i, j; </br>
   bool swapped; </br>
   for (i = 0; i < n-1; i++) </br>
   { </br>
     swapped = false; </br>
     for (j = 0; j < n-i-1; j++) </br>
     { </br>
        if (arr[j] > arr[j+1])</br> 
        { </br>
           swap(&arr[j], &arr[j+1]);</br> 
           swapped = true; </br>
        } </br>
     } </br>
  
     // IF no two elements were swapped by inner loop, then break </br>
     if (swapped == false) </br>
        break; </br>
   } </br>
} </br></br>
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
</div>
<script src="js/jquery.js"></script>
<!--<script src="//code.jquery.com/jquery.min.js"></script>-->
<script src="js/bootstrap.min.js"></script>

</body>
</html>