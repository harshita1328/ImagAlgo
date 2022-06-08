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
  width : 800px;
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
var imageArray = ['comb/cb1.png', 'comb/cb2.png', 'comb/cb3.png', 'comb/cb4.png', 'comb/cb5.png', 'comb/cb6.png', 'comb/cb7.png', 'comb/cb8.png', 'comb/cb9.png', 
'comb/cb10.png', 'comb/cb11.png', 'comb/cb12.png', 'comb/cb13.png', 'comb/cb14.png', 'comb/cb15.png', 'comb/cb16.png', 'comb/cb17.png', 'comb/cb18.png', 'comb/cb19.png', 
'comb/cb20.png', 'comb/cb21.png', 'comb/cb22.png', 'comb/cb23.png', 'comb/cb24.png', 'comb/cb25.png', 'comb/cb26.png', 'comb/cb27.png', 'comb/cb28.png', 
'comb/cb29.png', 'comb/cb30.png', 'comb/cb31.png', 'comb/cb32.png', 'comb/cb33.png', 'comb/cb34.png', 'comb/cb35.png', 'comb/cb36.png', ];
var steps = ["Considering this input array, let's start comb sort proceeding from left to right. Here, a gap value is calculated for each pass and is equals to (array size/1.3); here, 1.3 is shrinking factor",
"To begin with the sort, the first element (arr[i]) is compared with the element at the gap value from it (arr[i+gapvalue]). If the first element is greater , they are swapped else not",
"Moving ahead through the list, compare the element with element at its gap value", "Compare",
"After reaching the end of list, the gap value decreases again by the factor 1.3",
"The traversing begins again, the first element (arr[i]) is compared with the element at the gap value from it (arr[i+gapvalue]).","If the first element is greater , they are swapped else not",
"Moving ahead through the list, compare the element with element at its gap value", "Compare","Compare","Swap","Compare",
"After reaching the end of list, the gap value decreases again by the factor 1.3",
"The traversing begins again, the first element (arr[i]) is compared with the element at the gap value from it (arr[i+gapvalue]).","If the first element is greater , they are swapped else not",
"Moving ahead through the list, compare the element with element at its gap value", "Compare","Swap","Compare","Compare","Compare","Swap",
"After reaching the end of list, the gap value decreases again by the factor 1.3",
"The traversing begins again, the first element (arr[i]) is compared with the element at the gap value from it (arr[i+gapvalue]).","If the first element is greater , they are swapped else not",
"Moving ahead through the list, compare the element with element at its gap value", "Compare","Swap","Compare","Swap","Compare","Compare","Swap","Compare",
"Now, the array is sorted!"];
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
<p class="card-text" style="font-size:17px;" >Comb sort is an improvement on the bubble sort. In the bubble sorting technique, the items are compared with the
next item in each phase. It compares all the adjacent values while comb sort removes all the
turtle values or small values near the end of the list. But for the comb sort, the items are
sorted in a specific gap. After completing each phase, the gap is decreased. The decreasing factor
or the shrink factor for this sort is 1.3. It means that after completing each phase the gap is divided by 1.3.
<br>
<br>
The basic idea is to eliminate turtles, or small values near the end of the list, since in a bubble sort
these slow the sorting down tremendously. Rabbits, large values around the beginning of the list, do 
not pose a problem in bubble sort.
<br>
In bubble sort, when any two elements are compared, they always have a gap (distance from each other) of 1.
The basic idea of comb sort is that the gap can be much more than 1. The inner loop of bubble sort, which does
the actual swap, is modified such that the gap between swapped elements goes down (for each iteration of outer loop)
in steps of a "shrink factor" k: [ n/k, n/k2, n/k3, ..., 1 ].
<br><br>
The gap starts out as the length of the list n being sorted divided by the shrink factor k (1.3) and one pass of the
aforementioned modified bubble sort is applied with that gap. Then the gap is divided by the shrink factor again, 
the list is sorted with this new gap, and the process repeats until the gap is 1. At this point, comb sort continues
 using a gap of 1 until the list is fully sorted. The final stage of the sort is thus equivalent to a bubble sort, but
 by this time most turtles have been dealt with, so a bubble sort will be efficient.
 <br><br>
The shrink factor has a great effect on the efficiency of comb sort. k = 1.3 has been suggested as an ideal shrink
 factor by the authors of the original article after empirical testing on over 200,000 random lists. A value too
 small slows the algorithm down by making unnecessarily many comparisons, whereas a value too large fails to 
 effectively deal with turtles, making it require many passes with 1 gap size.
 <br>
The pattern of repeated sorting passes with decreasing gaps is similar to Shellsort, but in Shellsort the array
 is sorted completely each pass before going on to the next-smallest gap. Comb sort's passes do not completely
 sort the elements. This is the reason that Shellsort gap sequences have a larger optimal shrink factor of about 2.2.
<br>
</br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" ><b>Worst Case Complexity : </b> O(n^2) <br/>
<b>Average Case Complexity : </b> O(n^2/2^p) where p is number of increments.
</br>
<b>Best Case Complexity : </b> O(n log n)
</br> 
</br>
</p>
<b></b>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for comb sort is shown as: 
</br></br>
CombSort(array, size) <br>
Input: An array of data, and the total number in the array <br>
Output: The sorted Array <br>

   gap := size <br>
   flag := true <br>
   while the gap != 1 OR flag = true do <br>
      gap = floor(gap/1.3) <br>
      if gap < 1 then <br>
         gap := 1 <br>
      flag = false <br>

      for i := 0 to size - gap - 1 do <br>
         if array[i] > array[i+gap] then <br>
            swap array[i] with array[i+gap] <br>
            flag = true; <br>
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