<html>
<head>

<title>FLIGHT</title>
  <style type="text/css">
      
      h1{
          font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:black;
text-align: center; text-decoration: underline 
      }
      
table{
    font-family: Calibri; color:black; font-size: 11pt; font-style: normal;
 background-color: whitesmoke; border-collapse: collapse; border: 2px solid navy
}
table.inner{border: 0px}
</style>
</head>

<body background="travel-pic.jpg">
    
             <h1>WELCOME TO <span>FLIGHT SEARCH</span></h1>
	  
  
     
    
<form name="form1" method="post" action="Flight">

    
<table align="center" cellpadding = "10">
 
    
        
        <tr> <td>From</td>
            <td> <input type="text" name="textarea2" required="required"> </td>
 
        </tr>
        
        <tr> <td>Destination</td>
            
            <td> <input type="text" name="textarea3" required="required"></td>
            
        </tr>
  
  
  
        <tr>
            <td>   <input type="radio" name="RadioGroup1" value="1" required="required"> </td>
            <td>  Round trip</td>
        </tr>
        
        <tr><td>    <input type="radio" name="RadioGroup1" value="2" required="required"></td>
            <td>one way </td>
        </tr>
      
        <tr><td>Departure:</td> <td><input type="text" name="date1" required="required">(MM/DD/YYYY)</td>
        </tr>
        
        <tr><td>Return Date:</td> <td><input type="text" name="date2" required="required">(MM/DD/YYYY)</td>
        </tr>
        
        <tr><td>Number of passengers</td>
            <td> <input type="text" name="textarea4" required="required"></td>
        </tr>
  
  
    
        <tr><td> 
                <a href="Welcome.jsp">
                    <input type="button" value="Go-back" name="Logout"></a>
            </td> 
            
            <td> 
                
                <input type="submit" name="Submit" value="Search"> 
</td>
</tr>    
    </table> 

</form>
  
</html>