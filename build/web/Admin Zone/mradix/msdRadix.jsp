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
var imageArray = ['Radix1.png', 'Radix2.png', 'Radix3.png', 'Radix4.png'
 , 'Radix5.png','Radix6.png','Radix7.png'];
var steps = 
["For sorting initially following elements are given:",
"Firstly the most significant digits of all the given number are compared",
"After the comparison of most significant didgits numbers are grouped according to their most significant digits",
"After  the first pass when all the numbers are grouped according to their first digit(100's digit), then within each group the elements are compared on the basis of their second significant digit(10's digit)",
"Now the comparison of the second digit from left (10's digit) the numbers are grouped according to them within the groups made by first significant digit",
"After the comparison of 10's place digit now cmparison will be done on the basis of 1's place within the groups made on the basis of first and second most significant digits",
"After all the comparison on the basis of first,second and third most significant digits, elements are sorted"
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
<p class="card-text" style="font-size:17px;" >In computer science, radix sort is a non-comparative integer sorting algorithm 
that sorts data with integer keys by grouping keys by the individual digits which share the same significant position and value.
 A positional notation is required, but because integers can represent strings of characters (e.g., names or dates) and specially
 formatted floating point numbers, radix sort is not limited to integers. Radix sort dates back as far as 1887 to the work of 
 Herman Hollerith on tabulating machines.<br/> 
Most digital computers internally represent all of their data as electronic representations of binary numbers, so processing 
the digits of integer representations by groups of binary digit representations is most convenient. Radix sorts can be implemented
 to start at either the most significant digit (MSD) or least significant digit (LSD). For example, when sorting the number 1234 
 into a list, one could start with the 1 or the 4.   
<br>

</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" >
 O(w,n),
 <br>where w is the number of bits required to store each key <b>(Worst case) </b>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Use</h2></b>
<p class="card-text" style="font-size:17px;" >
 A most significant digit (MSD) radix sort can be used to sort keys in lexicographic 
order. Unlike a least significant digit (LSD) radix sort, a most significant digit radix sort does not necessarily preserve the
 original order of duplicate keys. An MSD radix sort starts processing the keys from the most significant digit, leftmost digit
 , to the least significant digit, rightmost digit. This sequence is opposite that of least significant digit (LSD) radix sorts.
 An MSD radix sort stops rearranging the position of a key when the processing reaches a unique prefix of the key. Some MSD radix
 sorts use one level of buckets in which to group the keys. See the counting sort and pigeonhole sort articles. Other MSD radix 
 sorts use multiple levels of buckets, which form a trie or a path in a trie. A postman's sort / postal sort is a kind of MSD 
 radix sort. 
 </br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for Radix sort is shown as: 
</br></br>
 void radixSort(int array[],int count)</br>
{</br>
int t;</br>
 for (i = 0; i < count; i++)</br>
    {</br>
        t = array[i];        /*first element in t */ </br>
        while(t > 0) </br>
        {</br>
            c++;</br>
            t = t / 10;        /* Find MSB */</br>
        }</br>
        if (maxdigits < c)</br> 
            maxdigits = c;   /* number of digits of a each number */</br>
        c = 0;</br>
    }</br>
        maxdigits=maxdigits-1;</br>
        boolean bool=(maxdigits>0);</br>
    while(bool)</br>
    { </br>
        n = n * 10;</br>
        maxdigits=maxdigits-1;</br>
        bool=(maxdigits>0);</br>
        
    }      </br>
    for (i = 0; i < count; i++)</br>
    {</br>
        max = array[i] / n;        /* MSB - Dividing by particular base */</br>
        t = i;</br>
        for (j = i + 1; j < count;j++)</br>    
        {</br>
            if (max > (array[j] / n))</br>
            {</br>
                max = array[j] / n;   /* greatest MSB */</br>
                t = j;</br>
            }</br>
        }</br>
        temp = array1[t];</br>
        array1[t] = array1[i];</br>
        array1[i] = temp;</br>
        temp = array[t];</br>
        array[t] = array[i];</br>
        array[i] = temp;</br>
    }</br>
    while (n >= 1)</br>
    {</br>
        for (i = 0; i < count;)</br>
        {</br>
            t1 = array[i] / n;</br>
            for (j = i + 1; t1 == (array[j] / n); j++);</br>
                arrange(i, j,array,array1);</br>
            i = j;</br>
        }</br>
        n = n / 10;</br>
    }</br>
    System.out.println("Sorted array elements are:");</br>
        for( i=0;i<count;i++)</br>
        {</br>
        System.out.println(array[i]);</br>
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