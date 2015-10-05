<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Flight deals</title>

<style type="text/css">
  
      h1{font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:black;
text-align: center;  
      
margin-left:80px; margin-right: 56px;

      }
      h4{
          text-decoration: underline;
          
      }

table{
    font-family: Calibri; color:black; font-size: 11pt; font-style: normal;
 background-color: skyblue ; text-align: center; border-collapse: collapse; border: 3px solid navy
}
table.inner{border: 0px}


  </style>

</head>
<body background="travel-pic.jpg">
<a href="Home.jsp">
<input type="button" value="Logout" name="Logout" style="float:right"/></a>
    <br>    <h4><a href="Register.jsp" style="color: #000 ; float:right">You LIKE these Deals? Click here to Register and Proceed</a></h4> 

    <%

ResultSet rs1 = (ResultSet) request.getAttribute("flight");//returns result set of assignes requests of clerk
ResultSet rs2 = (ResultSet) request.getAttribute("hotel");
ResultSet rs3 = (ResultSet) request.getAttribute("cab");
 ResultSet rs4=null;
int i=(Integer)request.getAttribute("Round");
		if(i==1)
		{
			 rs4= (ResultSet) request.getAttribute("flight1");
		}
%>
&nbsp;&nbsp;&nbsp;<table align="center" style="background-color: transparent ; margin-left: 544px; margin-top: -39px" cellpadding="1" >
    <tr><td><h1>OUR CURRENT DEALS</h1></td></tr>
</table>
<br>
<table align="center"  cellpadding="8">

    <tr> <center><b>FLIGHT DEALS</b></center></tr>
    
<br>
<tr>
        <th>Flight Number</th>
        <th>AirLines</th>
        <th>From </th>
        <th>To</th>
        <th>Deal Price</th>
</tr>
    
    <%while (rs1.next()) { %>
    
    
    
    <tr>
     
<td><%=rs1.getInt(1)%></td>
<td><%=rs1.getString(2)%></td>
<td><%=rs1.getString(3)%></td>
<td><%=rs1.getString(4)%></td>
<td><%=rs1.getInt(8)%>$</td>
				
  </tr>
						<%   }
                            
						%>
					</table>
					<br/>
					<br/>
<table align="center" cellpadding="9">


    <tr> <center><b>RETURN FLIGHT DEALS</b></center></tr>
    
<br>
<tr>
        <th>Flight Number</th>
        <th>AirLines</th>
        <th>From </th>
        <th>To</th>
        <th>Deal Price</th>
</tr>


 <%  if(i==1){
		while (rs4.next()) { %>
    
    <tr>
							<td><%=rs4.getInt(1)%></td>
							<td><%=rs4.getString(2)%></td>
							<td><%=rs4.getString(3)%></td>
							<td><%=rs4.getString(4)%></td>
                                                        <td><%=rs4.getInt(8)%>$</td>
							
						</tr>
						<%  } }
						%>
					
            </table>
	
        <br>
       <table  align="center" cellpadding="9" style="margin-left: 474px;">
    
  <tr><center><b>HOTEL DEALS</b></center></tr>
       <br>
<tr>
        <th>Hotel Number</th>
        <th>Hotel Name</th>
        <th>Address</th>
        <th>City</th>
        <th>State</th>
        <th>Deal Price</th>
    </tr>
       
    <%while (rs2.next()) { %>
    
    <tr>
 <td><%=rs2.getInt(1)%></td>
<td><%=rs2.getString(2)%></td>
<td><%=rs2.getString(3)%></td>
<td><%=rs2.getString(4)%></td>
<td><%=rs2.getString(5)%></td>
<td><%=rs2.getString(11)%>$</td>							
  </tr>
						<%   }
                            
						%>
</table> <br/>

<table  align="center" cellpadding="7">
    
  <tr><center><b>CAB DEALS</b></center></tr>
<br>
<tr>
        <th>Cab Number</th>
        <th>Cab provider</th>
        <th>Comfort</th>
        <th>Deal Price</th>
             
</tr>

    <%while (rs3.next()) { %>
   
    <tr>
<td><%=rs3.getInt(1)%></td>
<td><%=rs3.getString(2)%></td>
<td><%=rs3.getString(3)%></td>
<td><%=rs3.getInt(4)%>$</td>
						
</tr>
						<%   }
                            
						%>
	</table>

        <iframe style="margin-top: -627px; margin-right: 57px; " src="scrollfeedback.jsp" width="250" height="800" align="right"></iframe>
        </body>
</html>