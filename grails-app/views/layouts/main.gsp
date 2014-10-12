<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
  		<g:javascript library="jquery" plugin="jquery"/>
  		<asset:stylesheet src="bootstrap.min.css"/>
  		<asset:stylesheet src="justified-nav.css"/>
		<g:layoutHead/>
	</head>
	<body>
	
		
		
		<div class="container">

      <div class="masthead">
        <ul class="nav nav-justified">
          <li class="active"><a href="#">Home</a></li>
          
          <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin<span class="caret"></span></a>
         
         <ul class="dropdown-menu" role="menu">
            <li><g:link controller="Sendemail" action="index">Send Mail</g:link></li>
            <li><a href="#">Record Donation</a></li>
            <li><a href="#">Site User Maintenance </a></li>
            <li><a href="#">Add New Images</a></li>
          </ul>
         
          </li>
          
          <li><g:link controller="ImageList" action="index">Gallery</g:link></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
		
		</div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<asset:javascript src="bootstrap.min.js"/>
	</body>
</html>
