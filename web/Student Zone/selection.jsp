<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
<link rel="stylesheet" href="gallery-grid.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">

<link href='https://fonts.googleapis.com/css?family=Autour One' rel='stylesheet'>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../css/hellostyl_2.css" rel="stylesheet" type="text/css"/>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
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
var imageArray = ['selection/select1.png', 'selection/select2.png', 'selection/select3.png', 'selection/select4.png', 'selection/select5.png', 'selection/select6.png', 'selection/select7.png',
                  'selection/select8.png', 'selection/select9.png', 'selection/select10.png', 'selection/select11.png', 'selection/select12.png', 'selection/select13.png', 'selection/select14.png',
				  'selection/select15.png', 'selection/select16.png', 'selection/select17.png', 'selection/select18.png', 'selection/select19.png', 'selection/select20.png', 'selection/select21.png',
				  'selection/select22.png', 'selection/select23.png', 'selection/select24.png', 'selection/select25.png', 'selection/select26.png', 'selection/select27.png', 'selection/select28.png',
				  'selection/select29.png', 'selection/select30.png', 'selection/select31.png', 'selection/select32.png', 'selection/select33.png', 'selection/select34.png', 'selection/select35.png',
				  'selection/select36.png', 'selection/select37.png']
var steps = ["Initially the elements given for sorting are as follows and the first element is considered the max element",
"The element at index=0 is max and compared with the element at index =1 as element at index=1 is smaller so max remains same",
"Here element at index=0 is compared with the element at index =2 as 11 > 7 so max remains same",
"Here element at index=0 is compared with the element at index=3 as 11 > 3 so max remains same",
"Here element at index=0 is compared with the element at index=4 as 11 < 13 so now value of max will be changed. ",
"13 that is the element at index 4 is the value of max now",
"Now max is compared with the element at index=5 as 13 > 9 so max remains same",
"Now max is compared with the element at index=6 as 13 > 2 so max remains same",
"Now the max element is swapped with the element at the last index that is, 13 is swapped with 2",
"Now the largest element of the array is swapped at the last position and it is sorted",
"Now the first element 11 is max-1 and compared with the next element in array as 11 > 5 so max-1 does not change",
"Now 11 is compared with the element at index=2 as 11 > 7 so value of max-1 is not changed",
"Here 11 is compared with the element at index=3 as 11 > 3 so value max-1 remains same",
"Here 11 is compared with the element at index=4 as 11 > 2 so value is not changed",
"Now 11 is compare with the element at index=5 as 11 > 9 so valus is not changed",
"Now the value of max-1 is swapped with the element at last position of unsorted array that is 9 is swapped with 11",
"Now 11 is sorted and size of array is reduced by one",
"Now the first of this array is considered to be the value of max-2 and compared with next element",
"9 is compared with the element at index=2 as 9 > 7 so max-2 is not changed",
"Here max-2 value is compared with element at index=3 as 9 > 3 so no change",
"9 is compared with 2 as 9 > 2 so no change",
"Now the value of max-2 that is 9 is swapped with the last element of unsorted array",
"Now the value of max-2 that is 9 is sorted",
"The first element of the array that is 2 is now taken as max-3 is compared with the next element as 2 < 5 so value of max-3 is changed",
"Now the value of max-3 is 5",
"Now max-3 value that is 5 is compared with the element at index=2 as 5 < 7 so value of max-3 is changed ",
"Now the value of max-3 is changed to 7",
"Now max-3 value is compared with the element at index=4 as 7 > 3 so no change",
"Now the element whose value is stored in max-3 is swapped with the the element at last position of the unsorted array",
"So 3 and 7 are swapped and 7 is sorted",
"Now the first element of the array that is 2 is taken as max-4 and compared with the next element as 2 < 5 so max-4 value is changed",
"Now max-4 value is 5, it is compared with next element as 5 > 3 so no change ",
"Now the max-4 value is swapped with the last element of the unsorted array that is 5 is swapped with 3",
"Now 5 is sorted",
"Now the first element of array is max-5 value and it is compared with the next element that is 3 as 2 < 3 max-5 value is changed to 3",
"Now max-5 value is 3 and it is last element of unsorted array so 3 is sorted",
"Finally 2 is the only element remaining in unsorted array so it is max-6 value and 2 is sorted"];
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
<p class="card-text" style="font-size:17px;" >In computer science, selection sort is a sorting algorithm, specifically an 
in-place comparison sort. It has O(n2) time complexity, making it inefficient on large lists, and generally performs worse 
than the similar insertion sort. Selection sort is noted for its simplicity, and it has performance advantages over more 
complicated algorithms in certain situations, particularly where auxiliary memory is limited. 
The algorithm divides the input list into two parts: the sublist of items already sorted, which is built up from left to right
 at the front (left) of the list, and the sublist of items remaining to be sorted that occupy the rest of the list. Initially, 
 the sorted sublist is empty and the unsorted sublist is the entire input list. The algorithm proceeds by finding the smallest 
 (or largest, depending on sorting order) element in the unsorted sublist, exchanging (swapping) it with the leftmost unsorted 
 element (putting it in sorted order), and moving the sublist boundaries one element to the right. 
</p>
</br>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" ><b>Case 1)</b> O(n^2) (Best case) <br/>
<b>Case 2)</b> O(n^2) (Worst case) 
</br>
<b>Case 3)</b> O(n^2) (Average case) 
</br></br>


</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Variants</h2></b>
<p class="card-text" style="font-size:17px;" >
Heapsort greatly improves the basic algorithm by using an implicit heap data structure to speed up finding and removing the 
lowest datum. If implemented correctly, the heap will allow finding the next lowest element in theta(log n) time instead of theta(n) 
for the inner loop in normal selection sort, reducing the total running time to O(n log n). </br>
A bidirectional variant of selection sort, called cocktail sort, is an algorithm which finds both the minimum and maximum values
 in the list in every pass. This reduces the number of scans of the list by a factor of 2, eliminating some loop overhead but 
 not actually decreasing the number of comparisons or swaps. Note, however, that cocktail sort more often refers to a bidirectional 
 variant of bubble sort. Sometimes this is double selection sort.  
 </br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for selection sort is shown as: 
<br/></br>
void selectionSort(int arr[], int n)</br> 
{ </br>
    int i, j, min_idx;</br> 
  </br>
    // One by one move boundary of unsorted subarray</br> 
    for (i = 0; i < n-1; i++) </br>
    { </br>
        // Find the minimum element in unsorted array </br> 
        min_idx = i; </br>
        for (j = i+1; j < n; j++) </br>
          if (arr[j] < arr[min_idx]) </br>
            min_idx = j; </br>
  </br>
        // Swap the found minimum element with the first element </br> 
        swap(&arr[min_idx], &arr[i]); </br>
    } </br>
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