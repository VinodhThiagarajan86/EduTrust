
<!DOCTYPE html>
<html lang="en">
  <head>
  	<meta name="layout" content="main"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   

    <title>APSRMCH - Send Mail</title>

    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">
     <br>
     <g:if test="${flash.message}">
			<div class="alert alert-success" role="status">${flash.message}</div>
	</g:if>
	<form role="form">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input  class="form-control" name="emailList" id="exampleInputEmail1" placeholder="Use , for multiple recipients">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Subject</label>
    <input  class="form-control" name="subject"  placeholder="Enter the Subject here">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Message</label>
    <g:textArea   rows="15" cols="40" name="message" class="form-control"  placeholder="Enter your message here"/>
   
  </div>
  
  <g:actionSubmit class="btn btn-success" value="Send Email" action="sendEmail">Send Email</g:actionSubmit>
 
</form>
     
      
      <!-- Site footer -->
      <div class="footer">
        <p>&copy; APSRMCH 2014</p>
      </div>

    </div> <!-- /container -->


   
  </body>
</html>
