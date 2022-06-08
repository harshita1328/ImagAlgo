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
  width : 830px;
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
var imageArray = ['insert1.png','insert2.png','insert3.png','insert4.png','insert5.png','insert6.png','insert7.png','insert8.png',
'insert9.png','insert10.png','insert11.png','insert12.png','insert13.png','insert14.png','insert15.png','insert16.png','insert17.png',
'insert18.png','insert19.png','insert20.png','insert21.png','insert22.png','insert23.png','insert24.png','insert25.png',
'insert26.png','insert27.png','insert28.png','insert29.png'];
var steps = ["Intially the elements given for sorting are as shown:",
"Firstly all the elements are unsorted so the marjer is adcanced to right by one element",
"Now the first element of the unsorted part is considered and compared with the element in the sorted part as it is smaller than element in sorted part is moved to right in the unsorted part and unsorted elements are shifted",
"So the first element of unsorted part that is 5 is moved to sorted array.Also the marker is advanced in right by one element",
"Select the first element of the unsorted part that is 7 and compare it with the elements in the sorted part as it is smaller than the element of unsorted part so the element of the sorted part is moved to right in unsorted part and unsorted elements are shifted",
"The marker is advanced in right by one elementand the given sequence is obtained",
"Now select the first element of the unsorted array and compare it with the last element of the unsorted part as the element is smaller so the element of the sorted part is moved to right that is 9 is moved to unsorted part",
"Now compare this element with the next element of the unsorted part ,it is smaller so the element of sorted array that is 7 is moved to right",
"Then it is compared with the next element of the sorted array and found smaller so the element of unsorted array that is 5 is moved to right.Now the element which was selected from unsorted array is inserted to left most position of the sorted array",
"Advace the marker by one right position.Select the first element of the unsorted array,compare it with the last element of the sorted array 9>2 so 9 is shifted to right in the unsorted part",
"Now compare 2 with the next element of the sorted array that is 7 as 7>2 so 7 has to be shifted to right",
"Here 2 is compared with the next element that is 5 as 5>2 so 5 has to be shifted to right",
"Here 2 is compared with 3 as 3>2 so 3 has to be shifted right",
"The element which was selected now is inserted at the first position of the sorted array. Advance the marker to the one right element",
"Now select the first element of the unsorted array comapre it with the last element of the sorted array as 9 is not smaller than so  no shifting is required",
"Advance the marker to the one right element and select the first element of the unsorted part  ",
"Now this element is compared with the element of sorted array from the last element as 1<9 ,so 9 is shifted to right in the unsorted array",
"Here 1 is compared with the next element in the sorted array that is 9 again 9>1 so 9 is shifted to right",
"Next 1 is compared with the next element in the sorted array that is 7 as 7>1 so 7 is shifted to right",
"Here 1 is compared with the next element in the sorted array that is 5 again 5>1 so 5 is shifted to right",
"Here 1 is compared with the next element in the sorted array that is 3 again 3>1 so 3 is shifted to right",
"Here 1 is compared with the next element in the sorted array that is 2 again 2>1 so 2 is shifted to right",
"The element that was selected from the unsorted part is now inserted at the first position of the sorted part and the marker is shifted one position to the right element",
"The first element from the unsorted array is selected and compared with the last element of the sorted array as 9>3 so 9 is shifted to right in the unsorted array ",
"Here 3 is compared with 9 as 9>3 so 9 is shifted to right",
"Now 3 is compared with 7 as 7>3 so 7 is shifted to right",
"Next 3 is compared with 5 as 5>3 so 5 is shifted to right",
"Now when 3 is compared with 3 it is not smaller so no shifting will take place and 3 is inserted at this position only",
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
<p class="card-text" style="font-size:17px;" >Insertion sort is a simple sorting algorithm that builds the final sorted array
 (or list) one item at a time. It is much less efficient on large lists than more advanced algorithms such as quicksort, heapsort,
 or merge sort. When people manually sort cards in a bridge hand, most use a method that is similar to insertion sort
<br>
<br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" >
<br></br> 
<b>Case 1)</b> O(n^2) (Worst case) : The simplest worst case input is an array sorted in reverse order. The set of all worst 
case inputs consists of all arrays where each element is the smallest or second-smallest of the elements before it. In these 
cases every iteration of the inner loop will scan and shift the entire sorted subsection of the array before inserting the 
next element. This gives insertion sort a quadratic running time (i.e.,O(n^2)). 
</br></br>
<b>Case 2)</b> O(n^2) (Average case) : The average case is also quadratic, which makes insertion sort impractical for sorting 
large arrays. However, insertion sort is one of the fastest algorithms for sorting very small arrays, even faster than quicksort;
 indeed, good quicksort implementations use insertion sort for arrays smaller than a certain threshold, also when arising as 
 subproblems; the exact threshold must be determined experimentally and depends on the machine, but is commonly around ten. 
</br></br>
<b>Case 3)</b> O(n) (Best case) : The best case input is an array that is already sorted. In this case insertion sort has a 
linear running time (i.e., O(n)). During each iteration, the first remaining element of the input is only compared with the 
right-most element of the sorted subsection of the array. 
</p>

<p class="card-text" style="font-size:17px;" >
 
 </br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for insertion sort is shown as: 
</br></br>
void insertionSort(int arr[], int n)</br> 
{</br> 
    int i, key, j;</br> 
    for (i = 1; i < n; i++) { </br>
        key = arr[i]; </br>
        j = i - 1; </br>
  
        /* Move elements of arr[0..i-1], that are 
          greater than key, to one position ahead 
          of their current position */</br>
        while (j >= 0 && arr[j] > key) { </br>
            arr[j + 1] = arr[j]; </br>
            j = j - 1; </br>
        } </br>
        arr[j + 1] = key;</br> 
    }</br> 
} 
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