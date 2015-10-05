<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
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
    <h1>WELCOME TO HOTEL SEARCH</h1>
    <br>
    <form id="form1" name="form1" method="post" action="Hotel">

    <table align="center" cellpadding="10" class="curvedEdges">
        <tr><td>Hotel name</td>
        
            <td><input type="text" name="textarea1" required="required"/></td>
            </tr>
  
            <tr><td>City</td>
            <td> <input type="text" name="textarea2" required="required"></td>
 </tr>
 <tr><td>State</td>
     
     <td><input type="text" name="textarea3" required="required"> </td>
 </tr>
 
 <tr><td>No of people</td>
     <td>  <input type="text" name="textarea4" required="required"></td>
 </tr>
 
 <tr><td>No of rooms</td>
     <td>  <input type="text" name="textarea5" required="required"></td>
 </tr>
 
 <tr>  <td>Check in Date:</td> <td> <input type="text" id="datepicker" name="date1"  required="required"/></td>
 </tr>
 
 <tr><td>Check out Date: </td> <td><input type="text" id="datepicker1" name="date2" required="required"/></td>
     
 </tr>
 
    </table>
    <br>
    
    <center>
    <input type="submit" name="Submit" value="Search" />
    </center>
  </form>

</body>
</html>