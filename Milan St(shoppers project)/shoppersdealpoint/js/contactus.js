function check()
{
	 a=document.contactus.phone.value;
    b=a.length;
    
	len=document.regestration.email.value.length;     
	apos=document.regestration.email.value.lastIndexOf("@");
	dotpos=document.contactus.email.value.lastIndexOf(".");
	dpos=dotpos+1;
	aapos=document.contactus.email.value.indexOf("@");

		   
	if(document.contactus.name.value=="")
	   {
		alert("specify name please!");
		document.contactus.name.focus();
		document.contactus.name.select();
		return false;
	    }
	

      else if(document.contactus.email.value=="")
	   {
		alert("Specify email id please");
		document.contactus.email.focus();
		document.contactus.email.select();
		return false;
       }
	
   else if(apos<1||dotpos-apos<2||apos!=aapos||len==dpos)
	   {
			   alert("Invalid Email Address");
			   document.contactus.email.focus();
			   document.contactus.email.select();
			   return false;
	   }
   else if(document.contactus.company.value=="")
   {
	alert("Specify company name please");
	document.contactus.company.focus();
	document.contactus.company.select();
	return false;
   }

   else if(document.contactus.message.value=="")
   {
	alert("Specify message please");
	document.contactus.message.focus();
	document.contactus.message.select();
	return false;
    }

   else if(document.contactus.phone.value=="")
	   {
	   alert("Specify contact number please");
	   document.contactus.phone.focus();
	   document.contactus.phone.select();
	   return false;
	   }
   else if(b!=10)
	   {
	     alert("Invalid Phone Number! Please enter 10 digits");
	     document.contactus.phone.focus();
	     document.contactus.phone.select();
	     return false;
	   } 
   else if(a[0]=='0')
   {
     alert("Invalid Phone Number! Number cant start with zero");
     document.contactus.phone.focus();
     document.contactus.phone.select();
     return false;
   } 
  else if(true)
      {
		   for(i=1;i<b;i++)
		      {
		        if(a[i]!='1'&&a[i]!='2'&&a[i]!='3'&&a[i]!='4'&&a[i]!='5'&&a[i]!='6'&&a[i]!='7'&&a[i]!='8'&&a[i]!='9')
		        {
			        alert("Invalid Phone number! Please enter only digits"); 
			        document.contactus.phone.focus();
			        document.contactus.phone.select();
			        return false;
	        	}
		      }
		 }
		  	
	else
	{             //document.contactus.method="post";
			  	  document.contactus.action="servlet/ContactUs";
			  	  document.contactus.submit();
			  	  return true; 
   }

}
