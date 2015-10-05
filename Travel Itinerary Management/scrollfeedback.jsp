<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="Util.DBconnection" %>

<%@page import="java.sql.*" %>

<%@include file="scrollHeader.jsp" %>
<html>
  
    <body>
         <h1>Our Previous Feedbacks</h1>

      <% 
          
          Connection con=DBconnection.getconnection();
          ResultSet rs=null;
          PreparedStatement p=con.prepareStatement("select a.first_name , fa.write_msg from feedback_account fa join account a using(user_id)");
          rs=p.executeQuery();
          
          while(rs.next()){
          
      %>
    
  
   
    <table align="center" cellpadding="10">
          <tr>
          
              <th> <h2> <%= rs.getString(1) %> </h2>  </th>
          
          </tr>
          
          <tr>
              
              <td> <font size="4"><%= rs.getString(2) %>  </font>     </td>  
          </tr>
          
          <br>          
          
      </table>
      <% } %>
    </body>
</html>
