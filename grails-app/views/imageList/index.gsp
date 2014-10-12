
<%@ page import="byvin.org.edu.ImageList" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		
	</head>
	<body>
	
	<br>
	<hr>
		<div class="row">
		<div class="col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
		<div class="carousel slide" id="theCarousel" data-interval="2000">
		
		<ol class="carousel-indicators">
		<li data-target="#theCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#theCarousel" data-slide-to="1"></li>
		<li data-target="#theCarousel" data-slide-to="2"></li>
		<li data-target="#theCarousel" data-slide-to="3"></li>
		<li data-target="#theCarousel" data-slide-to="4"></li>
		<li data-target="#theCarousel" data-slide-to="5"></li>
		<li data-target="#theCarousel" data-slide-to="6"></li>
		
		</ol>
		
		<div class="carousel-inner">
		<div class="item active">
		<img src="http://gdriv.es/apsrmch/Chrysanthemum.jpg"  alt="1" class="img-responsive"/>
		<div class="carousel-caption">
		<h4> Caption</h4>
		<p>Sub-Title</p>
		</div>
		</div>
		<div class="item">
		<img src="http://gdriv.es/apsrmch/Desert.jpg"  alt="1" class="img-responsive"/>
		<div class="carousel-caption">
		<h4> Caption</h4>
		<p>Sub-Title</p>
		</div>
		</div>
		<div class="item">
		<img src="http://gdriv.es/apsrmch/Hydrangeas.jpg"  alt="1" class="img-responsive"/>
		<div class="carousel-caption">
		<h4> Caption</h4>
		<p>Sub-Title</p>
		</div>
		</div>
		<div class="item">
		<img src="http://gdriv.es/apsrmch/Jellyfish.jpg"  alt="1" class="img-responsive"/>
		<div class="carousel-caption">
		<h4> Caption</h4>
		<p>Sub-Title</p>
		</div>
		</div>
		<div class="item">
		<img src="http://gdriv.es/apsrmch/Koala.jpg"  alt="1" class="img-responsive"/>
		<div class="carousel-caption">
		<h4> Caption</h4>
		<p>Sub-Title</p>
		</div>
		</div>
		<div class="item">
		<img src="http://gdriv.es/apsrmch/Lighthouse.jpg"  alt="1" class="img-responsive"/>
		<div class="carousel-caption">
		<h4> Caption</h4>
		<p>Sub-Title</p>
		</div>
		</div>
		<div class="item">
		<img src="http://gdriv.es/apsrmch/Penguins.jpg"  alt="1" class="img-responsive"/>
		<div class="carousel-caption">
		<h4> Caption</h4>
		<p>Sub-Title</p>
		</div>
		</div>
		</div>
		
		<a href="#theCarousel" class="carousel-control left" data-slide="prev"><span class="icon-prev"></span></a>
		<a href="#theCarousel" class="carousel-control right" data-slide="next"><span class="icon-next"></span></a>
		
		</div>
		
		</div>
		</div>
		
		<g:javascript>
		
		$( document ).ready(function() {
  		 $("#theCarousel").carousel();
		});
		</g:javascript>
	</body>
</html>
