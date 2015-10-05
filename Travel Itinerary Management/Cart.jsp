<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Util.DBconnection,java.sql.ResultSet,java.sql.PreparedStatement;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW CART</title>

<style type="text/css">
      
      h1{
          font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:black;
text-align: center; text-decoration: underline ;margin-left: 65px;
      }
      

      
table.curvedEdges { background-color: skyblue;  border:10px solid RoyalBlue;-webkit-border-radius:13px;-moz-border-radius:13px;-ms-border-radius:13px;-o-border-radius:13px;border-radius:13px; }
table.curvedEdges td, table.curvedEdges th { border-bottom:1px dotted black;padding:5px; }
                             </style>

</head>
<body background="travel-pic.jpg">
<a href="Home.jsp">
<input type="button" value="Logout" name="Logout" style="float:right"/></a>

    <h1>Welcome to Your Cart</h1> <br><br>
<table  align="center" cellpadding="10" class="curvedEdges">	

    <% 
    try{
    	Connection conn;
    	conn = DBconnection.getconnection();
    	int un=(Integer)session.getAttribute("gid");
		String sql= "select * from cart_flight_details where user_id="+un;
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		%>
	
                <tr><center><font size="4"><b>Flight account</b></font></center></tr><br>
	
		<tr>
			<th>Flight Name</th>
			<th>Source</th>
			<th>Destination</th>
			
		</tr>
	
<%

		while (rs.next()) { if(rs.getInt(12)==1){ %>

<tr>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			
		</tr>
		<%  } }
            
		
    }
    catch(Exception ex)
    {
    	ex.printStackTrace();
    }%>
    </table>

    <br>
<table align="center" cellpadding="10" class="curvedEdges">	

    <% 
    try{
    	Connection conn;
    	conn = DBconnection.getconnection();
    	int un=(Integer)session.getAttribute("gid");
		String sql= "select * from cart_hotel_details where user_id="+un;
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		%>
	
		 <tr><center><font size="4"><b>Hotel Account</b></font></center></tr><br>
	
		<tr>
			<th>Hotel Name</th>
			<th>Number of Rooms</th>
			
		</tr>
	
<%

		while (rs.next()) { if(rs.getInt(15)==1){ %>

<tr>
			<td><%= rs.getString(4) %></td>
			<td><%= rs.getInt(12) %></td>
			
			
		</tr>
		<%  } }
            
		
    }
    catch(Exception ex)
    {
    	ex.printStackTrace();
    }%>
    </table>

    <br>
    
    <table  align="center" cellpadding="10" class="curvedEdges">	

    <% 
    try{
    	Connection conn;
    	conn = DBconnection.getconnection();
    	int un=(Integer)session.getAttribute("gid");
		String sql= "select * from cart_cab_details where user_id="+un;
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		%>
                
	 <tr><center><font size="4"><b>Cab account</b></font></center></tr><br>
	
		<tr>
			<th>Cab Name</th>
			<th>Cab Type</th>
			<th>Deal Price</th>
			
		</tr>
	
<%

		while (rs.next()) { if(rs.getInt(10)==1){%>

<tr>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getFloat(6)%></td>
			
		</tr>
		<%  } }
            
		
    }
    catch(Exception ex)
    {
    	ex.printStackTrace();
    }%>
    </table>
    <br><br><br><br>
    <center>
        <font size="5"><a href="Welcome.jsp" style="color: red "><b>Add more items</b></a></font>
|
<font size="5"><a href="delete.jsp" style="color: red "><b>Delete</b></a></font>
|
<font size="5"><a href="Payment.jsp" style="color: red "><b>Proceed for payment</b></a></font>
    </center>
    </body>
</html>