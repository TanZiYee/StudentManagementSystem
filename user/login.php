
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/logo.jpg">

    <title>Student Management System</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="asset/css/style.css" rel="stylesheet">
    <link href="assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="assets/css/sticky-footer-navbar.css" rel="stylesheet">
        <link href="asset/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <script src="assets/js/ie-emulation-modes-warning.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.js"></script>
    <style>
      body{
        display: inline-flex;
        height: calc(100%);
        width: calc(100%);
        justify-content: center;
        align-items: center;
      }
      .login-form {
  display: block;
  position: absolute;
  border:5px solid grey;
  border-radius: 20px;
  padding: 30px;
  width: 500px;
  background-color: white;
  left:500px;
  top:250px;
 } 
 .erlert{
  display:block;
  border-radius:5px;
  background-color:rgba(230, 103, 42, 0.37);
  padding: 5px;
}
    </style>
  </head>
<body style="background-color: white">
  

<div class="container-fluid">
<img src="logo.png">
  <div class="login-form" id="login_modal" role="dialog" >
<center><h1>Student Management System</h1></center>

  <form class="form-horizontal" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="user">User:</label>
      <div class="col-md-10">
      <div class="input-group">
      <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
        <input type="text" class="form-control" id="user" name="user" placeholder="Enter User" autocomplete="off">
      </div>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-md-10">
      <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-key fa" aria-hidden="true"></i></span>
          
        <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Enter password">
      </div>
      </div>
    </div>
      
   <script src=
        "https://www.google.com/recaptcha/api.js" async defer>
    </script>
</head>
  
<body>
    <div class="container">
  
        <form action="action.php" method="post"> 
    <div class="form-group">        
      <div class="col-md-offset-9  col-md-12">
      <!--<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">Create New</button>-->
        <button type="hidden"  class="btn btn-warning"><a href="index_test.php">Login</button>
       
      </div>
    </div>
    <div class="g-recaptcha" 
                data-sitekey="6LeeqOogAAAAAGjhRwRL7-nGGQ6awlo2Dnc4Qyfo">
            </div>
            <br>
  
            <button type="submit" name="submit_btn">
                Submit
            </button>
  </form>
  </form>
   </div>          
</div>


    <script src="assets/js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
  
</html>

<?php
    
// Checking valid form is submit or not
if (isset($_POST['submit_btn'])) {
    
    // Storing name in $name variable
    $user = $_POST['user'];
    
    // Storing google recaptcha response
    // in $recaptcha variable
    $recaptcha = $_POST['g-recaptcha-response'];
}
?>
