<!doctype html>
<head>
<title>SignUp</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="css/style01.css" rel="stylesheet" type="text/css"/>
<link href="css/style01.css" rel="stylesheet" type="text/css"/>
<script src="scripts/jquery-1.11.3.min.js"></script>
<script src="scripts/bootstrap.min.js"></script>
<script type="text/javascript" src="js/boxOver.js"></script>
<style>
.pbox{width:auto; height:300px; text-align:center; border:1px solid black; display:block; margin-top:10px; margin-bottom:10px;}
.pbox .aimg{display:block; text-align:center; vertical-align:top; padding:5px;}
.pbox .aimg img{width:100%; height:190px;}
.title{font-size:16px; color:black; text-align:center; padding:5px; font-weight:500}
.tocart{
width:auto;
height:27px;
display:block;
background:url(images/other/addtocart.gif) no-repeat left;
padding-left:35px;
text-decoration:none;
color:#1c4a52; text-align:left; padding-top:5px; font-weight:bold; margin-top:5px; margin-bottom:5px; margin-left:10px;
}
</style>
</head>

     
  
  <body> 		

 <%@include file="header.jsp"%>  
 
<script type="text/javascript" >  
function validate() {  
var msg;  
if(document.myForm.s_password.value.length>5){  
msg="Strong";  
}  
else{  
msg="Weak";  
}  
document.getElementById('mylocation').innerText=msg;  
 }  
</script> 
 <br>

<div class="signup" >
<div class="col-lg-3"></div>
	<div class="col-lg-6">
            <form name="myForm" action="SignUp"  method="post" onsubmit="return checkForm(this);">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="panel-title"> REGISTRATION  </div>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                    <div class="input-group">  
                    <span class="input-group-addon"><i class="fa fa-envelope text-primary"></i></span>                      
                        <input type="text" class="form-control" name="s_name" placeholder="Please Enter User Name" required />
                        
                    </div>
                        </div>
                    <div class="form-group">
                    <div class="input-group">  
                        <span class="input-group-addon"><i class="fa fa-user text-primary"></i></span>                      
<input type="password" name="s_password" class="form-control" placeholder="Please Enter Password" title="Password must contain at least 6 characters and maximum of 15 characters, including UPPER-CASE, lower-case and number" type="password" onkeyup="validate()" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,15}" onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title : ''); if(this.checkValidity()) form.sr_password.pattern = this.value;" required />

                        
                    </div>
                        </div>
						<font color="red">Password Strength:<span id="mylocation"></span></font>
                    <div class="form-group">
                    <div class="input-group">  
                        <span class="input-group-addon"><i class="fa fa-user text-primary"></i></span>                      
                        <input type="password" name="sr_password" class="form-control" placeholder="Please Re-enter Your Password" title="Please enter the same Password as above" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,15}" onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title : '');" required />
                        
                    </div>
                    </div>

					<div class="form-group">
                    <div class="input-group">  
                        <span class="input-group-addon"><i class="fa fa-user text-primary"></i></span>                      
                        <input type="email" name="s_email" class="form-control" placeholder="Please Enter Your Email" required />
                        
                    </div>
                    </div>
                    
                      


             <div class="form-group">
                    <div class="input-group">  
                        <span class="input-group-addon"><i class="fa fa-phone text-primary"></i></span>                      
                        <input type="text" name="s_no" class="form-control" placeholder="Please Enter 10 digit Mobile No. (Format: +91(96)5043-4296)" required pattern="[\+]\d{2}[\(]\d{2}[\)]\d{4}[\-]\d{4}" onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title : '');" required />
                        
                    </div>
                     


                     </div>
<font color="red">Phone Number Format : <span id="numloc">+91(96)5043-4296</span></font>

                </div>



                <div class="panel-footer">
                    <input type="reset" class="btn btn-primary" value="Reset"/>
                    <input type="submit" class="btn btn-primary pull-right" value="Submit"/>
                </div>
            </div>
            </form>
            <p class="text-danger" style="font-size:14px">
			<b><a class=" navbar-link" href="login_01.jsp"  style="color:black;">Already Have an account! Sign In</a></b>
                                
            </div>
</div> 
</div>
</br>



 

 	 
 		 
     
		 <%@include file="footer.html"%> 
 	
 


</body> 
      
 
 
