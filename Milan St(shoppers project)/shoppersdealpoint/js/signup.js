
function isValidUserName()
{   
    var name=document.regestration.s_name.value;
  
    var a=name.length;
    var i=0;
  
  	System.out.println(a);
    for(i=0;i<a;i++)
		{
		alert("hi");
		 if(name[i]<'65'||(name[i]>'90'&&name[i]<'97')||name[i]>'122')
			 {
			   alert("Invalid User Name: Plz enter only characters");
			   document.regestration.s_name.focus();
			   document.regestration.s_name.select();
			   return false;
			 }
		}
}

function check()
{   a=document.regestration.s_no.value;
    b=a.length;
    
	len=document.regestration.s_email.value.length;     
	apos=document.regestration.s_email.value.lastIndexOf("@");
	dotpos=document.regestration.s_email.value.lastIndexOf(".");
	dpos=dotpos+1;
	aapos=document.regestration.s_email.value.indexOf("@");

		   
	if(document.regestration.s_name.value=="")
	   {
		alert("specify username");
		document.regestration.s_name.focus();
		document.regestration.s_name.select();
		return false;
	    }

   else if(document.regestration.s_password.value=="")
   {
	alert("specify password");
	document.regestration.s_password.focus();
	document.regestration.s_password.select();
	return false;
    }

   else if(document.regestration.s_password.value!=document.regestration.sr_password.value)
   {
	alert("incorrect confirm password");
	document.regestration.sr_password.focus();
	document.regestration.sr_password.select();
	return false;
   }

   else if(document.regestration.s_email.value=="")
	   {
		alert("specify Email Address");
		document.regestration.s_email.focus();
		document.regestration.s_email.select();
		return false;
       }
	
   else if(apos<1||dotpos-apos<2||apos!=aapos||len==dpos)
	   {
			   alert("Invalid Email Address");
			   document.regestration.s_email.focus();
			   document.regestration.s_email.select();
			   return false;
	   }
   else if(document.regestration.s_city.value=="")
   {
	alert("specify city name");
	document.regestration.s_city.focus();
	document.regestration.s_city.select();
	return false;
   }

   else if(document.regestration.s_country.value=="")
   {
	alert("specify country name");
	document.regestration.s_country.focus();
	document.regestration.s_country.select();
	return false;
    }

   else if(document.regestration.s_no.value=="")
	   {
	   alert("specify Mobile Number");
	   document.regestration.s_no.focus();
	   document.regestration.s_no.select();
	   return false;
	   }
   else if(b!=10)
	   {
	     alert("Invalid Phone Number! Plz enter 10 digits");
	     document.regestration.s_no.focus();
	     document.regestration.s_no.select();
	     return false;
	   } 
   else if(a[0]=='0')
   {
     alert("Invalid Phone Number! Number cant start with zero");
     document.regestration.s_no.focus();
     document.regestration.s_no.select();
     return false;
   } 
  else if(true)
      {
		   for(i=1;i<b;i++)
		      {
		        if(a[i]!='1'&&a[i]!='2'&&a[i]!='3'&&a[i]!='4'&&a[i]!='5'&&a[i]!='6'&&a[i]!='7'&&a[i]!='8'&&a[i]!='9')
		        {
			        alert("Invalid Phone number! Plz enter only digits"); 
			        document.regestration.s_no.focus();
			        document.regestration.s_no.select();
			        return false;
	        	}
		      }
		 }
		  	
	else
	{             //document.regestration.method="post";
			  	  document.regestration.action="servlet/SignUp";
			  	  document.regestration.submit();
			  	  return true; 
   }
}
