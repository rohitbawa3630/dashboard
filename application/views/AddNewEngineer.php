
 <style>
 .eng_option .form-group {
    margin-bottom: 10px;
}
	.checkbox_container {
  display: block;
  position: relative;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}


.checkbox_container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}


.checkmark {
  position: absolute;
    top: 0;
   right: -35px;
    height: 20px;
    width: 20px;
    background-color: #ecedf3;
    border-radius: 4px;
}



.checkbox_container input:checked ~ .checkmark {
  background-color: #2196F3;
}


.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}


.checkbox_container input:checked ~ .checkmark:after {
  display: block;
}


.checkbox_container .checkmark:after {
 left: 7px;
    top: 2px;
    width: 7px;
    height: 14px;
    border: solid white;
    border-width: 0 3px 3px 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
}
.select-opt select {
    width: 100%;
    padding: 4px;
    border-radius: 4px;
}
</style>	

<?php error_reporting(0);
if($_SESSION['status']['iswholseller'])
{
	$type="Users";
	$ishidden='none';
}
else
{
	$type="Engineers"; 
	$ishidden='block';
}


 ?>
 
<div class="container">
	 
	    <div class="row">
		
	   <div class="col-md-6 col-xs-12">
      
	  <div class="card card-custom gutter-b example example-compact" style="min-height: 630px;">
<div class="card-header">
         <h3 class="card-title">General Details</h3>
	
		 </div>
		 <div class="card-body">
	<div class="form-group dropzone" style="border: none;">
 <div class="jumbotron-sec marg ">

  <div class="form-horizontal">
    <div class="form-group">
      
	  
	  
  <form method="post" action="<?php echo site_url('engineer');?>">
   <div class="form-horizontal">
 <!----------------busniss-name------------------------->   
   <div class="form-group">
      <label >Name</label>
	  
	 
      <input required type="text" class="form-control form-control-solid" id="email" placeholder="Enter Name" name="Name">
    
	</div>
   <!----------------address------------------------->   
   <div class="form-group">
 <label >User Name</label>

	 
      <input required type="text" class="form-control form-control-solid" id="email" placeholder="Enter Your User Name" name="uname">
   
	</div>
   <!----------------post code-------------------------> 
   <div class="form-group">
     <label >Email Address</label>

	 
      <input required type="email" class="form-control form-control-solid" id="user_email" placeholder="Email Address" name="email"><span id="user_exsist_error" style="color:red;display:none">Email Already in use</span>
   
		  </div>
	
   <!----------------Email------------------------->
   <div class="form-group">
    <label>Password</label>
	
	  
      <input required type="Password" class="form-control form-control-solid" id="email" placeholder="Password" name="Password">
   
	</div>
	<!--------------------------------HiddenWholeSeller_Value------------------------------>
	 
	
	
	<input  type="hidden" class="form-control form-control-solid"  name="HiddenWholeSeller_Value" value="<?php echo $iswhoResult[0]->permission_wholeseller;?>">

	</div>
  
</div>
</div>
</div>
</div>
 </div>
</div>
</div>

<div style="display:<?php echo $ishidden;?>" class="col-md-6 border eng_option ">
     <div class="card card-custom gutter-b example example-compact">
	 <div class="card-header">
         <h3 class="card-title">Permissions</h3>
	
		 </div>
 <div class="card-body">
		  <div class="form-group">
		
		 <div class="jumbotron-sec marg dropzone pt-0" style="border: none;">
 <div class="form-horizontal">
 
 <div class="form-group">
	<div style="align-items: center;display: flex;">
  <label class="form-check-label ck col-md-6 pl-0 checkbox_container">Supervisor
  <input  style="width: 15%;height: 18px;" class="form-check-input checkbox form-control form-control-solid checks col-md-6 form-control" type="checkbox"  id="p1" value="Supervisor" name="Supervisor">
   <span class="checkmark"></span></label>
</div>
</div>
 <div class="form-group">
	<div style="align-items: center;display: flex;">
  <label class="form-check-label ck col-md-6 pl-0 checkbox_container">Operative
  <input  style="width: 15%;height: 18px;" class="form-check-input checkbox form-control form-control-solid checks col-md-6 form-control" type="checkbox" id="p2"  value="Operative" name="Operative">
   <span class="checkmark"></span></label>
</div>
</div>
 <div class="form-group">
	<div style="align-items: center;display: flex;">
  <label class="form-check-label ck col-md-6 pl-0 checkbox_container">Categories
  <input style="width: 15%;height: 18px;" class="form-check-input checkbox form-control form-control-solid checks col-md-6 form-control" type="checkbox"  id="p3" value="Categories" name="Categories">
   <span class="checkmark"></span></label>
</div>
</div>
 <div class="form-group">
	<div style="align-items: center;display: flex;">
  <label class="form-check-label ck col-md-6 pl-0 checkbox_container">Orders
  <input style="width: 15%;height: 18px;" class="form-check-input checkbox form-control form-control-solid checks col-md-6 form-control" type="checkbox"  id="p4" value="Orders" name="Orders">
   <span class="checkmark"></span></label>
</div>
</div>
 <div class="form-group">
	<div style="align-items: center;display: flex;">
  <label class="form-check-label ck col-md-6 pl-0 checkbox_container">Project Details
  <input style="width: 15%;height: 18px;" class="form-check-input checkbox form-control form-control-solid checks col-md-6 form-control" type="checkbox"  id="p5" value="Project details" name="Project_details">
   <span class="checkmark"></span></label>
</div>
</div>
<!--<div class="form-check form-check-inline dis">
  <label class="form-check-label ck" for="inlineCheckbox1">Quotes</label>
  <input  class="form-check-input" type="checkbox"  id="p6" value="Quotes" name="Quotes">
</div>-->
 <div class="form-group">
	<div style="align-items: center;display: flex;">
  <label class="form-check-label ck col-md-6 pl-0 checkbox_container">Catalogues
  <input style="width: 15%;height: 18px;" class="form-check-input checkbox form-control form-control-solid checks col-md-6 form-control" type="checkbox" id="p7"  value="Catalogues" name="Catalogues">
   <span class="checkmark"></span></label>
</div>
</div>

 <div class="form-group">
	<div style="align-items: center;display: flex;">
  <label class="form-check-label ck col-md-6 pl-0 checkbox_container">All Orders
  <input style="width: 15%;height: 18px;" class="form-check-input checkbox form-control form-control-solid checks col-md-6 form-control" type="checkbox"  id="p8" value="All_orders" name="All_orders">
   <span class="checkmark"></span></label>
</div>
</div>
 <div class="form-group">
	<div style="align-items: center;display: flex;">
  <label class="form-check-label ck col-md-6 pl-0 checkbox_container">Orders To Approve
  <input style="width: 15%;height: 18px;" class="form-check-input checkbox form-control form-control-solid checks col-md-6 form-control" type="checkbox"  id="p9" value="Orders_to_Approve" name="Orders_to_Approve">
  <span class="checkmark"></span></label>
</div>
</div>
 <div class="form-group">
	<div style="align-items: center;display: flex;">
  <label class="form-check-label ck col-md-6 pl-0 checkbox_container">See Costs
  <input style="width: 15%;height: 18px;" class="form-check-input checkbox form-control form-control-solid checks col-md-6 form-control" type="checkbox" id="p10" value="See_costs" name="See_costs">
  <span class="checkmark"></span></label>
</div>
</div>
 <div class="form-group">
	<div style="align-items: center;display: flex;">
  <label class="form-check-label ck col-md-6 pl-0 checkbox_container">Add Products
  <input style="width: 15%;height: 18px;" class="form-check-input checkbox form-control form-control-solid checks col-md-6 form-control" type="checkbox" id="p11" value="addproduct" name="addproduct">
  <span class="checkmark"></span></label>
</div>
</div>
 <div class="form-group">
	<div style="align-items: center;display: flex;">
  <label class="form-check-label ck col-md-6 pl-0 checkbox_container">Quotes
  <input style="width: 15%;height: 18px;" class="form-check-input checkbox form-control form-control-solid checks col-md-6 form-control" type="checkbox" id="p12" value="quotes" name="quotes">
  <span class="checkmark"></span></label>
</div>
</div>
 
		   
	<div class="form-group singleorderlimit" style="display:none">

	     <label>Limit of Single order </label>
		
	  
        <input class="form-control" id="singleorderlimitperday" type="number" name="single_order_per_day" placeholder="0.00" min="1" max="100000" >
		 
		  
		   </div>
   <div class="form-group orderlimit" style="display:none">

	     <label>Limit of order per day</label>
		
	    
        <input class="form-control" id="orderlimitperday" type="number" name="order_per_day" placeholder="0.00" min="1" max="100000" >
		
		  
		   </div>	

 <div class="form-group ">

		
	    <div class="col-md-6">
<input type="submit" name="add_enginner" class="btn btn-info " value="SUBMIT">

		  </div>
		  
		   </div>		   
		   
</div>
</div>
</div>
</div>
</div>
</div>
</div>


<!-------email-section--->
<!-- <div id="email_sec">

   <div class="row">
     <div style="display:<?php echo $ishidden;?>" class="col-md-12 per">
      <h2>Permissions</h2>
	  <hr>
</div> -->











		 




 <!----------------busniss-name------------------------->   

 <!------------------ 
		      <div class="form-group orderlimit " style="display:none">

	     <label class="control-label col-md-6" for="Project_Amount">Limit of simple order</label>
		
	    <div class="col-md-6 ">
       	 <input class="form-control" type="number" name="simple_order" placeholder="0.00" min="1" max="100000">
		  </div>
		  
		   </div>-->
 



</form>
		   
 
 



    </div>

</div>

<script>
jQuery('#p1').change(function(){
	if(jQuery('#p2').prop('checked', true)){
		
		jQuery('#p2').prop('checked', false)
	}
	
	if(jQuery('#p1').prop('checked')==false)
		{
	jQuery('#p3').prop('checked', false);
	jQuery('#p4').prop('checked', false);
	jQuery('#p5').prop('checked', false);
	jQuery('#p7').prop('checked', false);
	jQuery('#p8').prop('checked', false);
	jQuery('#p9').prop('checked', false);
	jQuery('#p10').prop('checked', false);
	jQuery('#p11').prop('checked', false);
	jQuery('#p12').prop('checked', false);
		}
		else
		{
	jQuery('#p3').prop('checked', true);
	jQuery('#p4').prop('checked', true);
	jQuery('#p5').prop('checked', true);
	jQuery('#p7').prop('checked', true);
	jQuery('#p8').prop('checked', true);
	jQuery('#p9').prop('checked', true);
	jQuery('#p10').prop('checked', true);
	jQuery('#p11').prop('checked', true);
	jQuery('#p12').prop('checked', true);
$('.orderlimit').css('display','none');
	jQuery('#orderlimitperday').prop('required',false);
	$('.singleorderlimit').css('display','none');
	jQuery('#singleorderlimitperday').prop('required',false);
		}
	
	
});


jQuery('#p2').change(function(){
	if(jQuery('#p1').prop('checked', true)){
		
		jQuery('#p1').prop('checked', false)
		jQuery('#p3').prop('checked', false);
		jQuery('#p4').prop('checked', false);
		jQuery('#p5').prop('checked', false);
		jQuery('#p7').prop('checked', false);
		jQuery('#p8').prop('checked', false);
		jQuery('#p9').prop('checked', false);
		jQuery('#p10').prop('checked', false);
		jQuery('#p11').prop('checked', false);
		jQuery('#p12').prop('checked', false);
		if(jQuery('#p2').prop('checked')==false)
		{
	jQuery('#p3').prop('checked', false);
	jQuery('#p4').prop('checked', false);
	jQuery('#p7').prop('checked', false);
	jQuery('#p5').prop('checked', false);
	jQuery('#p8').prop('checked', false);
	$('.orderlimit').css('display','none');
	jQuery('#orderlimitperday').prop('required',false);
	$('.singleorderlimit').css('display','none');
	jQuery('#singleorderlimitperday').prop('required',false);
		}
		else
		{
	jQuery('#p3').prop('checked', true);
	jQuery('#p4').prop('checked', true);
	jQuery('#p7').prop('checked', true);
	jQuery('#p5').prop('checked', true);
	jQuery('#p8').prop('checked', true);
$('.orderlimit').css('display','block');
jQuery('#orderlimitperday').prop('required',true);
$('.singleorderlimit').css('display','block');
	jQuery('#singleorderlimitperday').prop('required',true);
		}
	}
	
	
});
$('#user_email').blur(function(){
		var user_email=$(this).val();
		if(user_email!='')
		{
			$.ajax({
				url:"<?= base_url('')?>checkuserexsist",
				method:'post',
				data:{'useremail':user_email},
				success:function(data)
				{
					
					if(data=='1')
					{
						$('#user_exsist_error').css('display','block');
						$('#user_email').val('');
					}
					
			    }
			       });
			
		}
		
	});
	$('#user_email').focus(function(){
		$('#user_exsist_error').css('display','none');
	});
</script>