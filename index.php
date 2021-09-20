
<?php
session_start();
error_reporting(0);

include('includes/dbconnection.php');
?>
<!DOCTYPE html>
<html>
<head>
<title>DJ REVVY BOOKING SERVICE||Home Page</title>
<meta name="viewport" content="width=device-width,intial-scale=1">
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<link rel="stylesheet" href="css/touchTouch.css" type="text/css" media="all" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Allerta Stencil' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css" media="screen" />
<script type="text/javascript">
			$(document).ready(function() {
				
				$('.fancybox').fancybox();

			});
		</script>
</head>
<body>
<?php include_once('includes/header.php');?>
<div class="content"> 
 
 <div id="headerslide" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#headerslide" data-slide-to="0" class="active"></li>
    <li data-target="#headerslide" data-slide-to="1"></li>
    <li data-target="#headerslide" data-slide-to="2"></li>
    <li data-target="#headerslide" data-slide-to="3"></li>
    <li data-target="#headerslide" data-slide-to="4"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images\rsz_782147.jpg" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100"  src="images\3448017.jpg" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100"  src="images\3763000.jpg">
    </div>
       <div class="carousel-item">
      <img class="d-block w-100"  src="images\2883.jpg">
    </div>
       <div class="carousel-item">
      <img class="d-block w-100"  src="images\3448018.jpg">
    </div>
  </div>
  <a class="carousel-control-prev" href="#headerslide" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#headerslide" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

		  </div>
<div class="about content">
	 <div class="container"> 
	 		 <?php
$sql="SELECT * from tblpage where PageType='aboutus'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>		 
		 <h2><?php  echo htmlentities($row->PageTitle);?></h2>

		 <div class="about-main">
			 <div class="col-md-6 abt-pic">
				 <img src="images/e.jpg" class="img-responsive" alt=""/>
			 </div>
			 <div class="col-md-6 abt-pic-info">
				 
				 <p><?php  echo $row->PageDescription;?></p>
				
			 </div>
			  <?php $cnt=$cnt+1;}} ?>
			 <div class="clearfix"></div>
		 </div>
	     <br><br><br><br>
		 <div class="latest">
			 <h3>LATEST POSTERS</h3>		
			 <div class="pic start">
				 <a class="fancybox" href="images/75572116_2612049085485033_2302202706602754048_o.jpg" data-fancybox-group="gallery"><img src="images/75572116_2612049085485033_2302202706602754048_o.jpg" class="img-style row6" alt=""><span> </span></a>	
				 <h4><a href="event.html">Image 1</a></h4>
			 </div>
			 <div class="pic">
				 <a class="fancybox" href="images/74892399_2578132358876706_6268552597267808256_o.jpg" data-fancybox-group="gallery"><img src="images/74892399_2578132358876706_6268552597267808256_o.jpg" class="img-style row6" alt=""><span> </span></a>	
				 <h4><a href="event.html">Image 2</a></h4>
			 </div>
			 <div class="pic">
				 <a class="fancybox" href="images/77214262_2614295695260372_8749193985085407232_o.jpg" data-fancybox-group="gallery"><img src="images/77214262_2614295695260372_8749193985085407232_o.jpg" class="img-style row6" alt=""><span> </span></a>	
				 <h4><a href="event.html">Image 3</a></h4>
			 </div>
			 <div class="pic">
				 <a class="fancybox" href="images/72836246_2534363856586890_1147373819904655360_o.jpg" data-fancybox-group="gallery"><img src="images/72836246_2534363856586890_1147373819904655360_o.jpg" class="img-style row6" alt=""><span> </span></a>	
				 <h4><a href="event.html">Image 4</a></h4>
			 </div>
			 <div class="pic">
				 <a class="fancybox" href="images/80291185_2703869959636278_6454949535054561280_o.jpg" data-fancybox-group="gallery" ><img src="images/80291185_2703869959636278_6454949535054561280_o.jpg" class="img-style row6" alt=""><span> </span></a>	
				 <h4><a href="event.html">Image 5</a></h4>
			 </div>
			 <div class="clearfix"></div>
		 </div>
		</div>
	<?php include_once('includes/footer.php');?>	
</div>
</body>
</html>