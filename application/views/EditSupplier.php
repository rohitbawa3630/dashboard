<?php 
     error_reporting(0);
$editid=$_GET['id'];
	   
	      $select_single_supplier_query="select * from dev_supplier where id='$editid'";
		$select_single_supplier=$this->db->query($select_single_supplier_query);
	   $select_single_supplier=$select_single_supplier->result_array();
	  $select_single= $select_single_supplier[0];
	
	  $select_single_supplier_permi_query="select * from dev_supplier_account where supplier_id='$editid'";
		$select_single_supplier_permi=$this->db->query($select_single_supplier_permi_query);
	   $select_single_supplier_permi=$select_single_supplier_permi->result_array();
	  
	  $select_single_permi= $select_single_supplier_permi[0];
	      
	  
	   ?>	


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  

  
  
   <div id="form">

   <form method="post" action="<?php echo site_url('editsuppliers');?>">
<div class="container">
	 
	    <div class="row">

<div class="col-md-12 bord">
  
<div class="row">
	    <div class="col-md-6 col-xs-12">
			<div class="card card-custom gutter-b example example-compact" style="height: 945px;">
      <div class="card-header">
         <h3 class="card-title">General Details</h3>
	
		 </div>
		 <div class="card-body">
		  <div class="form-group">
		
		 <div class="jumbotron-sec marg dropzone pt-0" style="border: none;">
 <div class="form-horizontal">
		
		
		  
 <input type="hidden" value="<?php echo $select_single['id']; ?>" name="hid">
 
 <!----------------busniss-name------------------------->   
   <div class="form-group ">
      <label>Suppliers Name</label>
	
	 
      <input required value="<?php echo $select_single['suppliers_name'];?>" type="text" class="form-control form-control-solid"  placeholder="Enter Suppliers Name" name="Suppliers_Name">
   
	  </div>
  
	
   <!----------------Address------------------------->
   <div class="form-group ">
     <label>Address</label>
	
	
      <input required value="<?php echo $select_single['address'];?>" type="text" class="form-control form-control-solid"  placeholder="Enter Address" name="Address">
 
	  </div>
	<!----------------City------------------------->
   <div class="form-group ">
     <label>City</label>
	
	 
      <input required value="<?php echo $select_single['suppliers_city'];?>" type="text" class="form-control form-control-solid"  placeholder="Enter City" name="City">
  
	  </div>
	  <!------------------POSTCODE-------------------------->
	     <div class="form-group">
<label>Post Code</label>
	 
	
      <input required value="<?php echo $select_single['post_code'];?>" type="text" class="form-control form-control-solid"  placeholder="Enter Post Code" name="Post_Code">
   </div>
	   <!----------------Postcode------------------------->  
   <div class="form-group ">
     <label>Contact Name</label>

	 
      <input required value="<?php echo $select_single['contact_name'];?>" type="text" class="form-control form-control-solid"  placeholder="Enter Contact Name" name="Contact_Name">
   </div>
   

   <!----------------Contact Name------------------------->  
   <div class="form-group ">
 <label>Contact Number</label>
	
	
      <input required value="<?php echo $select_single['contact_number'];?>" type="text" class="form-control form-control-solid" id="email" placeholder="Enter Contact Number" name="Contact_Number">
    </div>
	
   <!----------------Contact Number------------------------->  
   <div class="form-group">
 <label>Email</label>

	
      <input required value="<?php echo $select_single['email'];?>" type="email" class="form-control form-control-solid"  placeholder="Enter Email" name="Email">
     
	</div>
   <div class="form-group">
    <label>Website</label>
	

      <input  value="<?php echo $select_single['website'];?>" type="text" class="form-control form-control-solid"  placeholder="Enter Website" name="Website">
    
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
	<div class="form-group dropzone pt-0" style="border: none;">
 <div class="jumbotron-sec marg">

  <div class="form-horizontal">
 <!----------------busniss-name------------------------->   
   <div class="form-group">
   <label>Contact Name</label>

	
      <input required value="<?php echo $select_single_permi['ac_contact_name']; ?>" type="text" class="form-control form-control-solid" id="email" placeholder="Contact Name" name="Ac_Contact_Name">
   
		  </div>
		   <!----------------address-------------------------> 
   <div class="form-group ">
     <label>Address</label>
	
	
      <input required value="<?php echo $select_single_permi['ac_address']; ?>" type="address" class="form-control form-control-solid"  placeholder="Enter Your  Address" name="Ac_Address">
  
	</div>
		     <!----------------City-------------------------> 
   <div class="form-group ">
     <label>City</label>
	

      <input required value="<?php echo $select_single_permi['ac_city']; ?>" type="address" class="form-control form-control-solid"  placeholder="Enter City" name="Ac_City">
  
	</div>
  
   <!----------------post code------------------------->   
   <div class="form-group">
      <label>Post Code</label>
	
	
      <input required value="<?php echo $select_single_permi['ac_post_code']; ?>" type="text" class="form-control form-control-solid"  placeholder="Enter Post Code" name="Ac_Post_Code">

	  </div>
   <!----------------Email-------------------------> 
   <div class="form-group">
     <label>Contact Number</label>
	  
	
      <input required value="<?php echo $select_single_permi['ac_contact_number']; ?>" type="text" class="form-control form-control-solid" id="email" placeholder="Enter Contact Number" name="Ac_Contact_Number">
   
	</div>
   <!----------------Contact Number------------------------->
   <div class="form-group">
<label>Email</label>
	
	
      <input required value="<?php echo $select_single_permi['ac_email']; ?>" type=" Number" class="form-control form-control-solid" id="email" placeholder="Enter Email" name="Ac_Email">
   
	  </div>
   <!----------------VAT Number------------------------->
   <div class="form-group">
    <label>Account Limit</label>
	 
	 
      <input required value="<?php echo $select_single_permi['account_limit']; ?>" type=" Number" class="form-control form-control-solid" id="email" placeholder="Enter Account Limit" name="Account_Limit">
   
	</div>
	<div class="form-group">
    <label>Account Number</label>
	 

      <input required value="<?php echo  $select_single['AccountNumber']; ?>" type=" Number" class="form-control form-control-solid" id="email" placeholder="Enter Account Limit" name="AccountNumber">
    
	</div>
	
   <div class="form-group ">
    <label>Terms</label>
	

      <select value="<?php echo $select_single_permi['terms']; ?>" class="form-control form-control-solid" name="Terms">
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


  <div class="row">

 
<div class="col-md-6 col-xs-12 ">
	<div class="card card-custom gutter-b example example-compact">
      <div class="card-header">
         <h3 class="card-title">General Details</h3>
	
		 </div>
 <div class="card-body">
		  <div class="form-group">
		
		 <div class="jumbotron-sec marg dropzone pt-0" style="border: none;">
 <div class="form-horizontal">
 <!----------------busniss-name------------------------->   
   <div class="form-group ">
        <label>Email address To send orders to</label>
	
	 
       <input required value="<?php echo $select_single['order_email_address'];?>" type="email" class="form-control email form-control-solid"  placeholder="Order To Email" name="Order_Email_Address">
   
	  </div>

 
   <!----------------Contact Number------------------------->
   <div class="form-group">
<label>Account Status</label>
	
	<select value="<?php echo $select_single_permi['account_status']; ?>" class="form-control form-control-solid" id="slct" name="Account_Status">
  <option value="Open" >Open</option>
  <option value="close" >closer</option>
</select>
  
	</div>
	
    <div class="submit-btn-sec">
<input required type="submit" class="btn btn-info  marg_1 " value="UPDATE" name="Edit_Supplier">

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




