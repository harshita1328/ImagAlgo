<html>
<head>
    <link href="../css/hellostyl_2.css" rel="stylesheet" type="text/css"/>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
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
var imageArray = ['Bitonic1.png', 'Bitonic2.png', 'Bitonic3.png', 'Bitonic4.png'
 , 'Bitonic5.png','Bitonic6.png','Bitonic7.png','Bitonic8.png','Bitonic9.png',
   'Bitonic10.png','Bitonic11.png','Bitonic12.png','Bitonic13.png'];
var steps = 
["Initially the elements are given as:",
"Consider each 2 elements as bitonic sequence and apply bitonic sorton each 2-pair elements",
"After comparison of 2 consecutive elements in bitonic sequence we get the array of elements as:",
" Two 4 elements bitonic sequence : A(3,7,8,4) and B(2,6,5,1) with comparator lenght as 2"," ",
"A bitonic sequence of 8elements is formed are in the increasing order and next 4 in decreasing order",
"After the bitonic sequence is formed we compare the first element of left part with the first element of right part and similarly for second, third and forth, as shown by arrows"
,"After comparison we obtain the following array elements",
"Now all the elements in first part is smaller than the element in second part. Repeat this process within 2 bitonic sequences",
"We got 4 bitonic sequence of lenght n/4 such that all the elements in the leftmost bitonic sequence are smaller than all the elements in rightmost bitonic sequence"
,"The process is repeated one more time","We get 8 bitonic sequence of length n\/8 which is 1",
"Since all these bitonic sequences are sorted and every bitonic sequence has one element, we get the sorted array as:"];
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
              
			  timer=setTimeout('slidenext()',500);
          };

          function displayPreviousImage() {
             
			 			  timer=setTimeout('slidepre()',500);

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
<p class="card-text" style="font-size:17px;" >Bitonic mergesort is a parallel algorithm for sorting. It is also used as a 
construction method for building a sorting network. The algorithm was devised by Ken Batcher. The resulting sorting networks 
consist of 
O(log ^ 2(n)) comparators and have a delay of O( log ^2( n )) ,where 
n is the number of items to be sorted.
A sorted sequence is a monotonically non-decreasing (or non-increasing) sequence. A bitonic sequence is a sequence with 
x0 <=... <= xk >= ... >= xn-1  
 for some 
k , 0 <= k < n  , or a circular shift of such a sequence. 
<br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" >
<b>Case 1)</b> O(log^2n) (Worst case) 
<br>
<b>Case 2)</b> O(log^2n) (Average case)
</br>
<b>Case 3)</b> O(log^2n) (Best case)
<br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Use</h2></b>
<p class="card-text" style="font-size:17px;" >
It is used in parallel computing and also used for construction of the sorting network
 </br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for bucket sort is shown as: 
</br></br>
/*The parameter dir indicates the sorting direction, ASCENDING</br> 
   or DESCENDING; if (a[i] > a[j]) agrees with the direction, </br>
   then a[i] and a[j] are interchanged.*/</br>
void compAndSwap(int a[], int i, int j, int dir)</br> 
{ </br>
    if (dir==(a[i]>a[j]))</br> 
        swap(a[i],a[j]); </br>
} </br>
  
/*It recursively sorts a bitonic sequence in ascending order, 
  if dir = 1, and in descending order otherwise (means dir=0).</br> 
  The sequence to be sorted starts at index position low, 
  the parameter cnt is the number of elements to be sorted.*/</br>
void bitonicMerge(int a[], int low, int cnt, int dir) </br>
{ </br>
    if (cnt>1) </br>
    { </br>
        int k = cnt/2;</br> 
        for (int i=low; i<low+k; i++)</br> 
            compAndSwap(a, i, i+k, dir); </br>
        bitonicMerge(a, low, k, dir); </br>
        bitonicMerge(a, low+k, k, dir);</br> 
    } </br>
} </br>
  
/* This function first produces a bitonic sequence by recursively </br>
    sorting its two halves in opposite sorting orders, and then</br> 
    calls bitonicMerge to make them in the same order */</br>
void bitonicSort(int a[],int low, int cnt, int dir)</br> 
{ </br>
    if (cnt>1)</br> 
    { </br>
        int k = cnt/2; </br>
  
        // sort in ascending order since dir here is 1</br> 
        bitonicSort(a, low, k, 1); </br>
  
        // sort in descending order since dir here is 0</br> 
        bitonicSort(a, low+k, k, 0); </br>
  
        // Will merge wole sequence in ascending order</br> 
        // since dir=1. </br>
        bitonicMerge(a,low, cnt, dir);</br> 
    } </br>
} </br>
</br></br>
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