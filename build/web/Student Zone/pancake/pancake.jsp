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
var imageArray = ['Pancake1.png', 'Pancake2.png', 'Pancake3.png', 'Pancake4.png'
 , 'Pancake5.png','Pancake6.png','Pancake7.png','Pancake8.png','Pancake9.png',
   'Pancake10.png','Pancake11.png','Pancake12.png','Pancake13.png','Pancake14.png',
   'Pancake15.png','Pancake16.png','Pancake17.png','Pancake24.png'
   ,'Pancake19.png','Pancake20.png','Pancake21.png','Pancake22.png'
   ,'Pancake23.png'];
var steps = ["Initially element given for sorting are:",
"Determine the maximum element in the array and index of maximum element",
"After determining the maximum element in the array, function flip is used to flip/reverse array from 0 to index of the maximum element",
"The array is reversed from 0 to maxSize-1, so that maximum element is move dto the end of array",
"Select sthe maximum element from the unsorted array and it's index",
"function flip is used to flip/reverse array from 0 to index of the maximum element",
"The array is reversed from 0 to maxSize-1, so that maximum element is move dto the end of array",
"Select the maximum element from the unsorted array and it's index",
"function flip is used to flip/reverse array from 0 to index of the maximum element",
"The array is reversed from 0 to maxSize-1, so that maximum element is move dto the end of array",
"Select the maximum element from the unsorted array and it's index",
"function flip is used to flip/reverse array from 0 to index of the maximum element",
"The array is reversed from 0 to maxSize-1, so that maximum element is move dto the end of array",
"Select the maximum element from the unsorted array and it's index",
"function flip is used to flip/reverse array from 0 to index of the maximum element",
"The array is reversed from 0 to maxSize-1, so that maximum element is move dto the end of array",
"Select the maximum element from the unsorted array and it's index",
"function flip is used to flip/reverse array from 0 to index of the maximum element",
"The array is reversed from 0 to maxSize-1, so that maximum element is move dto the end of array",
"Select the maximum element from the unsorted array and it's index",
"function flip is used to flip/reverse array from 0 to index of the maximum element",
"The array is reversed from 0 to last element, so that maximum element is move dto the end of array",
"Finally a sorted array is obtained"
];
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
<p class="card-text" style="font-size:17px;" >Pancake sorting is the colloquial term for the mathematical problem of sorting a
 disordered stack of pancakes in order of size when a spatula can be inserted at any point in the stack and used to flip all 
 pancakes above it. A pancake number is the minimum number of flips required for a given number of pancakes. In this form, the
 problem was first discussed by American geometer Jacob E. Goodman. It is a variation of the sorting problem in which the only
 allowed operation is to reverse the elements of some prefix of the sequence. Unlike a traditional sorting algorithm, which 
 attempts to sort with the fewest comparisons possible, the goal is to sort the sequence in as few reversals as possible.
 A variant of the problem is concerned with burnt pancakes, where each pancake has a burnt side and all pancakes must, 
 in addition, end up with the burnt side on bottom.
<br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" >
<b>Case 1)</b> O(n) (Best case) The minimum number of flips required to sort any
 stack of n pancakes has been shown to lie between 15/14n and 18/11n (approximately 1.07n and 1.64n) but the exact value is 
 not known. 
<br> 
<b>Case 2)</b> O(n) (Worst case) In the worst case the stack will be alternating smallest to largest like 
[0, 9, 1, 8, 2, 7, 3, 6, 5, 4].
 In this case we will have to flip 9 to the top, then to the bottom, or two flips. We then continue with 8, 7, 6, etc. 
 each one requiring two flips to get the pancake to its final sorted location. Meaning it will take a maximum 2n ? 3 flips, 
 n being the number of pancakes in the stack and ?-3? because the final pancake will be in the appropriate position after the 
 second to last flip and the second to last flip will only occur once (no need to flip up then down)
</br>
<b>Case 3)</b> O(n) (Average case) Complexity of average case cannot be greater than worst case complexity.
</br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">History</h2></b>
<p class="card-text" style="font-size:17px;" >
The pancake sorting problem was first posed by Jacob E. Goodman, writing under the pseudonym "Harry Dweighter" (harried waiter)
 Although seen more often as an educational device, pancake sorting also appears in applications in parallel processor networks
 , in which it can provide an effective routing algorithm between processors. The problem is notable as the topic of the only 
 well-known mathematics paper by Microsoft founder Bill Gates (as William Gates), entitled "Bounds for Sorting by Prefix 
 Reversal". Published in 1979, it describes an efficient algorithm for pancake sorting.In addition, the most notable paper 
 published by Futurama co-creator David X. Cohen (as David S. Cohen) concerned the burnt pancake problem. Their collaborators 
 were Christos Papadimitriou (then at Harvard, now at Columbia) and Manuel Blum (then at Berkeley, now at Carnegie Mellon 
 University), respectively. The connected problems of signed sorting by reversals and sorting by reversals were also studied 
 more recently. Whereas efficient exact algorithms have been found for the signed sorting by reversals, the problem of sorting 
 by reversals has been proven to be hard even to approximate to within certain constant factor, and also proven to be 
 approximable in polynomial time to within the approximation factor 1.375.
 </br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for Pancake sort is shown as: 
</br></br>
int pancakeSort(int *arr, int n) </br>
{ </br>
    // Start from the complete </br>
    // array and one by one  </br>
    // reduce current size  </br>
    // by one </br>
    for (int curr_size = n; curr_size > 1; --curr_size) </br> 
    { </br>
        // Find index of the </br>  
        // maximum element in </br>  
        // arr[0..curr_size-1] </br>
        int mi = findMax(arr, curr_size); </br>
  <br/></br>
        // Move the maximum </br>
        // element to end of  </br>
        // current array if </br>
        // it's not already </br>
        // at the end </br>
        if (mi != curr_size-1) </br>
        { </br>
            // To move at the end, </br> 
            // first move maximum  </br>
            // number to beginning  </br>
            flip(arr, mi); </br>
  
            // Now move the maximum </br> 
            // number to end by  </br>
            // reversing current array </br> 
            flip(arr, curr_size-1); </br>
			</br>
        } </br>
    } </br>
} </br>
</br>
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