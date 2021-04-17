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
   <li class=""><a class="active" data-toggle="tab" href="#pd">Product Details</a></li>
  
</ul>
<div class="tab-content active">
<div id="pd" class=" tab-pane active">
<div id="form">
   <div class="row">
      <form  id="product_form" class="w-100" enctype="multipart/form-data" method="post" action="<?php echo site_url('products'); ?>">
         <div class="col-md-6 col-xs-12 back">
            <h2>Product  Details</h2>
            <div class="marg product-form">
               <div class="form-horizontal">
                  <div class="form-group ">
                     <label>Product Name </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="productname">
                  </div>
				  <div class="form-group ">
                     <label>Description</label>
                     <textarea required type="text" class="form-control form-control-solid"  name="Description"></textarea>
                  </div>
                  <div class="form-group ">
                     <label>Image</label>
                     <input required type="file"  name="Image">
                  </div>
                  <div class="form-group ">
                     <label>Price</label>
                     <input required type="number" min="1"class="form-control form-control-solid"  placeholder="" value="" name="Price">
                  </div>
                  <div class="form-group ">
                     <label>Size</label><br>
                    <input type="checkbox" id="vehicle1" name="size[]" value="Small">
                    <label for="vehicle1"> Small</label><br>
					
					<input type="checkbox" id="vehicle1" name="size[]" value="Medium">
                    <label for="vehicle1"> Medium</label><br>
					
					<input type="checkbox" id="vehicle1" name="size[]" value="Large">
                    <label for="vehicle1"> Large</label><br>
					
					<input type="checkbox" id="vehicle1" name="size[]" value="XL">
                    <label for="vehicle1"> XL</label><br>
					
					<input type="checkbox" id="vehicle1" name="size[]" value="XXL">
                    <label for="vehicle1"> XXL</label><br>
                  </div>
                  <!----------------SKU------------------------->   
                  
                  <!-- <div class="form-group ">
                     <label class="control-label col-sm-4" for="name">Price</label>
                     
                     <div class="col-md-8">
                      <input type="text" class="form-control"  placeholder="" name="price">
                     </div>
                     </div>  -->
                 <!-- <div class="form-group">
                     <label>VAT Deductable</label>
                     Yes<input type="radio" class="tax_class" value="1" name="deduct">
                     No<input checked  type="radio"  class="tax_class" value="0"  name="deduct">
                  </div>-->
                  <div class="form-group">
                     <label > In Stock </label>
                     <input required type="number" min="0" class="form-control form-control-solid"  placeholder="" value="" name="stock" id="pexvat" >
                  </div>
                 <!-- <div class="form-group ">
                     <label>Price INC VAT</label>
                     <input readonly type="text" class="form-control form-control-solid" placeholder="" value="" name="Price_INC_VAT" id="pincvat">
                  </div>
                  <div class="form-group" id="tax_class">
                     <label>Tax Class</label>
                     <select name="tax" id="taxrate" class="form-control-solid">
                        <option value='' selected disabled>--Selected--</option>
                        <option value='5'  selected >5%</option>
                        <option  selected  value='10' >10%</option>
                        <option value='20' >20%</option>
                     </select>
                  </div>-->
                  <!----------------Tax ------------------------->   
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
                        <option value="1" selected >Diagnostic Equipment</option>
						<option value="2" selected >Therapeutic Equipment</option>
                     </select>
                  </div>
                  <!-------->
                  <div class="form-group">
                     <label>Sub Category</label>
                     <select class="form-control form-control-solid"  name="Sub_Category" id="subcat">
                        <option  value="  " selected disabled>--Select--</option>
						 <option  value="1" selected > Ultrasound Machine</option>
						  <option  value="2" selected > X Ray Machine</option>
                     </select>
                  </div>
                 <!-- <div class="form-group">
                     <label id="supersubcat">Sub_Sub_Category</label>
                     <select class="form-control form-control-solid"  name="Sub_Sub_Category" id="subsubcat">
                        <option value="" selected disabled>--Select--</option>
                     </select>
                  </div>-->
                
               </div>
               <button class="btn btn-info"  name="AddGernelDetails" >ADD PRODUCT</button>
            </div>
         </div>
   </div>
   </form>
</div>