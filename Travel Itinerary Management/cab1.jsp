<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cabs Search</title>
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

    <h1>Welcome to Cab Search</h1><br>
    
    <form id="form1" name="form1" method="post" action="Test1">
<%
		ResultSet rs = (ResultSet) request.getAttribute("cab");//returns result set of assignes requests of clerk
	%>
    <table  align="center" cellpadding="10" class="curvedEdges">

					
	     <tr><center><font size="4"><b>Cab Account</b></font></center></tr><br>
	
					
			                  <tr>
							
							<th>cab name</th>
							<th>cab type</th>
                                                        <th> price per mile </th>
							<th>check </th>
							
						</tr>
					
    <%{while (rs.next()) { %>
    
    <tr>
							
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
                                                        <td><%=rs.getInt(4)%></td>
							<td><input type="radio" name="radio1" value="<%=rs.getInt(1)%>"/></td>
							
							
						</tr>
						<%}
							}
						%>
					</table>
                                        <br>
					
                                        <center>    <input type="submit" name="Submit" value="Submit" />
    
    &nbsp;
    <input type="reset" name="Submit2" value="Reset" />
    
                                        </center>
</form>
   
</body>
</html>