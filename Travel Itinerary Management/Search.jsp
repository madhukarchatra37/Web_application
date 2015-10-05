<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
   <script>
  $(function() {
    $( "#datepicker1" ).datepicker();
  });
  </script>
</head>
<body background="C:\Users\Rak_shit\Desktop\travel-pic.jpg">
<a href="Home.jsp">
<input type="button" value="Logout" name="Logout" style="float:right"/></a>
<form id="form1" name="form1" method="post" action="Search">
  <label>Email id
  <input type="text" name="textarea1"/><br/>
  </label>
  <label>Source
  <input type="text" name="textarea2"><br/>
  </label>
  <label>Destination
  <input type="text" name="textarea3"><br/>
  </label>
  
  
  <p>
    <label>
      <input type="radio" name="RadioGroup1" value="1" />
      Round trip</label>
    <br />
    <label>
      <input type="radio" name="RadioGroup1" value="2" />one way </label>
      
 <p>Start Date: <input type="text" id="datepicker" name="date1" /></p>
<p>Return Date: <input type="text" id="datepicker1" name="date2"/></p>
    <label>no of passengers
  <input type="text" name="textarea4"><br/>
  </label>
    <br />
    <label>Submit
    <input type="submit" name="Submit" value="Submit" />
    </label><br/>
    <label>Reset
    <input type="reset" name="Submit2" value="Reset" />
    </label><br/>
  
</form>
</body>
</html>