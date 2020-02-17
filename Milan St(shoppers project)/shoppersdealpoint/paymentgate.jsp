<!doctype html>
<head>
<title>Home</title>
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
 				<%@include file="header.jsp" %>
 
				<div >
				<div class="center_title_bar_new" style="margin-left:360px;">Fill Card Details:</div>

				<div class="prod_box_big_new" style="margin-left: 350px;">
					<div class="top_prod_box_big-new"></div>
					<div class="center_prod_box_big_new">
						<div class="contact_form_new">
							<form action="Payment" method="get" name="contactus"
								onsubmit="return check()">
								<div class="form_row_new">
									<label class="contact_new" style="width: auto"><strong>Card
											Holder Name :</strong>
									</label> <input type="text" class="contact_input_new" name="card_holder_name"
										onchange="return check()" />
								</div>
								<div class="form_row_new">
									<label class="contact_new" style="width: auto;"><strong>Card
											Number :</strong>
									</label> <input type="text" class="contact_input_new" name="card_number"
										onchange="return check()" />
								</div>
								<div class="form_row_new">
									<label class="contact_new" style="width: auto;"><strong>CVV
											Code(Secure) :</strong>
									</label> <input type="text" class="contact_input_new" name="cvv_code"
										onchange="return check()" />
								</div>
								<div>
									<br />
								</div>


								<div class="form_row_new">
									<label class="contact_new" style="width: auto;"><strong
										style="color: #000000;">Expiry Date(Valid Through) :</strong>
									</label>

									<div class="form_row_new">
										<fieldset class="contact_new">
											<label style="color: #000000;" class="contact_new">Month</label> <select
												id="month_start" name="month_start" style="color: #000000;">
												<option>January</option>
												<option>February</option>
												<option>March</option>
												<option>April</option>
												<option>May</option>
												<option>June</option>
												<option>July</option>
												<option>August</option>
												<option>September</option>
												<option>October</option>
												<option>November</option>
												<option>December</option>
											</select> - <label  style="color: #000000;" >Year</label>
											<select class="contact_new" name="year_start"
												style="color: #000000;">
												<option>2009</option>
												<option>2010</option>
												<option>2011</option>
												<option>2012</option>
												<option>2013</option>
												<option>2014</option>
												<option>2015</option>
												<option>2016</option>
												<option>2017</option>
												<option>2018</option>
												<option>2019</option>
												<option>2020</option>
												<option>2021</option>
												<option>2022</option>
												<option>2023</option>
												<option>2024</option>
												<option>2025</option>
												<option>2026</option>
												<option>2027</option>
												<option>2028</option>
											</select> <span class="inst">(Month-Year)</span>
										</fieldset>
									</div>
								</div>


								<div class="form_row">
									<input type="submit" value="send details"  />
								</div>
							</form>
						</div>
					</div>

				</div>
				</div>
 			<div style="margin-left:160px;">
			<%@include file="footer.html" %>
 </body>
</html>
