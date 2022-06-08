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
var imageArray = ['quick1.png','quick2.png','quick3.png','quick4.png','quick5.png','quick6.png','quick7.png','quick8.png',
'quick9.png','quick10.png','quick11.png','quick12.png','quick13.png','quick14.png','quick15.png','quick16.png','quick17.png',
'quick18.png','quick19.png','quick20.png'];
var steps = ["Intially the elements given for sorting are as shown:",
"Selecting the pivot as last element for partitioning the array.Partition should be done in such a way that every element in the left one is shorter than the pivot element and every element in right of it is larger.",
"Compare every element with pivot element, if found shorter compare it with (i+1)th element considering i=-1 if greater than pivot then leave and more forward. Here 8>2 so no change.",
"Here 3>2, no change",
"Here 1<2, so swap it with (i+1)th element. Here (i+1)=0 index position so swap a[0] and current elemnt ie., 1",
"Here 7>2 , no change",
"Here 0<2,so swap it with (i+1)th element. Here (i+1)=1 index position so swap a[1] and current element ie., 0",
"Here 10>2 , no change",
"When all the elements are compared with pivot and all the elements smaller than pivot are put on the left side.Now swap pivot element with the element at index (i+1)=2.",
"Now the array elements are partitioned into two parts,the one on the left side of pivot elements are smaller and on the right side the elements are greater ",
"Now in left part of the array ie.,the elements smaller than pivot element.The last element is selected as the pivot for this array",
"Compare every element with pivot element,1>0 so no change.Now the pivot element is swapped with the element at index (i+1)=0",
"So the left part of the array is sorted.Now we will consider the right part",
"Now select the last element of the right part as pivot element",
"Compare every element with pivot element,7<8 so swap it with (i+1)=0,as the element itself is present at this index so no change",
"Here 3<8, so swap it with element at index (i+1)=0 position so 3 is swapped with 7",
"Here 10>8, no change",
"When all the elements are compared with pivot.Now swap pivot element with the element at index (i+1)=2 so 8 and 10 are swapped",
"Now we obtain the two subparts that are sorted,one on the left side of pivot(element smaller than pivot) and one on right side of pivot(element greater than pivot)",
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
<b>Case 1)</b>  O(n^2)(Worst case) 
</br></br>
<b>Case 2)</b>  O(n log n)(Average case) 
</br></br>
<b>Case 3)</b>  O(n log n)(Best case) 
</br></br>
</p>
<b></b><h2 style="font-size:23px;color:black;text-align:center">History</h2></b>
<p class="card-text" style="font-size:17px;" >The quicksort algorithm was developed in 1959 by Tony Hoare while in the Soviet 
Union, as a visiting student at Moscow State University. At that time, Hoare worked in a project on machine translation for 
the National Physical Laboratory. As a part of the translation process, he needed to sort the words in Russian sentences prior
 to looking them up in a Russian-English dictionary that was already sorted in alphabetic order on magnetic tape.After recognizing
 that his first idea, insertion sort, would be slow, he quickly came up with a new idea that was Quicksort. He wrote a program 
 in Mercury Autocode for the partition but could not write the program to account for the list of unsorted segments. On return
 to England, he was asked to write code for Shellsort as part of his new job. Hoare mentioned to his boss that he knew of a 
 faster algorithm and his boss bet sixpence that he did not. His boss ultimately accepted that he had lost the bet. Later, Hoare 
 learned about ALGOL and its ability to do recursion that enabled him to publish the code in Communications of the Association 
 for Computing Machinery, the premier computer science journal of the time.
 
 </br></br>
</p>
</div>
</br></br>
<div class="container" style="background-color:#e6ffe6;border-radius:7px;"id="algo"></br>
<b></b><h1 style="font-size:23px;color:black;text-align:center">Algorithm</h1></b>
<p class="card-text" style="font-size:17px;" >The algorithm for quick sort is shown as: 
</br></br>
/* low  --> Starting index,</br>
  high  --> Ending index */</br>
quickSort(arr[], low, high)</br>
{</br>
    if (low < high)</br>
    {</br>
        /* pi is partitioning index, arr[pi] is now
           at right place */</br>
        pi = partition(arr, low, high);</br>

        quickSort(arr, low, pi - 1);  // Before pi</br>
        quickSort(arr, pi + 1, high); // After pi</br>
    }</br>
}</br>
int partition(int arr[],int low,int high)</br>
{</br>
int pivot=arr[high];</br>
int i=(low-1);</br>
for(int j=low;j<=high-1;j++)</br>
{</br>
if(arr[j]<=pivot)</br>
{</br>
i++;</br>
swap(&arr[i+1],&arr[j]);</br>
}</br>
}</br>
swap(&arr[i+1],arr[high]);</br>
return(i+1);</br>
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