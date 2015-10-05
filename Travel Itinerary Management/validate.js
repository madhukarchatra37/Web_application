function validate()
{
 var email = document.Home.textarea1.value;
  atpos = email.indexOf("@");
  dotpos = email.lastIndexOf(".");
 if (email == "" || atpos < 1 || ( dotpos - atpos < 2 )) 
 {
     alert("Please enter correct email ID");
     document.Home.textarea1.focus() ;
     return false;
 }

return (true);
}