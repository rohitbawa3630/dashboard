<?php error_reporting(0);
$id=$_REQUEST['id'];
$dataobject=$this->db->query("select * from dev_product_cat where id='$id'");
$data_array=$dataobject->result_array();
$cat_name=$data_array[0]['cat_name'];
$image=$data_array[0]['image'];
$id=$data_array[0]['id'];
?>
<link href="<?php base_url()?>//assets/css/demo1/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div class="container">


      <!--<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>-->
		<div id="form">

			 
				<div class="row">
				 <div class="col-md-6 col-xs-6 border">
		<div class="card card-custom gutter-b example example-compact">
      <div class="card-header">
         <h3 class="card-title">General Details</h3>
	
		 </div>
		 <div class="card-body">
		  <div class="form-group mb-0">
		
		 <div class="jumbotron-sec marg dropzone pt-0" style="border: none;">
 <div class="form-horizontal">
				
				<form  method="post" enctype="multipart/form-data" action="<?php echo site_url('changeCatNewTheme'); ?>">
		  
						  <div class="jumbotron-sec marg ">
							 <div class="form-horizontal">
							 <!----------------Shipping Title------------------------->   
							 <div class="form-group ">
								  <label>Name</label>
								
										<input type="text" class="form-control form-control-solid" value="<?php echo $cat_name; ?>" placeholder name="cat_name">
									
							 </div>
							   <!----------------Cost------------------------->   
							  <div class="form-group a1" <?php if($image==''){?>style="display:block"<?php }else{?>style="display:none"<?php } ?>>
								  <label>Image</label>
								  
								  <input type="file" class="form-control form-control-solid" required  name="cat_img">
								
							 </div>
							  <div class="form-group a2" <?php if($image==''){?>style="display:none"<?php }else{?>style="display:block"<?php } ?>>
								  <label class="mr-5">Image</label>
							
								  <img class="mr-5" src="<?php echo $image;?>" width='50px' height='50px'><i class="fas fa-trash-alt changecatimage"></i>
								
							 </div>
							
								<!-------------------------------city------------------------------->
							<div class="form-group">
							 <input type="hidden" class="form-control form-control-solid" value="<?php echo $id;?>"; name="id">
								<button  name="updatecost" class="btn btn-info">Update</button>
							</div>							   
							</div>
						</div>
				</form>
			
		  </div>
		  
		  </div>
		  </div>
		  </div>
		  </div>
		  </div>
		  </div>
		
		  
		</div>
		</div>




<script>

// change or delete cat image	
$('.changecatimage').click(function(){
		
		$.ajax({
		url:"DeleteCatImages",
		method:"POST",
		data:{'catid':<?php echo $id; ?>},
		success:function(data)
		{
		        if(data=="1")
				{
					$('.a2').css('display','none');
					$('.a1').css('display','block');
					location.relode();
				}
				
			
		}
	});
		
	});

</script>