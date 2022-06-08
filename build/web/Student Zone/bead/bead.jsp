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
  width : 905px;
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
var imageArray = ['1.png','2.png','3.png','b4.png',
'b5.png','b6.png','b7.png','b8.png','b9.png','b10.png',
'b11.png','b12.png'];
var steps = 
["For sorting initially following elements are given:",
"In bead sort the bead moves to the string below thier original  string  if there is no bead in the string below them due to gravity",
"The beads which don't have support below them because of absence of bead in the string below them will move down.(These beads are indicated in different colours)",
"The beads which don't have support below them because of absence of bead in the string below them will move down.(These beads are indicated in different colours)",
"The beads which don't have support below them because of absence of bead in the string below them will move down.(These beads are indicated in different colours)",
"The beads which don't have support below them because of absence of bead in the string below them will move down.(These beads are indicated in different colours)",
"The beads which don't have support below them because of absence of bead in the string below them will move down.(These beads are indicated in different colours)",
"The beads which don't have support below them because of absence of bead in the string below them will move down.(These beads are indicated in different colours",
"The beads which don't have support below them because of absence of bead in the string below them will move down.(These beads are indicated in different colours",
"The beads which don't have support below them because of absence of bead in the string below them will move down.(These beads are indicated in different colours",
"The beads which don't have support below them because of absence of bead in the string below them will move down.(These beads are indicated in different colours",
"Finally the elements are sorted in the given order"
];
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
<p class="card-text" style="font-size:17px;" >Bead sort, also called gravity sort, is a natural sorting algorithm, developed by Joshua J. Arulanandham, Cristian S. Calude 
and Michael J. Dinneen in 2002, and published in The Bulletin of the European Association for Theoretical Computer Science. 
Both digital and analog hardware implementations of bead sort can achieve a sorting time of O(n); however, the implementation of
 this algorithm tends to be significantly slower in software and can only be used to sort lists of positive integers. Also, it 
 would seem that even in the best case, the algorithm requires O(n2) space.  


</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" >
<b>Case 1)</b> 
O(1): The beads are all moved simultaneously in the same time unit. This is an abstract complexity, and cannot be implemented in 
practice.
<br> 
<b>Case 2)</b> 
O( n ^ 1/2 ): In a realistic physical model that uses gravity, the time it takes to let 
the beads fall is proportional to the square root of the maximum height, which is proportional to n.
</br>
<b>Case 3)</b> 
O(n): The beads are moved one row at a time. This is the case used in the analog and digital hardware solutions.
</br>
<b>Case 4)</b> 
O(S): where S is the sum of the integers in the input set: Each bead is moved individually. This is the case when
 bead sort is implemented without a mechanism to assist in finding empty spaces below the beads, such as in software 
 implementations.
<br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Use</h2></b>
<p class="card-text" style="font-size:17px;" >
A cellular automaton (CA) is a suitable choice for simulating natural physical systems because it is massively parallel, 
self-organizing and is driven by a set of simple, local rules.
In its simplest form, a CA can be considered a homogeneous array of cells in one, two or more dimensions. Each cell has a ?nite 
discrete state. Cells communicate with a number of local neighbors and update synchronously according to deterministic rules.
A cell updates its state depending on its current state and its neighbor states. When modeling physical systems using cellular 
automata, space is treated as having ?nitely many locations per unit of volume. Each location is represented by a cell and a 
state is associated with each cell.
</br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for bead sort is shown as: 
</br></br>
void beadSort(int *a, int len)</br> 
{ </br>
    // Find the maximum element</br> 
    int max = a[0]; </br>
    for (int i = 1; i < len; i++)</br> 
        if (a[i] > max) </br>
           max = a[i]; </br>
  
    // allocating memory </br>
    unsigned char beads[max*len];</br> 
    memset(beads, 0, sizeof(beads)); </br>
  
    // mark the beads </br>
    for (int i = 0; i < len; i++)</br> 
        for (int j = 0; j < a[i]; j++)</br> 
            BEAD(i, j) = 1; </br>
  
    for (int j = 0; j < max; j++) </br>
    { </br>
        // count how many beads are on each post>/br> 
        int sum = 0; </br>
        for (int i=0; i < len; i++)</br> 
        { </br>
            sum += BEAD(i, j); </br>
            BEAD(i, j) = 0; </br>
        } </br>
  
        // Move beads down </br>
 
        for (int i = len - sum; i < len; i++) </br>
 
            BEAD(i, j) = 1;</br>
  
    }</br>
  
  
    // Put sorted values in array using beads</br>
  
    for (int i = 0; i < len; i++)</br>
  
    {</br>
  
        int j;</br>
  
        for (j = 0; j < max && BEAD(i, j); j++);</br>
  
  
        a[i] = j;</br>
  
    }</br>
  
}</br>
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