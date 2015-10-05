<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flight Search</title>
  <style type="text/css">
      
      h1{
          font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:black;
text-align: center; text-decoration: underline ;margin-left: 64px;
      }
      
table{
    font-family: Calibri; color:black; font-size: 11pt; font-style: normal;
 background-color: whitesmoke; border-collapse: collapse; border: 3px solid navy;
 text-align: center;
}
table.inner{border: 0px}
</style>


</head>
<body background="travel-pic.jpg">
<a href="Home.jsp">
<input type="button" value="Logout" name="Logout" style="float:right"/></a>

    <h1>Welcome to Flight Search</h1>
    <br><br><br>
    
    <form id="form1" name="form1" method="post" action="Test">
        <%
		ResultSet rs = (ResultSet) request.getAttribute("flight");//returns result set of assignes requests of clerk
	    ResultSet rs1=null;
		int i=(Integer)request.getAttribute("Round");
		if(i==1)
		{
			rs1= (ResultSet) request.getAttribute("flight1");
		}
	%>
    
        
            <table align='center' cellpadding='10'>
    
					
						
                <tr><center><font size="4"><b>Available Flight Details</b></font></center></tr><br>
						<tr>
							
							<th>flight name</th>
							<th>source</th>
							<th>destination</th>
                                                        <th>price <th>
							<th> check </th>
						</tr>
					
    <% while (rs.next()) { %>
    
    <tr>
							
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
                                                        <td><%=rs.getInt(8)%></td>
							<td><input type="radio" name="radio" value="<%=rs.getInt(1)%>"/></td>
						</tr>
					
						<%   } %>
    
            </table>
                                                
      
                                                <br>
       <table align='center' cellpadding='10'>
    
					
						
                <tr><center><font size="4"><b>Return Flight Available</b></font></center></tr><br>
						<tr>
							
							<th>flight name</th>
							<th>source</th>
							<th>destination</th>
							<th> check </th>
						</tr>

 
    
     
<%    if(i==1){
       
     while (rs1.next()) { %>
    
    <tr>
							
                                                        
                                                        
                                                        <td><%=rs1.getString(2)%></td>
							<td><%=rs1.getString(3)%></td>
							<td><%=rs1.getString(4)%></td>
							<td><input type="radio" name="radio1" value="<%=rs1.getInt(1)%>"/></td>
						</tr>
						<%  } }
						%>
		
                                                
                       
            </table>
                
     
                                
                                                <br>
                                                <center>
                                                
                                                <input type="submit" name="Submit" value="Submit">&nbsp;&nbsp;
                                                
                                                <input type="reset" name="Submit2" value="Reset" >
                                                </center>
                                                
            
      
</form>
  
</body>
</html>