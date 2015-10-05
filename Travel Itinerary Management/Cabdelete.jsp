<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Util.DBconnection,java.sql.ResultSet,java.sql.PreparedStatement;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cab Cancellation</title>
<style type="text/css">
    
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
<form id="form1" name="form1" method="post" action="Cabdel">
    <h1>CANCEL YOUR CAB BOOKING</h1>
     <br><br><table  align="center" cellpadding="10" class="curvedEdges">	
<%
try{
    	Connection conn;
    	conn = DBconnection.getconnection();
    	int un=(Integer)session.getAttribute("gid");
		String sql= "select * from cart_cab_details where user_id="+un;
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		%>
	
               			
	     <tr><center><font size="4"><b>Cab Account</b></font></center></tr><br>
    <br>
		<tr>
			<th>Cab Name</th>
			<th>Cab Type</th>
			<th>Deal Price</th>
			<th>check one</th>
		</tr>
	
<%

		while (rs.next()) { if(rs.getInt(10)==1){ %>

<tr>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getFloat(6)%></td>
			<td><input type="radio" name="radio" value="<%=rs.getInt(1)%>"/></td>
		</tr>
		<%  } }
            
	
    }
    catch(Exception ex)
    {
    	ex.printStackTrace();
    }%>
    </table>
    <br>
    <center>
    <input type="submit" name="Submit" value="Submit" /> &nbsp;&nbsp;


	<input type="reset" name="Submit2" value="Reset" />
    </center>
	</form>

</body>
</html>