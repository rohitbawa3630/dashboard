<?php error_reporting(0);?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
</style><div class="container">
  



  <div class="tab-content">
    
	 
	 
    
    <div id="menu1" class="tab-pane active">
   <div id="form">
   <form method="post" action="<?php echo site_url('EditStore/'.$EditArray[0]['id']);?>">
<div class="">
	 
	    <div class="row">
<div class="col-md-12">
	 <h2>Edit Stores</h2>
</div>
<div class="col-md-12 bord">
  
<div class="row">
	    <div class="col-md-6 col-xs-12">
		 <div class="card card-custom gutter-b example example-compact">
         <div class="card-header">
         <h3 class="card-title">General Details</h3>
	
		 </div>
		 <div class="card-body">
	<div class="form-group dropzone" style="border: none;">
 <div class="jumbotron-sec marg ">
		  <div class="marg product-form">
 
    <div class="form-horizontal">
 <!----------------busniss-name------------------------->   
   <div class="form-group ">
      <label>Store Name</label>
	
	  
      <input required type="text" class="form-control form-control-solid"  placeholder="Store Name" name="Store_Name" value="<?php echo $EditArray[0]['Store_Name'];?>">
  
	  </div>
   <!----------------address------------------------->  
   <div class="form-group ">
     <label>Store Address 1</label>

	  
      <input required type="text" class="form-control form-control-solid"  placeholder="Store Address 1" name="Store_Address_one" value="<?php echo $EditArray[0]['Store_Address_one'];?>">
      </div>
	
   <!----------------post code------------------------->
   <div class="form-group ">
     <label>Store Address 2</label>
	

      <input required type="text" class="form-control form-control-solid"  placeholder="Store Address 2" name="Store_Address_two" value="<?php echo $EditArray[0]['Store_Address_two'];?>">
   
	  </div>
	   <!----------------City------------------------->
	<div class="form-group ">
     <label>City</label>
	
	 
      <input required type="text" class="form-control form-control-solid"  placeholder="City" name="City" value="<?php echo $EditArray[0]['City'];?>">
   
	  </div>
	
   <!----------------Post Code-------------------------> 
   <div class="form-group">
<label>Post Code</label>
	 
	  
      <input required type="text" class="form-control form-control-solid"  placeholder="Post Code" name="Post_Code" value="<?php echo $EditArray[0]['Post_Code'];?>">
   </div>
   <!----------------Contact Name------------------------->  
   <div class="form-group ">
 <label>Tel Number</label>
	
	 
      <input required type="text" class="form-control form-control-solid" id="email" placeholder="phone" name="Contact_Number" value="<?php echo $EditArray[0]['Contact_Number'];?>">
    </div>
	
   <!----------------Contact Number------------------------->  
   <div class="form-group">
 <label>Store Email</label>

	 
      <input required type="email" class="form-control form-control-solid"  placeholder="Store Email" name="Email" value="<?php echo $EditArray[0]['Email'];?>">
      
	</div>

	<div class="form-group d-flex align-items-center">
    <label class="mb-0 mr-6">Make Default Store</label>
	
	 
      <input style="width: 20px;" type="checkbox" class="form-control form-control-solid"  name="defaultcheck" <?php if($EditArray[0]['defaultcheck']){ ?> Checked <?php } ?>>
    
	</div>
	   </div>
 <div class="form-group">
 
        <input type="hidden" name="bid" value="<?php echo $bid ;?>">
      <input type="submit" class="btn btn-info" name="edit_store" value="update">
   
	</div>
	    </div>  
</div>
</div>
</div>
</div>
</div>
  </form>
</div></div>
</div>

</div>
</div>

