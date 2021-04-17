<?php error_reporting(0); 

?>
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
    <li class=""><a  data-toggle="tab" href="#av">Store availability</a></li>
</ul>
<div class="tab-content active">
<div id="pd" class=" tab-pane active">
<div id="form">
   <div class="row">
       <form  id="product_form" class="w-100" enctype="multipart/form-data" method="post" action="<?php echo site_url('UpdateStores'); ?>">
         <div class="col-md-6 col-xs-12 back">
            <h2>Store  Details</h2>
            <div class="marg product-form">
               <div class="form-horizontal">
                  <div class="form-group ">
                     <label>Store Name </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="<?php echo $details[0]['name'];?>" name="storetname">
                  </div>
				  <div class="form-group ">
                     <label>Email</label>
                     <input required type="email" class="form-control form-control-solid" value="<?php echo $details[0]['email'];?>" name="storeEmail">
                  </div>
				 
                  <div class="form-group ">
                     <label> Price</label>
                     <input required type="number" class="form-control form-control-solid"  placeholder="" value="<?php echo $details[0]['price'];?>" name="Price">
                  </div>
				 
				  <div class="form-group ">
                     <label>Phone Number</label>
                     <input required type="text" min="1"class="form-control form-control-solid"  placeholder="" value="<?php echo $details[0]['phone'];?>" name="phnumber">
                  </div>
				   <div class="form-group ">
                                      <label> Address </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="<?php echo $details[0]['address'];?>" name="address">
                  </div>
				  <!-- <div class="form-group ">
                                      <label> Country </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="country">
                  </div> -->
				  <div class="form-group">
                     <label>Country</label>
                     <select class="form-control form-control-solid"  name="country" id="maincat" >
					  <option  value="  " <?php if($details[0]['country']==" "){?> selected <?php }?> disabled>--Select--</option>
                        <option value="Libya" <?php if($details[0]['country']=="Libya"){?> selected <?php }?> >Libya</option>
						<option value="Tunisia" <?php if($details[0]['country']=="Tunisia"){?> selected <?php }?> >Tunisia</option>
						  <option value="Turkey" <?php if($details[0]['country']=="Turkey"){?> selected <?php }?> >Turkey</option>
						
                     </select>
                  </div>
				  <div class="form-group">
                     <label>State</label>
                     <select class="form-control form-control-solid"  name="State" id="maincat" >
					  <option  value="  " <?php if($details[0]['state']=="  "){?> selected <?php }?> disabled>--Select--</option>
                         <option value="tripoli" <?php if($details[0]['state']=="tripoli"){?> selected <?php }?> >Tripoli</option>
						<option value="beghazi" <?php if($details[0]['state']=="beghazi"){?> selected <?php }?> >Beghazi</option>
						  <option value="misrata" <?php if($details[0]['state']=="misrata"){?> selected <?php }?> >Misrata</option>
						<option value="zawiya" <?php if($details[0]['state']=="zawiya"){?> selected <?php }?> >Zawiya</option>
						<option value="sebha"  <?php if($details[0]['state']=="sebha"){?> selected <?php }?>>sebha</option>
						<option value="aibayda" <?php if($details[0]['state']=="aibayda"){?> selected <?php }?> >Aibayda</option>
						<option value="derna"  <?php if($details[0]['state']=="derna"){?> selected <?php }?>>Derna</option>
						
                     </select>
                  </div>
				   <div class="form-group">
                     <label>City</label>
                     <select class="form-control form-control-solid"  name="city" id="maincat" >
					  <option  value="  " selected disabled>--Select--</option>
                        <option value="tripoli" <?php if($details[0]['city']=="tripoli"){?> selected <?php }?> >Tripoli</option>
						<option value="beghazi"  <?php if($details[0]['city']=="beghazi"){?> selected <?php }?>>Beghazi</option>
						  <option value="misrata" <?php if($details[0]['city']=="misrata"){?> selected <?php }?> >Misrata</option>
						<option value="zawiya" <?php if($details[0]['city']=="zawiya"){?> selected <?php }?> >Zawiya</option>
						<option value="sebha"  <?php if($details[0]['city']=="sebha"){?> selected <?php }?>>sebha</option>
						<option value="aibayda" <?php if($details[0]['city']=="aibayda"){?> selected <?php }?> >Aibayda</option>
						<option value="derna" <?php if($details[0]['city']=="derna"){?> selected <?php }?>  >Derna</option>
						
                     </select>
                  </div>
				 <!-- <div class="form-group ">
				                       <label>City </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="" name="city">
                  </div>-->
				  <div class="form-group ">
				                       <label>Postcode </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="<?php echo  $details[0]['zip_code']; ?>" name="postcode">
                  </div>
				  <div class="form-group ">
				                       <label>Education </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="<?php echo  $details[0]['education']; ?>" name="Education">
                  </div>
				  <div class="form-group ">
				                       <label>Experiece </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="<?php echo  $details[0]['experiece']; ?>" name="Experiece">
                  </div>
                <div class="form-group ">
				                       <label>About </label>
                     <textarea class="form-control form-control-solid"  placeholder="" value="<?php echo  $details[0]['about']; ?>" name="About"><?php echo  $details[0]['about']; ?> </textarea>
                  </div>
				    <div class="form-group ">
				                       <label>Landmark </label>
                     <input  type="text" class="form-control form-control-solid"  placeholder="" value="<?php echo  $details[0]['landmark']; ?>" name="Landmark">
                  </div>
				    <div class="form-group ">
				                       <label>Latitude </label>
                     <input  type="number" class="form-control form-control-solid"  placeholder="" value="<?php echo  $details[0]['latitude']; ?>" name="Latitude">
                  </div>
				    <div class="form-group ">
				                       <label>Longitude </label>
                     <input  type="number" class="form-control form-control-solid"  placeholder="" value="<?php echo  $details[0]['longitude']; ?>" name="Longitude">
                  </div>
				  <!-- <div class="form-group">
                      <label>Language</label> </br>
					  <input type="checkbox" id="English" name="English" value="English" <?php if($details[0]['longitude']){?> checked <?php } ?>>
                      <label> English</label><br>
					  <input type="checkbox" id="Arbic" name="Arbic" value="Arbic" <?php if($details[0]['longitude']){?> checked <?php } ?>>
                      <label> Arbic</label><br>
                     
					 
                  </div>-->
                  <div class="form-group">
                     
                     Publish<input  type="radio" value="1" name="pub" <?php if($details[0]['status']=="1"){ ?> checked <?php } ?>>
                     Unpublish<input <?php if($details[0]['status']=="0"){ ?> checked <?php } ?>  type="radio"  value="0" name="pub">
                  </div>
               </div>
			   <input type="hidden" name="storeid" value="<?php echo $store_id;?>">
			   <input type="submit" class="btn btn-info"  name="update_store" value="Update Store">
            </div>
         </div>
		 
         <div class="col-md-6 col-xs-12">
           <!------------Get All  category---------  <h2>Category</h2>
            <div class="marg product-form">
               <div class="form-horizontal">
                 
                  <div class="form-group">
                     <label>Main Category</label>
                     <select class="form-control form-control-solid"  name="Category" id="maincat" >
					  <option  value="  " selected disabled>--Select--</option>
                        <option value="1"  >Pharmacy</option>
						<option value="2"  >Beauty & Skin Care</option>
						  <option value="3"  >Nutrition & Diet</option>
						<option value="4"  >Fitness & Weight Loss</option>
                     </select>
                  </div>
                 
                  <div class="form-group">
                     <label>Sub Category</label>
                     <select class="form-control form-control-solid"  name="Sub_Category" id="subcat">
                        
                     </select>
                  </div>
				 ---->
                
                
               </div>
               
			   </form>
            </div>
         </div>
   </div>
   



	<div id="av" class=" tab-pane">
	<form id="avform" <?php if(count($slots)){ ?>style="display:none"<?php }else{?>style="display:block" <?php } ?>method="post" action="<?php echo site_url('StoreAvibility');?>">
		<p>Select availability</p>
		  Sunday : <input type="checkbox" id="Sunday" class="check" name="Sunday"><br>
          <div class="SundaySlot" style="display:none">		 
			 <p>To</p>
			 
			
				<input type="time" id="closetime" name="am_Sunday" class="form-control">
			  <p>From</p>
			  
					
				<input type="time" id="fromclosetime" name="pm_Sunday" class="form-control">
		  </div>
		  Monday : <input type="checkbox" id="Monday" class="check" name="Monday"><br>
		   <div class="MondaySlot" style="display:none">		 
			 <p>To</p>
			 
			
				<input type="time" id="closetime" name="am_Monday" class="form-control">
			  <p>From</p>
			  
					
				<input type="time"id="fromclosetime" name="pm_Monday" class="form-control">
		  </div>
		  Tuesday : <input type="checkbox" id="Tuesday" class="check" name="Tuesday"><br>
		   <div class="TuesdaySlot" style="display:none">		 
			 <p>To</p>
			 
			
				<input type="time" id="closetime" name="am_Tuesday" class="form-control">
			  <p>From</p>
			  
					
				<input type="time" id="fromclosetime" name="pm_Tuesday" class="form-control">
		  </div>
		  Wednesday : <input type="checkbox" id="Wednesday" class="check" name="Wednesday"><br>
		   <div class="WednesdaySlot" style="display:none">		 
			 <p>To</p>
			 
				
				<input type="time" id="closetime" name="am_Wednesday" class="form-control">
			  <p>From</p>
			  
					
				<input type="time" id="fromclosetime" name="pm_Wednesday" class="form-control">
		  </div>
		  Thursday : <input type="checkbox" id="Thursday" class="check" name="Thursday"><br>
		   <div class="ThursdaySlot" style="display:none">		 
			 <p>To</p>
			 
				
				<input type="time" id="closetime" name="am_Thursday" class="form-control">
			  <p>From</p>
			  
					
				<input type="time" id="fromclosetime" name="pm_Thursday" class="form-control">
		  </div>
		  Friday : <input type="checkbox" id="Friday" class="check" name="Friday"><br>
		   <div class="FridaySlot" style="display:none">		 
			 <p>To</p>
			 
				
				<input type="time" id="closetime" name="am_Friday" class="form-control"> 
			  <p>From</p>
			  
					
				
				<input type="time" id="fromclosetime" name="pm_Friday" class="form-control">
		  </div>
		  Saturday : <input type="checkbox" id="Saturday" class="check" name="Saturday">
		   <div class="SaturdaySlot" style="display:none">		 
			 <p>To</p>
			 
				
				<input type="time" id="closetime" name="am_saturday" class="form-control">
			  <p>From</p>
			  
					
				<input type="time" id="fromclosetime" name="pm_saturday" class="form-control">
		  </div>
		  <input type="hidden" name="storeid" value="<?php echo $store_id;?>">
		  <div>
		  <input type="submit" name="add_aviblity" value="update" class="btn btn-success">
		  </div>
  </form>
  <div class="already_view" <?php if(count($slots)){ ?>style="display:block"<?php }else{?>style="display:none" <?php } ?>>
  <table>
    <?php foreach($slots as $split){ ?>
		<tr>
		  <th><?php echo $split['day']; ?></th> 
		</tr>
		<tr><td>Open : <?php echo $split['open']; ?></td></tr>
		<tr><td>Close : <?php echo $split['close']; ?></td></tr>
		
	<?php } ?>
  </table>
  <span class="btn btn-info setagain">Set Again</span>
  </div>

	</div>
</div></div></div>
<script>
$('.check').change(function(){
	
	if($(this).prop('checked') == true)
	{
		name=$(this).attr('name');
		$('.'+name+'Slot').css('display','block');
	}
	
	
});
$('.setagain').click(function(){
	$('#avform').css('display','block');
	$('.already_view').css('display','none');
});

</script>