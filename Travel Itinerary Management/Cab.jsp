<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Cabs</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
  
  <style type="text/css">
      
      h1{
          font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:black;
text-align: center; text-decoration: underline ; margin-left: 65px;
      }
      
table.curvedEdges { border:10px solid RoyalBlue;-webkit-border-radius:13px;-moz-border-radius:13px;-ms-border-radius:13px;-o-border-radius:13px;border-radius:13px; }
table.curvedEdges td, table.curvedEdges th { border-bottom:1px dotted black;padding:5px; }
                                     
 


table.inner{border: 0px}

</style>
  
</head>

<body background="travel-pic.jpg">
   
<a href="Home.jsp">
<input type="button" value="Logout" name="Logout" style="float:right"/></a>
    <h1>WELCOME TO CAB SEARCH</h1> <br>
    <form id="form1" name="form1" method="post" action="Cab">
        <table align="center" cellpadding="10" class="curvedEdges">
            <tr><td>cab name</td>
                <td> <input type="text" name="text1"/></td>
                
            </tr>
            
            <tr><td>Cab type</td>
                <td>
  <input type="text" name="text2"><td>
            </tr>
            
            <tr><td>pick up location</td>
                <td><input type="text" name="textarea1"/></td>
            </tr>
            
            <tr><td>Destination</td>
                
                <td> <input type="text" name="textarea2"></td>
</tr>
<tr><td>Pick up time</td>
    <td> <input type="text" name="textarea3"></td>
</tr>

<tr><td>Pick up date:</td> <td><input type="text" id="datepicker" name="date"/></td>
  </tr>
  
        </table>  
 
        <br>
        <center>    <input type="submit" name="Submit" value="Search" />
    </center>
    

</form>

</body>
</html>