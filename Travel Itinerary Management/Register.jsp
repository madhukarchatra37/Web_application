<html>
<head>
<title>Registration</title>

    <style type="text/css">
  
      h1{font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:black;
text-align: center;  
      
margin-left:80px; margin-right: 56px;

      }
      h4{
          text-decoration: underline;
          
      }



table.curvedEdges { border:10px solid RoyalBlue;-webkit-border-radius:13px;-moz-border-radius:13px;-ms-border-radius:13px;-o-border-radius:13px;border-radius:13px; }
table.curvedEdges td, table.curvedEdges th { border-bottom:1px dotted black;padding:5px; }
                                     
 


table.inner{border: 0px}

</style>

<script type="text/javascript">

   function validatePass(p1, p2) {
   if (p1.value != p2.value) {
	        p2.setCustomValidity('Re-enter Confirm password , it didnt match');
	    } else {
	        p2.setCustomValidity('');
                
	    }
	}
  
  
        
</script>


</head>
<body background="travel-pic.jpg">
    <h1>Welcome To Registration Page</h1>
    <br><br>
   <form id="form1" name="form1" method="post" action="Register">
       <table align="center" cellpadding="10" class="curvedEdges">
           
           
           <tr><td>First name</td>
               <td> <input type="text" name="textfield1" required="required"></td>
           </tr>
           
  
           <tr><td>Last name</td>
               <td><input type="text" name="textfield2" required="required"></td>
               
           </tr>
           <tr><td>mobile number</td>
               <td> <input type="text" name="textfield3" required="required"></td>
           </tr>
           
           <tr><td>Email id</td>
               <td> <input type="email" name="textfield4" required='required'></td>
           </tr>
  
           <tr><td>Password</td>
               <td> <input type="password" name="textfield5" id='p1' required="required"></td>
           </tr>

           <tr><td>Confirm password</td>
               <td>
   <input type="password" name="textfield6" onfocus="validatePass(document.getElementById('p1'), this);" oninput="validatePass(document.getElementById('p1'), this);" required="required">

           </tr>
           
       
       <tr><td>Submit</td>
           <td><input type="Submit" name="Submit" value="Submit"></td>
       </tr>
       
       <tr><td>Reset</td>
               <td><input type="reset" name="Submit2" value="Reset"></td>
       </tr>

       </table>
   </form>
</body>
</html>