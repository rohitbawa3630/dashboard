<?php error_reporting(0); ?>
<!--<script src="http://tinymce.cachefly.net/4.0/tinymce.min.js"></script>-->
<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script type="application/x-javascript">
   tinymce.init({selector:'#spc0'});
   
</script>
<style>
   .nav-pills, .nav-tabs {
   margin: 0 0 25px 0;
   }
   .tab-content {
   background: #fff !important;
   padding: 20px;
   margin-bottom: 30px;
   }
   .save_btn button {
   background: #5d78ff !important;
   border-color: #5d78ff !important;
   color: #fff !important;
   }
   .save_btn.btn_sec2 button.btn.btn-default {
   width: 200px;
   }
   div#menu1 h3 {
   text-align: left;
   text-transform: lowercase;
   margin-bottom: 20px;
   }
   .subtot h3:nth-of-type(3) {
   border-top: 1px solid black;
   border-bottom: 1px solid black;
   padding: 10px 0px;
   }
   fade.show{
   opacity: 1 !important;
   }
   .fade {
   opacity: 1;
   }
   .back {
   border-right: 1px solid #b3b0b066;
   }
   #form h2 {
   border-bottom: 2px solid rgb(244, 244, 244) !important;
   padding-bottom: 15px;
   font-size: 18px !important;
   font-family: Arial !important;
   font-weight: 500 !important;
   margin-bottom: 35px;
   text-align: left;
   color: #5867dd;
   }
   .li-file input[type="file"] {
   display: none;
   }
   .li-file label {
   padding: 7px 20px;
   background: #5578eb;
   color: #fff;
   border-radius: 3px;
   }
   .btn-info {
   color: #fff !important;
   background-color: #5578eb !important;
   }
   #product_form input[type="radio"] {
   margin-left: 10px;
   }
   .nav li .active{
   background: #d8d7d7 !important;
   color: #555;
   cursor: default;
   border: 1px solid #ddd;
   border-bottom-color: transparent;
   }
   .nav-tabs>li>a {
   margin-right: 2px;
   line-height: 1.42857143;
   border: 1px solid transparent;
   border-radius: 4px 4px 0 0;
   }
   a {
   color: #5867dd;
   }
   .nav-tabs>li>a {
   font-weight: 500 !important;
   font-size: 13px !important;
   }
   .form-group label {
   font-size: 1rem;
   font-weight: 600;
   color: #3F4254;
   }
   .form-horizontal .form-group {
   margin-right: 0px;
   margin-left: 0px;
   }
</style>
<div class="container">

<div class="product_data_lists">
<ul class="nav nav-tabs">
   <li class=""><a class="active" data-toggle="tab" href="#pd">Store Details</a></li>
    
</ul>
<div class="tab-content active">
<div id="pd" class=" tab-pane active">
<div id="form">
   <div class="row">
      <form  id="product_form" class="w-100" enctype="multipart/form-data" method="post" action="<?php echo site_url('Stores'); ?>">
         <div class="col-md-6 col-xs-12 back">
            <h2>Store  Details</h2>
            <div class="marg product-form">
               <div class="form-horizontal">
                  <div class="form-group ">
                     <label>Store Name </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="storetname">
                  </div>
				  <div class="form-group ">
                     <label>Email</label>
                     <input required type="email" class="form-control form-control-solid"  name="storeEmail">
                  </div>
				  <div class="form-group ">
                     <label>Password</label>
                     <input required type="password" class="form-control form-control-solid"  name="password">
                  </div>
                  <div class="form-group ">  
                     <label>Logo</label>
                     <input required type="file"  name="logo">
                  </div>
                  <div class="form-group ">
                     <label> Price</label>
                     <input required type="number" class="form-control form-control-solid"  placeholder="" value="" name="Price">
                  </div>
				  <div class="form-group ">
                     <label>Prescribe </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="Prescribe">
                  </div>
				  <div class="form-group ">
                     <label>Phone Number</label>
                     <input required type="number" min="1"class="form-control form-control-solid"  placeholder="" value="" name="phnumber">
                  </div>
				   <div class="form-group ">
                                      <label> Address </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="address">
                  </div>
				  <!-- <div class="form-group ">
                                      <label> Country </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="country">
                  </div> -->
				  <div class="form-group">
                     <label>Country</label>
                     <select class="form-control form-control-solid"  name="country" >
					  <option  value="  " selected disabled>--Select--</option>
                        <option value="Libya"  >Libya</option>
						<option value="Tunisia"  >Tunisia</option>
						  <option value="Turkey"  >Turkey</option>
						
                     </select>
                  </div>
				  <div class="form-group">
                     <label>State</label>
                     <select class="form-control form-control-solid"  name="State"  >
					  <option  value="  " selected disabled>--Select--</option>
                         <option value="tripoli"  >Tripoli</option>
						<option value="beghazi"  >Beghazi</option>
						  <option value="misrata"  >Misrata</option>
						<option value="zawiya"  >Zawiya</option>
						<option value="sebha"  >sebha</option>
						<option value="zibayda"  >Aibayda</option>
						<option value="derna"  >Derna</option>
						
                     </select>
                  </div>
				   <div class="form-group">
                     <label>City</label>
                     <select class="form-control form-control-solid"  name="city"  >
					  <option  value="  " selected disabled>--Select--</option>
                        <option value="tripoli"  >Tripoli</option>
						<option value="beghazi"  >Beghazi</option>
						  <option value="misrata"  >Misrata</option>
						<option value="zawiya"  >Zawiya</option>
						<option value="sebha"  >sebha</option>
						<option value="aibayda"  >Aibayda</option>
						<option value="derna"  >Derna</option>
						
                     </select>
                  </div>
				 <!-- <div class="form-group ">
				                       <label>City </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="city">
                  </div>-->
				  <div class="form-group ">
				                       <label>Postcode </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="postcode">
                  </div>
				  <div class="form-group ">
				                       <label>Education </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="Education">
                  </div>
				  <div class="form-group ">
				                       <label>Experiece </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="Experiece">
                  </div>
                <div class="form-group ">
				                       <label>About </label>
                     <textarea class="form-control form-control-solid"  placeholder="" value="" name="About"> </textarea>
                  </div>
				    <div class="form-group ">
				                       <label>Landmark </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="Landmark">
                  </div>
				    <div class="form-group ">
				                       <label>Latitude </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="Latitude">
                  </div>
				    <div class="form-group ">
				                       <label>Longitude </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="Longitude">
                  </div>
				   <div class="form-group">
                      <label>Language</label> </br>
					  <input type="checkbox" id="English" name="English" value="English">
                      <label> English</label><br>
					  <input type="checkbox" id="Arbic" name="Arbic" value="Arbic">
                      <label> Arbic</label><br>
                     
					 
                  </div>
                  <div class="form-group">
                     
                     Publish<input  type="radio" value="1" name="pub">
                     Unpublish<input checked  type="radio"  value="0" name="pub">
                  </div>
               </div>
            </div>
         </div>
         <div class="col-md-6 col-xs-12">
            <h2>Category</h2>
            <div class="marg product-form">
               <div class="form-horizontal">
                  <!------------Get All  category------------->
                  <div class="form-group">
                     <label>Main Category</label>
                     <select class="form-control form-control-solid"  name="Category" id="maincat" >
					  <option  value="  " selected disabled>--Select--</option>
                       <!-- <option value="1"  >Pharmacy</option>-->
						<option value="2"  >Beauty & Skin Care</option>
						  <option value="3"  >Nutrition & Diet</option>
						<option value="4"  >Fitness & Weight Loss</option>
                     </select>
                  </div>
                  <!-------->
                  <div class="form-group">
                     <label>Sub Category</label>
                     <select class="form-control form-control-solid"  name="Sub_Category" id="subcat">
                        
                     </select>
                  </div>
				 
                 <!-- <div class="form-group">
                     <label id="supersubcat">Sub_Sub_Category</label>
                     <select class="form-control form-control-solid"  name="Sub_Sub_Category" id="subsubcat">
                        <option value="" selected disabled>--Select--</option>
                     </select>
                  </div>-->
                
               </div>
               <input type="submit" class="btn btn-info"  name="submit_store" value="ADD Store">
            </div>
         </div>
   </div>
   </form>
</div>
</div>

	
</div>
<script>
$('.check').change(function(){
	
	if($(this).prop('checked') == true)
	{
		name=$(this).attr('name');
		$('.'+name+'Slot').css('display','block');
	}
	
	    
});
$('#maincat').change(function(){ 
			
				
				$('#subcat').empty();
				$('#subcat').append('<option value="" selected >--Select--</option>'); 
				$cat_id=$(this).val();
				$.ajax({
				url:"<?= base_url('')?>getsubcatbyajax",
				method:"GET",
				data:{'catid':$cat_id},
				success:function(data){
					data=JSON.parse(data);
					objlen=data.length;
					for(i=0;i<objlen;i++)
					{
					  
					$('#subcat').append('<option value="'+data[i].id+'" selected="selected">'+data[i].sub_cat_name+'</option>'); 
					}
				  
					
				}
			});
});




</script>