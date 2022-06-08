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
var imageArray = ['Pman1.png','Pman2.png','Pman3.png','Pman4.png','Pman5.png','Pman5.1.png','Pman6.png',
'Pman6.1.png','Pman6.2.png','Pman6.3.png','Pman6.4.png','Pman7.png','Pman8.png','Pman9.png',
 'Pman9.1.png','Pman9.1.1.png','Pman9.2.png','Pman9.3.png','Pman9.4.png','Pman9.5.png',
   'Pman10.png','Pman11.png','Pman12.png','Pman12.1.png','Pman12.2.png','Pman12.3.png','Pman12.4.png','Pman12.5.png',
   'Pman12.6.png',
   'Pman13.png','Pman14.png','Pman14.1.png','Pman14.2.png','Pman14.3.png','Pman14.4.png',
   'Pman15.png','Pman16.png','Pman16.1.png','Pman16.2.png','Pman16.3.png','Pman17.png','Pman18.png','Pman18.1.png','Pman18.2.png',
 'Pman18.3.png','Pman19.png','Pman20.png','Pman20.1.png','Pman20.2.png','Pman20.3.png','Pman21.png'];
var steps = ["Initially the elements are given as:",
"First step is to find the maximum number of digits in the given set of number",
"Now the value of variable has to be determined that depends on the value of maxDigit,that is if maxDigit=3 then n=100",
"After finding maxDigit and n, we consider the first element of the array and determine it's MSB using n and compare it with the MSB of ohter element in array",
"Compare MSB with the MSB of ohter elements in array. Intially Max=8 after comparison Max=3",
"Now Max=3 is compared with the MSB of other element which and now the value of Max becomes 0",
"Now Max=0 corresponding to the element with index=2 is compared with other elements",
"Now Max=0 corresponding to the element with index=2 is compared with other elements ",
"Now Max=0 corresponding to the element with index=2 is compared with other elements ",
"Now Max=0 corresponding to the element with index=2 is compared with other elements ",
"Now Max=0 corresponding to the element with index=2 is compared with other elements ",
"The element whose MSB value is in Max variable is swapped with the first element in this case it is element at index = 2",
"The value is swapped and we get the following sequence",
"Now the MSB of second element is compared with the MSB of the element in the remaining array",
"Now Max=3 is compared with MSB of other elements ","Max value changes to 2",
"Now Max=2 is compared with the MSB of other element's MSB ","Now when Max=2 is compared with the MSB of other element now value of Max is changed to 0",
"Now Max=0 is compared with other element's MSB ","Now Max=0 is compared with other element's MSB ",
"Now the element whose MSB value is stored in Max is swapped with element at index =1",
"Now after second pass we get the following sequence of array elements",
"Now the MSB of third element is compared with the MSB of the element in the remaining array",
"Max= 2 and is compared with the MSB of the other elements ","Max= 2 and is compared with the MSB of the other elements ",
"Max= 2 and is compared with the MSB of the other elements ","Now the value of Max has to be changed from 2 to 1 ",
"Now the value of Max is changed to 1 ","Max=1 is corresponding to the element at index=7 so it has to be swapped",
"After the third pass element in the array are given in the following sequence",
"Now in fourth pass MSB of element with index=3 is compared with other element's MSB",
"Now in fourth pass MSB of element with index=3 is compared with other element's MSB",
"Now in fourth pass MSB of element with index=3 is compared with other element's MSB ",
"Now in fourth pass MSB of element with index=3 is compared with other element's MSB",
"It is found that it is minimum amongst them so no swapping will be needed"," given array sequence is obtained",
"Now in fifth pass MSB of element with index=4 is compared with other element's MSB",
"Max=3 and is compared with the MSB of other elements MSB ",
"Max=3 and is compared with the MSB of other elements MSB ","Max=3 and is compared with the MSB of other elements MSB ",
 "It is found that it is minimum amongst them so no swapping will be needed and given array sequence is obtained",
"Now in sixth pass MSB of element with index=5 is compared with other element's MSB",
"MSB of element with index=6 is less so Max value is changed",
"Now max=7 is compared with other elements",
"So the element with index=6 whose MSB is present in Max is swapped with the element at index=5" ,
" we get following sequence",
"As the elements are still not sorted we compare the second MSB of the unsorted number in the list",
" Value of Max=0 which is corresponding to the element with index =7 ",
"So it is swapped with element having index=6",
"After swapping",
"Finally sorted array is obtained"];
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
<p class="card-text" style="font-size:17px;" >Postman sort is a highly engineered variant of top-down radix sort where 
attributes of the key are described so the algorithm can allocate buckets and distribute efficiently.This belongs to the class
of non-comparison sort. 
<br>

</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Complexity</h2></b>
<p class="card-text" style="font-size:17px;" >
 
<b>Case 1)</b> O(n*k/d) (Worst case) 
</br>
<b>Case 2)</b> O(n*k/d) (Average case) 
</br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">Use</h2></b>
<p class="card-text" style="font-size:17px;" >
 This is the algorithm used by letter-sorting 
machines in post offices: mail is sorted first between domestic and international; then by state, province or territory; 
then by destination post office; then by routes, etc. Since keys are not compared against each other, sorting time is O(cn),
 where c depends on the size of the key and number of buckets. This is similar to a radix sort that works "top down," or 
 "most significant digit first."
 </br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for Postman sort is shown as: 
</br></br>
void postmanSort(int array[],int count)</br>
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