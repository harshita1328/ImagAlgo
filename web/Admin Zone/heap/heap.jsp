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
  width : 880px;
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
var imageArray = ['heap1.png','heap2.png','heap3.png','heap4.png','heap5.png','heap6.png','heap7.png','heap8.png',
'heap9.png','heap10.png','heap11.png','heap12.png','heap13.png','heap14.png','heap15.png','heap16.png','heap17.png','heap18.png',
'heap19.png','heap20.png',
'heap21.png','heap22.png','heap23.png','heap24.png','heap25.png','heap26.png','heap27.png','heap28.png','heap29.png','heap30.png',
'heap31.png','heap32.png','heap33.png'];
var steps = ["Intially the elements given for sorting are as shown:","A heap is formed from the given input data",
"For making a max heap the value of the parent node should be greater than it's children node so we need to swap the greater value at the parent node position with the smmaller value ",
"After changing the values we obtain",
"For making a max heap the value of the parent node should be greater than it's children node so we need to swap the greater value at the parent node position with the smmaller value",
"After swapping we obtain",
"For making a max heap the value of the parent node should be greater than it's children node so we need to swap the greater value at the parent node position with the smmaller value ",
"After swapping we obtain",
"Now when a max heap is formed the largest element is present at first postion so first element of the heap is swapped with the last element",
"After largest element is swapped to the end of the heap it is sorted and the size of heap is reduced by 1",
"Now for making the max heap if the value of child node is greater than parent node than it is swapped with the parent node",
"After swapping we obtain",
"Now for making the max heap check if the value of children node is greater than parent node if yes then swap",
"Now for making the max heap check if the value of children node is greater than parent node if yes then swap",
"Max heap is obtained ",
"Now when a max heap is formed the largest element is present at first postion so first element of the heap has to be swapped with the last element",
"Swap the last element with the first element","Size of the heap is reduced by one ",
"Now for making the max heap if the value of child node is greater than parent node than it is swapped with the parent node",
"Now for making the max heap if the value of child node is greater than parent node than it is swapped with the parent node",
"Now max heap is formed","Swap the first element with the last element","Last element is maximum so it is sorted and the size of heap is reduced by one",
"Now for making the max heap if the value of child node is greater than parent node than it is swapped with the parent node",
"Now for making the max heap if the value of child node is greater than parent node than it is swapped with the parent node",
"Max heap is formed swap the first element with the last element","The last element being the maximum is sorted and then size of heap is reduced by one",
"Now for making the max heap if the value of child node is greater than parent node than it is swapped with the parent node",
"Max heap is formed","Swap the first element with the last element","The last element is sorted and the size of heap is reduced by one",
"In the max heap swap the last element with the first element and last element is sorted","Size of the heap is reduced by one and only one element remains which is sorted",
"Finally all the elements are sorted and we get following sequence"];
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
<p class="card-text" style="font-size:17px;" >In computer science, heapsort is a comparison-based sorting algorithm. Heapsort 
can be thought of as an improved selection sort: like that algorithm, it divides its input into a sorted and an unsorted region,
 and it iteratively shrinks the unsorted region by extracting the largest element and moving that to the sorted region. The 
 improvement consists of the use of a heap data structure rather than a linear-time search to find the maximum.
Although somewhat slower in practice on most machines than a well-implemented quicksort, it has the advantage of a more favorable
 worst-case O(n log n) runtime. Heapsort is an in-place algorithm, but it is not a stable sort. 
Heapsort was invented by J. W. J. Williams in 1964. This was also the birth of the heap, presented already by Williams as a 
useful data structure in its own right.In the same year, R. W. Floyd published an improved version that could sort an array 
in-place, continuing his earlier research into the treesort algorithm.
<br>
<br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" >
<br></br> 
<b>Case 1)</b> O(nlogn) (Worst case) 
</br></br>
<b>Case 2)</b>  O(nlogn) (Average case) 
</br></br>
<b>Case 3)</b>  O(nlogn) (Best case) 
</br></br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Comparison</h2></b>
<p class="card-text" style="font-size:17px;" >Heapsort primarily competes with quicksort, another very efficient general 
purpose nearly-in-place comparison-based sort algorithm. Quicksort is typically somewhat faster due to some factors, but 
the worst-case running time for quicksort is O(n2), which is unacceptable for large data sets and can be deliberately 
triggered given enough knowledge of the implementation, creating a security risk. 

 </br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for Heap sort is shown as: 
</br></br>
void heapify(int arr[], int n, int i)</br>
{ </br>
    int largest = i; // Initialize largest as root</br> 
    int l = 2*i + 1; // left = 2*i + 1 </br>
    int r = 2*i + 2; // right = 2*i + 2 </br>
  
    // If left child is larger than root </br>
    if (l < n && arr[l] > arr[largest])</br> 
        largest = l; </br>
  
    // If right child is larger than largest so far </br>
    if (r < n && arr[r] > arr[largest]) </br>
        largest = r; </br>
  
    // If largest is not root </br>
    if (largest != i) </br>
    { </br>
        swap(arr[i], arr[largest]); </br>
  
        // Recursively heapify the affected sub-tree </br>
        heapify(arr, n, largest); </br>
    } </br>
} </br>
  
// main function to do heap sort </br>
void heapSort(int arr[], int n) </br>
{ </br>
    // Build heap (rearrange array) </br>
    for (int i = n / 2 - 1; i >= 0; i--)</br> 
        heapify(arr, n, i);</br> 
  
    // One by one extract an element from heap </br>
    for (int i=n-1; i>=0; i--) </br>
    { </br>
        // Move current root to end </br>
        swap(arr[0], arr[i]);</br> 
  
        // call max heapify on the reduced heap </br>
        heapify(arr, i, 0); </br>
    } </br>
} </br>
  
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