<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
  <title>Login Form</title>
  <link rel="stylesheet" href="css/style1.css">
  
</head>
<body background="travel-pic.jpg">
    <section class="container">
    <div class="login">
        <h1>Thank you for Registering! Please Login with your Email ID & Password</h1>
      <form method="post" action="LoginControl">
          <p>Login<input type="text" name="name" placeholder="EmailID" required="required"></p>
        <p>Password<input type="password" name="password" placeholder="Password" required="required"></p>
        
 <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Remember me on this computer
          </label>
        </p>
        <p class="submit"><input type="submit" value="Login"></p>
      </form>
    </div>

  </section>

 
</body>
</html>
