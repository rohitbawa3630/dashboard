
   <div id="form">
   <form method="post" action="<?php echo site_url('suppliers');?>">
<div class="container">
	 
	    <div class="row">

<div class="col-md-12 bord">
  
<div class="row">
	    <div class="col-md-6 col-xs-12 border">
		<div class="card card-custom gutter-b example example-compact" style="height: 920px;">
      <div class="card-header">
         <h3 class="card-title">General Details</h3>
	
		 </div>
		 <div class="card-body">
		  <div class="form-group">
		
		 <div class="jumbotron-sec marg dropzone pt-0" style="border: none;">
 <div class="form-horizontal">
		
 <!----------------busniss-name------------------------->   
   <div class="form-group ">
      <label>Suppliers Name</label>
	
	 
      <input required type="text" class="form-control form-control-solid"  placeholder="Enter Suppliers Name" name="Suppliers_Name">
 
	  </div>
   <!----------------address------------------------->  
   <div class="form-group ">
     <label>Contact Name</label>

	 
      <input required type="text" class="form-control form-control-solid"  placeholder="Enter Contact Name" name="Contact_Name">
   </div>
	
   <!----------------post code------------------------->
   <div class="form-group ">
     <label>Address</label>
	
	
      <input required type="text" class="form-control form-control-solid"  placeholder="Enter Address" name="Address">
   
	  </div>
	   <!----------------City------------------------->
	<div class="form-group ">
     <label>City</label>
	
	 
      <input required type="text" class="form-control form-control-solid"  placeholder="Enter Address" name="City">
 
	  </div>
	
   <!----------------Post Code-------------------------> 
   <div class="form-group">
<label>Post Code</label>
	 
	
      <input required type="text" class="form-control form-control-solid"  placeholder="Enter Post Code" name="Post_Code">
</div>
   <!----------------Contact Name------------------------->  
   <div class="form-group ">
 <label>Contact Number</label>
	
	
      <input required type="text" class="form-control form-control-solid" id="email" placeholder="Enter Contact Number" name="Contact_Number">
   </div>
	
   <!----------------Contact Number------------------------->  
   <div class="form-group">
 <label>Email</label>

      <input required type="email" class="form-control form-control-solid"  placeholder="Enter Email" name="Email">
   	  
	</div>
   <div class="form-group">
    <label>Website</label>
	
	
      <input  type="text" class="form-control form-control-solid"  placeholder="Enter Website" name="Website">
 
	</div>
	   </div>

	    </div>  
</div>
</div>
</div>
</div>

<!------------------------second------section--------------------------->
	    <div class="col-md-6 col-xs-12">
		<div class="card card-custom gutter-b example example-compact">
<div class="card-header">
         <h3 class="card-title">Account Details</h3>
	
		 </div>
  <div class="card-body">
	<div class="form-group dropzone pt-0 mb-0" style="border: none;">
 <div class="jumbotron-sec marg">

  <div class="form-horizontal">
 <!----------------busniss-name------------------------->   
   <div class="form-group">
   <label>Contact Name</label>

	  
      <input required type="text" class="form-control form-control-solid" id="email" placeholder="Contact Name" name="Ac_Contact_Name">
    
		  </div>
		  <!----------------address-------------------------> 
   <div class="form-group ">
     <label>Address</label>
	
	 
      <input required type="address" class="form-control form-control-solid" placeholder="Enter Your Address" name="Ac_Address">
    
	</div>
		    <!----------------City-------------------------> 
   <div class="form-group ">
     <label>City</label>
	
	 
      <input required type="text" class="form-control form-control-solid"  placeholder="Enter Your Address" name="Ac_City">
   
	</div>
   
   <!----------------post code------------------------->   
   <div class="form-group">
      <label>Post Code</label>
	
	 
      <input required type="text" class="form-control form-control-solid"  placeholder="Enter Post Code" name="Ac_Post_Code">
  
	  </div>
   <!----------------Email-------------------------> 
   <div class="form-group">
     <label>Contact Number</label>
	  
	
      <input required type="text" class="form-control form-control-solid" id="email" placeholder="Enter Contact Number" name="Ac_Contact_Number">
   
	</div>
   <!----------------Contact Number------------------------->
   <div class="form-group">
<label>Email</label>
	
	 
      <input required type=" Number" class="form-control form-control-solid" id="email" placeholder="Enter Email" name="Ac_Email">
    
	  </div>
   <!----------------VAT Number------------------------->
   <div class="form-group">
    <label>Account Limit</label>
	 
	  
      <input required type=" Number" class="form-control form-control-solid" id="email" placeholder="Enter Account Limit" name="Account_Limit">
   
	</div>
	<div class="form-group">
    <label>Account Number</label>
	 
	 
      <input required type=" Number" class="form-control form-control-solid" id="email" placeholder="Enter Account Limit" name="AccountNumber">
  
	</div>
	
   <div class="form-group ">
    <label>Terms</label>
	
	 
      <select class="form-control form-control-solid" name="Terms" >
  <option value="30days">30days</option>
  <option value="60days">60days</option>
  <option value="90days">90days</option>
  <option value="Cash">Cash</option>
</select>
   
	  </div>
	  
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

  <div class="row">

<div class="col-md-6 col-xs-12 ">
<div class="card card-custom gutter-b example example-compact">
<div class="card-header">
         <h3 class="card-title">Email Address</h3>
	
		 </div>
  <div class="card-body">
	<div class="form-group dropzone pt-0" style="border: none;">
 <div class="jumbotron-sec marg">

  <div class="form-horizontal">


 <!----------------busniss-name------------------------->   
   <div class="form-group ">
        <label>Email address To send orders to</label>
	
	 
       <input required type="email" class="form-control email form-control-solid mb-5"  placeholder="Order Email Address" name="Order_Email_Address"><span style="color:red">This Email Address Should Be Same As Above Email Address.</span>
	  </div>

 
   <!----------------Contact Number------------------------->
   <div class="form-group">
<label>Account Status</label>
	
	<select class="form-control form-control-solid" id="slct" name="Account_Status">
  <option value="Open" >Open</option>
  <option value="close" >closer</option>
</select>
	</div>
	
    <div class="submit-btn-sec">
<input type="submit" class="btn btn-info  marg_1 " value="SUBMIT" name="Insert_suppliers">

    </div>
</div>
</div>
</div>
<div class="col-md-6 col-xs-12 ">
</div>
</div>

</div>
</div>
</div>
</div>
  </form>
</div>
