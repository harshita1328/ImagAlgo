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
var imageArray = ['merge1.png','merge2.png','merge3.png','merge4.png','merge5.png','merge6.png','merge7.png','merge8.png',
'merge9.png','merge10.png','merge11.png','merge12.png','merge13.png','merge14.png','merge15.png','merge16.png'];
var steps = ["Intially the elements given for sorting are as shown:","For dividing the array into two halves mid is calculated using the the index of left most and right most element, mid=(l+r)/2",
"After finding mid the array is divided into two parts","From the two parts obtained by dividing the initial array we divide further into more smaller parts",
"This process of dividing continues until we obtain the parts of array that have only single element",
"After obtaining the arrays that have only single element we merge them by comparing to form array having two elements that are sorted",
"To further merge the array form array of greater number of elements and for this smallest element is moved first",
"Then the next smallest element is sorted","Then this process continues to sort the elements in incraesing order ",
"Now to further merge the array the elements of the two halves are compared and the smallest in both the arrays become the first element of the merged array",
"Now the second smallest element is selected and put into the merged array as second element",
"Now the third smallest element is selected and put into the merged array as third element",
"Now the next smallest element is selected and put into the merged array as next element",
"Now the next smallest element is selected and put into the merged array as next element",
"Now the next smallest element is selected and put into the merged array as next element",
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
    if(i > pre)
    i--;
 i = (i > 0) ? i - 1 : 0;
// creates variable 'div' to load images into a div selected using 'getElementById'
 i = (i > 0) ? i - 1 : i;
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
<p class="card-text" style="font-size:17px;" >Quicksort (sometimes called partition-exchange sort) is an efficient sorting 
algorithm, serving as a systematic method for placing the elements of a random access file or an array in order. Developed by 
British computer scientist Tony Hoare in 1959 and published in 1961, it is still a commonly used algorithm for sorting. When 
implemented well, it can be about two or three times faster than its main competitors, merge sort and heapsort.</br> 
Quicksort is a comparison sort, meaning that it can sort items of any type for which a "less-than" relation (formally, a total
 order) is defined. In efficient implementations it is not a stable sort, meaning that the relative order of equal sort items 
 is not preserved. Quicksort can operate in-place on an array, requiring small additional amounts of memory to perform the sorting.
 It is very similar to selection sort, except that it does not always choose worst-case partition. 
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
<!--<b></b><h2 style="font-size:23px;color:black;text-align:center">Use</h2></b>-->
<p class="card-text" style="font-size:17px;" >
 </br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for  merge sort is shown as: 
</br></br>
void merge(int arr[], int l, int m, int r) </br>
{ </br>
    int i, j, k;</br> 
    int n1 = m - l + 1; </br>
    int n2 =  r - m; </br>
  
    /* create temp arrays */</br>
    int L[n1], R[n2]; </br>
  
    /* Copy data to temp arrays L[] and R[] */</br>
    for (i = 0; i < n1; i++) </br>
        L[i] = arr[l + i]; </br>
    for (j = 0; j < n2; j++) </br>
        R[j] = arr[m + 1+ j]; </br>
  
    /* Merge the temp arrays back into arr[l..r]*/</br>
    i = 0; // Initial index of first subarray </br>
    j = 0; // Initial index of second subarray </br>
    k = l; // Initial index of merged subarray </br>
    while (i < n1 && j < n2) </br>
    { </br>
        if (L[i] <= R[j]) </br>
        { </br>
            arr[k] = L[i];</br> 
            i++;</br> 
        } </br>
        else</br>
        { </br>
            arr[k] = R[j]; </br>
            j++; </br>
        } </br>
        k++; </br>
    } </br>
  
    /* Copy the remaining elements of L[], if there </br>
       are any */
    while (i < n1) </br>
    { </br>
        arr[k] = L[i];</br> 
        i++; </br>
        k++; </br>
    } </br>
  
    /* Copy the remaining elements of R[], if there </br>
       are any */</br>
    while (j < n2) </br>
    { </br>
        arr[k] = R[j]; </br>
        j++; </br>
        k++; </br>
    } </br>
}</br> 
  
/* l is for left index and r is right index of the 
   sub-array of arr to be sorted */
void mergeSort(int arr[], int l, int r) </br>
{ </br>
    if (l < r)</br> 
    { </br>
        // Same as (l+r)/2, but avoids overflow for 
        // large l and h </br>
        int m = l+(r-l)/2; </br>
  
        // Sort first and second halves </br>
        mergeSort(arr, l, m); </br>
        mergeSort(arr, m+1, r); </br>
  
        merge(arr, l, m, r);</br> 
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