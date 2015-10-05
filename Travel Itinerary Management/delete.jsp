<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cancel Page</title>
<style>
    
      h1{
          font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:black;
text-align: center; text-decoration: underline ; margin-left: 65px;
      }
      
table.curvedEdges { text-align: center; border:10px solid RoyalBlue;-webkit-border-radius:13px;-moz-border-radius:13px;-ms-border-radius:13px;-o-border-radius:13px;border-radius:13px; }
table.curvedEdges td, table.curvedEdges th { border-bottom:1px dotted black;padding:5px; }
                                     
 


table.inner{border: 0px}

</style>
</head>
<body background="travel-pic.jpg">
<a href="Home.jsp">
<input type="button" value="Logout" name="Logout" style="float:right"/></a>
    <h1>WANT TO CANCEL BOOKINGS? You can do it here!</h1><br><br>
    <br>
    <form>
        
        <table align="center" class="curvedEdges">
        
            <tr><center><b> Select one below: </b></center></tr>
        <br>
            <tr>
                <td><b><a href="Flightdelete.jsp" style="color: crimson; text-decoration: none">
                    
                            FLIGHT Cancellation</b><br>
                    
                            <img src="combine_images2.jpg" width="150" height="80" alt>
                            </a>
                            </td>

                            &nbsp;&nbsp;
            
            <td><b><a href="Cabdelete.jsp" style="color: crimson; text-decoration: none">
                            
                            CAB Cancellation</b><br>
                            <img src="combine_images.jpg" width="150" height="80" alt>
            </a>                
            </td>

                            &nbsp;&nbsp;
<td><b><a href="Hoteldelete.jsp" style="color: crimson; text-decoration: none">
                
                HOTEL Cancellation</b><br>
                <img src="combine_images1.jpg" width="150" height="80" alt>
</a>                
</td>
        
                &nbsp;&nbsp;
<td><b><a href="Cart.jsp" style="color: crimson; text-decoration: none">
                
                GOTO Cart</b><br>
                <img src="cart.jpg" width="150" height="80" alt>
                </a>
</td>
                        
                
</tr>
        </table>
</form>
</body>
	
</body>
</html>