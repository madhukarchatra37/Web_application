<%@ page language="java" contentType="text/html" import="Util.DBconnection,java.sql.ResultSet,java.sql.PreparedStatement,java.sql.Connection;"%>
<html>
 <head>
        <style type="text/css">
     h1{
          font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:black;
text-align: center; text-decoration: underline ; margin-left: 65px;
      }
      
table.curvedEdges { text-align: center; border:10px solid RoyalBlue;-webkit-border-radius:13px;-moz-border-radius:13px;-ms-border-radius:13px;-o-border-radius:13px;border-radius:13px; }
table.curvedEdges td, table.curvedEdges th { border-bottom:1px dotted black;padding:5px; }
                                     
table.inner{border: 0px}


table a1{float: right}

</style>
    </head>


    <body background="travel-pic.jpg">
    <a href="Home.jsp">
<input type="button" value="Logout" name="Logout" style="float:right"/></a>
        <a href="Cart.jsp"><input type="button" value="Go-Back" name="Go-Back" style="float:right"/></a>

    
        <h1>WELCOME TO PAYMENT PAGE:</h1>
        <%!  
public int i,j=0,y=1;  
%>  
        <% 
    
    	
    	Connection conn=null;
    	conn = DBconnection.getconnection();
    	int un=(Integer)session.getAttribute("gid");
		String sql= "select sum(total_amt) from cart_flight_details where user_id=? and booking_status=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1,un);
		ps.setInt(2,y);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next())
				{
			      i=rs.getInt(1);
				}
		System.out.print(i);
		String sql1= "select sum(total_amt) from cart_hotel_details where user_id=? and booking_status=?";
		PreparedStatement ps1 = conn.prepareStatement(sql1);
		ps1.setInt(1,un);
		ps1.setInt(2,y);
		ResultSet rs1 = ps1.executeQuery();
		
		while(rs1.next())
				{
			      j=rs1.getInt(1);
				}
		System.out.print(j);

		
		%>
                <table align="left" cellpadding = "10" class="curvedEdges" style="margin-top: 29px;">
            <tr>
                <th>Service</th>
               
                <th>Amount</th>
            </tr>
            
            <tr>
                <td>Flight</td>
                <td><%=i%></td>
            </tr>
            <tr>
                <td>
                    Hotel
                </td>
                <td>
                   <%=j%>
                </td>
            </tr>
            <tr>
                <td>
                    total amount
                </td>
                <td>
                   <%=i+j%>
                </td>
                
            </tr>
        </table>
        
        <form action="Payment" method="post">
            <table cellpadding = "10" class="curvedEdges" style="margin-top: 50px; margin-left: 578px;">
            <tr>
                <td>First Name</td>
        
                <td><input type="text" name="f1" required="required"> </td>
            </tr>
            <tr>
                <td>
                    Last Name:
                </td>
                <td><input type="text" name="l1" required="required"></td>
            </tr>
        
            <tr>
                <td>
                    Address Line1:
                </td>
                <td><input type="text" name="a1" required="required"></td>
            </tr>
            
            <tr>
                <td>
                    Address Line2:
                </td>
                <td><input type="text" name="a2"></td>
            </tr>
            
            
            <tr>
                <td>
                   City:
                </td>
                <td><input type="text" name="city"></td>
            </tr>

            <tr>
                <td>
                    State:
                </td>
                <td><select name="addr"><option>NC</option>
                    <option>AL</option>
                    <option>CO</option>
                    <option>IL</option>
                    <option>SD</option>
                    <option>WA</option>
                    <option>WY</option>
                    
                    </select></td>
            </tr>
            
            <tr>
                <td>
                    Country:
                </td>
                <td><select name="cou"><option>USA</option>
                    <option>MEX</option>
                    <option>AUS</option>
                    <option>ZAF</option>
                    <option>GBR</option>
                    
                   </select></td>
            </tr>
            
            <tr>
                <td>
                   Zip Code:
                </td>
                <td><input type="text" name="z1"></td>
            </tr>

                         
            <tr>
                <td>
                    Mobile Number:
                </td>
                <td><input type="text" name="m1"></td>
            </tr>

                        
            <tr>
                <td>
                    Email-ID:
                </td>
                <td><input type="text" name="e1" required="required"></td>
            </tr>

        </table> 
            
     
        
        
       <table align="right" cellpadding = "10" class="curvedEdges" style="margin-top: -375px;">
            <tr>
            
                <td>Card Type</td>
                
                <td>
                    <select name="ct" required="required"><option>Master</option>
                    <option>Visa</option>
                    <option>Reward</option>
                    
                   </select>
                </td>
      
            </tr>
            
            <tr>
                <td>
                    Card Number:
                </td>
                <td><input type="text" name="cn" placeholder="16 digit" required="required"></td>
            </tr>
           
             <tr>
                <td>
                   Expiry Date:
                </td>
                <td><input type="text" name="dt" placeholder="(MM/YY)" required="required"></td>
            </tr>
            
            
             <tr>
                <td>
                   CVV:
                </td>
                <td><input type="text" name="cv" maxlength="3" placeholder="3 digit code" required="required"></td>
          
               
           
        </table>
            
            <center><input type="submit" name="s1" value="submit" style="margin-top: 26px; margin-right: 31px;"></center>
     </form>
                
        </body>

</html>