<html>
    <head>
        <title>FeedBack Page</title>
 <style type="text/css">
        h1{font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:black;
text-align: center; text-decoration: underline }
body{
    
    background-image: url(travel-pic.jpg);
    
}

h1{
          font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:black;
text-align: center; text-decoration: underline ; margin-left: 65px;
      }
      
table.curvedEdges { text-align: center; border:10px solid RoyalBlue;-webkit-border-radius:13px;-moz-border-radius:13px;-ms-border-radius:13px;-o-border-radius:13px;border-radius:13px; }
table.curvedEdges td, table.curvedEdges th { border-bottom:1px dotted black;padding:5px; }
                                     
table.inner{border: 0px}


input.mytxt{
    
    width:300px;
    height:200px;
} 
</style>

<script>
    
    var bindEvents = function(event){
        if( document.getElementById('styled').value.trim() === '' ){
            event.preventDefault();
            alert("Write something please");
        }
    };

</script>

    </head>
    <body>
        <a href="Home.jsp">
<input type="button" value="Logout" name="Logout" style="float:right"/></a>
	<h1>Payment Successful</h1>
	
        <form action="Feedback" method="post">
            <table style="margin-left: 45px; margin-top: 35px;" class="curvedEdges">        
            
            <tr>
                <td><h2>   Please Write Your FeedBack Here: </h2></td>
            </tr>
            
         <tr>
            
            <td> 
            <textarea
                name="txa" cols="40" 
    rows="20" id="styled" 
    onfocus="this.value=''; setbg('#e5fff3');" 
    oninvalid="invalidComment(this);" 
    onblur="setbg('white')" 
    placeholder="Max characters 1000"
    maxlength="1000" 
     required     
></textarea>
            </td>
            
        
        </tr>
        
        </table>
            
            <center style="margin-left: -533px; margin-top: -59px;">      <br><input type="submit" value="submit"> </center>
            
        </form>   
        
        <table style="float: right; margin-top: -336px; margin-right: 45px;">
           
            <tr><td><h1>
            Our Previous FeedBacks:
                    </h1></td></tr>
         
            <tr>
                <td>
                   <textarea rows="10" cols="50" readonly="readonly">
            Wonderful experience:
               Reviewed September 5th, 2012
                 -Our trip has been successful only because we chose this application. It has Been amazing 
                  experience we had. 
        
             What a Journey!!:
               Reviewed October 12th, 2013
                 -Amazing journey. These people helped me take full advantage of my trip and the places I visited were mind blowing.
                  
          </textarea>
                </td>
        </tr>
        </table>
    </body>
</html>