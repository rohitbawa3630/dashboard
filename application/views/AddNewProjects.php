







     <form action="<?php echo site_url('projects'); ?>" method="post">
	 <div class="container">
	  <div class="main_sec">
	  
	  
	  <div class="marg product-form">
 
 	
	  <div class="row">

<div class="col-md-12 bord">

    <div class="row">

	 <div class="col-md-12 col-xs-12 border">
		<div class="card card-custom gutter-b example example-compact">
      <div class="card-header">
         <h3 class="card-title">General Details</h3>
	
		 </div>
		 <div class="card-body">
		  <div class="form-group">
		
		 <div class="jumbotron-sec marg dropzone pt-0" style="border: none;">
 <div class="form-horizontal">
 <!----------------busniss-name------------------------->   
<div class="col-md-6">
   <div class="form-group col-md-12">
      <label>Project Name</label>
	 
	 
      <input required type="text" class="form-control form-control-solid"  placeholder="Enter Project Name" name="Project_Name">
   
 </div>
   <!----------------address------------------------->

   <div class="form-group col-md-12">
       <label>Customer Name</label>
	

      <input required type="text" class="form-control form-control-solid"  placeholder="Enter Customer Name" name="Customer_Name">
    
  </div>
  <div class="form-group col-md-12">
   <label>Address</label>

	
      <input required type="text" class="form-control form-control-solid" id="email" placeholder=" Address" name="permanent_Address">

	  </div>
	   <div class="form-group col-md-12">
        <label>City</label>
	 
	 
      <input required type="text" class="form-control form-control-solid"  placeholder="city" name="City_permanent">
  
 </div>
	   <div class="form-group col-md-12">
  <label>Post Code</label>
	 
	 
      <input required type="text" class="form-control form-control-solid"  placeholder=" Post Code" name="Post_Code_permanent">
 
 </div>
   <!----------------Contact Name------------------------->

   

  

   
	  <div class="form-group col-md-12">
   <label>Delivery Address</label>

	
      <input required type="text" class="form-control form-control-solid" id="email" placeholder=" Delivery  Address" name="Delivery_Address">
    
	  </div>
	
      <div class="form-group col-md-12">
        <label>City</label>
	 
	 
      <input required type="text" class="form-control form-control-solid"  placeholder="city" name="Delevery_City">
   
 </div>

   

 
 
 
  </div>

<div class="col-md-6">



 <!----------------Email------------------------->
 
   <div class="form-group col-md-12">
  <label>Post Code</label>
	 
	
      <input required type="text" class="form-control form-control-solid"  placeholder=" Post Code" name="Post_Code_delevery">
    
 </div>



	
	<!----------------Contact Name------------------------->

 <div class="form-group col-md-12">
        <label>Contact Number</label>
	 
	 
      <input required type="text" class="form-control form-control-solid"  placeholder="Enter Contact Number" name="Contact_Number">
    
 </div>
 <div class="form-group col-md-12">
        <label>Email Address</label>
	 
	 
      <input required type="email" class="form-control form-control-solid"  placeholder="Enter Email Address" name="Email_Address">
    
 </div>
 
 
    <!----------------hiden i value for engineer------------------------->
 <input type="hidden" name="enghid" id="enghid" >
  <!----------------hiden i value for engineer------------------------->
   <div class="form-group col-md-12" id="add_new_box">
   <div class="Adddiv">
       <label>Engineer Name</label>

	  
	  <?php 
	  if(isset($_SESSION['Current_Business'])){
	  $All_engineer= $this->EngineerModel->Select_All_engineers($_SESSION['Current_Business']);
	  }else{
		$All_engineer= $this->EngineerModel->Select_All_engineers(0);  
	  }
	?>
	 
      <select  class="form-control form-control-solid"   name="engineer0">
	  <option selected disabled>----select-----</option>
	  <?php  foreach( $All_engineer as $Engineer){
	  ?>
	  <option value="<?php echo $Engineer['id']; ?>"><?php echo $Engineer['name']; ?></option>
       <? } ?>	 
	 </select>
	
    
	    <div class="col-md-2">
	
		</div>
	</div>
  </div>
	
	   <!----------------post code------------------------->
<div class="form-group col-md-12">
<div class="submit-btn-sec submit-btn-sec2">
<span  id="add_engineer" class="btn btn-info  marg_1 " > ADD ENGINEER</span>

</div>
</div>

<div class="form-group col-md-12">
<div class="submit-btn-sec submit-btn-sec2">
<input type="submit" style="width:124px" class="btn btn-info  marg_1 " value="SUBMIT" name="Insert_Project">

</div>
</div>
</div>




</div>
</div>
</div>
</div></div>

</div>
</div>
</div>
</div>
</div>



  
  </div>
</div>

<script>
jQuery(document).ready(function(){
	i=1;
	jQuery('#add_engineer').click(function(){
	jQuery('#add_new_box').append('<div class="engineer'+i+'" style="margin-top:10px;"><label>Engineer Name</label><select  class="form-control form-control-solid" name="engineer'+i+'"><option disabled selected>---Select---</option><?php  foreach( $All_engineer as $Engineer){ ?><option value="<?= $Engineer['id']; ?>"><?= $Engineer['name']; ?></option><? } ?></select><input type="submit" value="DELETE" class="btn btn-outline-primary remove mt-5" style=" padding:5px 2px;" id="engineer'+i+'"></div>');
	jQuery('#enghid').val(i);
	i++;
	jQuery('.remove').click(function(){
	var id = jQuery(this).attr('id');
	jQuery('div.'+id).remove();
	
	});
	
	});
});
	
</script>

