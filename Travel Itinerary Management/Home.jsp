<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOMEPAGE</title>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
 
  <script type="text/javascript">
      
      function validate()
{
 var email = textarea1.value;
  atpos = email.indexOf("@");
  dotpos = email.lastIndexOf(".");
 if (email == "" || atpos < 1 || ( dotpos - atpos < 2 )) 
 {
     alert("Please enter correct email ID");
     textarea1.focus() ;
     return false;
 }

return (true);
}

  </script>
  
  
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
   <script>
  $(function() {
    $( "#datepicker1" ).datepicker();
  });
  </script>

  <style type="text/css">
  
      .login p.remember_me {
  float: left;
  line-height: 31px;
}
.login p.remember_me label {
  font-size: 12px;
  color: #777;
  cursor: pointer;
}
.login p.remember_me input {
  position: relative;
  bottom: 1px;
  margin-right: 4px;
  vertical-align: middle;
  
      h1{font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:black;
text-align: center; text-decoration: underline }

table{
    font-family: Calibri; color:black; font-size: 11pt; font-style: normal;
 background-color: whitesmoke; border-collapse: collapse; border: 2px solid navy
}
table.inner{border: 0px}


  </style>
  
</head>



<body background="travel-pic.jpg">
    
    <center><h1 style="text-decoration: underline "> Welcome To Travel Itinerary Management </h1></center>
    <br> <br> <br>
    <div id = "container" style="width:100%;">
	<form action="Search" method="post">
    
        <table style="margin-left: 9%;">
            <h3 style="margin-left: 10%;">Fill out and view our deals:</h3>
            <div id="left" style="float:left;width:50%;">
	
                <tr>
                    <td>Email id </td> 
                    <td> <input id="textarea1" name="textarea1" required="required" type="email"/><br/></td>
                </tr>   
                     
                <tr><td>  Source </td>
                    <td>  <input type="text" name="textarea2" required="required" ><br/>
                         </td>
                         
                </tr>
                
                <tr>
                    <td> Destination </td>
                    
                    <td> <input type="text" name="textarea3" required="required"><br/> </td>
  
                </tr>
                
                <tr> 
        <td>   
            <input type="radio" name="RadioGroup1" value="1" required="required"/></td>
        <td>
            Round trip</td>
              </tr>
                
   
              <tr>      
                <td> 
                 <input type="radio" name="RadioGroup1" value="2" required="required"/></td>
                <td>one way </label></td>
              </tr>
              
              <tr>
           <td>Start Date: </td>
              
           <td><input type="text" id="datepicker" name="date1" required="required"/></td>
           
              </tr>
              
              
              <tr>  
           <td>Return Date:</td> 
           <td><input type="text" id="datepicker1" name="date2" required="required"/></td>
              </tr>
           
              <tr>
                  <td> No of passengers </td>
                  <td><input type="text" name="textarea4" required="required"></td>
    
            </tr>
            
            <tr>
                <td> Submit </td>
                <td><input type="submit" name="Submit" value="Submit"/></td>
            </tr>

            <tr>
                <td>Reset </td>
                <td> <input type="reset" name="Submit2" value="Reset" required="required"/></td>
            </tr>
        
    </div>
            
</form>
</table>
        
        <div id="right" style="float: right; width: 40%; margin-top: -18%;">
             <h3>Login Here:</h3>
            <table>
	<form  action="LoginControl" method="post">

            <tr><td>username</td><td><input type="text" name="name" required="required"/></td> </tr>
            <tr><td>password</td><td><input type="password" name="password" required="required"/></td></tr>
                 
            <tr><td><input type="reset"  value="Reset"></td><td><input type ="submit"  value="submit"></td></tr>
            
            <tr>
                <td>
                    
                   <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
             </label>
        </p> 
               
                </td>
                <td>
                
                Remember me on this computer
         
                </td>
        </tr>
        </form>
            </table>
</div>
	
</div>


  


</body>
</html>