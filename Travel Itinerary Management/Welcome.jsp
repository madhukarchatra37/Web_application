<!DOCTYPE html> 
<html>

<head>
  <title>Travel Itinerary Management</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>


</head>

<%@page import="Model.Userbean"%>
<% 
       Userbean u =(Userbean) session.getAttribute("theuser");%>

<body>
  <div id="main">
    
	<header>
	  
	  <div id="welcome">
              <h1>WELCOME TO TRAVEL ITINERARY MANAGEMENT</h1> 
              <h2 style="float: right; margin-right: -219px; margin-top: -61px;"><span><font size="6">HELLO !<br><%= u.getUsername() %></font></span></h2>
	  
         
              <form action="Home.jsp" style="float: right; margin-right: -219px; margin-top: 80px;">
          You can Logout here: 
          <input type="submit" name="goback" value="Logout"/>
      </form>
          </div>			  	
	
          <nav>
	    <div id="menubar">
          <ul id="nav">
        
            <li class="current">
                <a href="Flight.jsp">Flights<img src="flight1.jpg" alt width="70" height="60"></a></li>
            <li><a href="Cab.jsp">Cabs<img src="index.jpg" alt width="70" height="60"></a></li>
            <li><a href="Hotel.jsp">Hotels<img src="hotel.jpg" alt width="70" height="60"></a></li>
            <li><a href="Cart.jsp">Your Cart<img src="cart.jpg" alt width="70" height="60"></a></li>
          </ul>
        </div>	
      </nav>            
	  
	
	</header>    
	
	<div id="site_content">		

     
	  
	
	  <div id="content">
        <div class="content_item">
            	  
		  <div class="content_imagetext">
                      <br><br><br>
                      <p>  Thank you for choosing our application! We help you find cabs, flights and hotels at 
                      a very reasonable rate and  you can choose your choice above. Add all or 
                      any one. Make your payment and enjoy a wonderland trip.
                                              This application is genuine and you can have your itinerary 
                      once you add all the items to your cart and pay for it. You can view our license at the 
                      bottom of this page. Please logout before closing the browser.
                      </p>
                      <div class="content_image">
            
                        
                        
	        </div>
		  </div><!--close content_imagetext-->		  		  
		
		</div><!--close content_item-->
      </div><!--close content-->   
	
      
      </div><!--close site_content-->  	
      
    <footer>
        <span>  <a href="home.jsp">Home</a> | <a href="aboutus.html">About Us</a> | <a href="license.html">License</a> | <a href="contactus.html">Contact Us</a></span> 
          
    
    </footer> 
  
  </div><!--close main-->
  
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>
  
</body>
</html>
