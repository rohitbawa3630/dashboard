<?php error_reporting(0); ?>
<div class="container">

 
   
          <form class="form-signin" id="login" method="post" action="Notifications">
		  <div class="row">
		  <table>   
		  <tr id="noticetable"></tr>
		  </table>
		  </div>
		   <div class="row" style="margin-bottom:20px">
			
				<div class="col-md-6 col-xs-12">
							<div class="card card-custom gutter-b example example-compact">
							<div class="card-header">
                        <h3 class="card-title">General Details</h3>

                    </div>
					
					<div class="card-body">
                        <div class="dropzone" style="border: none;">
                            <div class="jumbotron-sec marg ">

                                <div class="form-horizontal">
					<div class="form-group">
				<span>Source Product List</span>
				
			
				<?php $AllProductList= $this->db->query("select * from dev_productlist"); 
						$productlistarray=$AllProductList->result_array();
				?>
					 <select class="form-control form-control-solid" id="list">
					 <option value="0"  selected>Select List</option>
					 <?php foreach($productlistarray as $Data) { ?>
						<option value="<?= $Data['id'];?>" ><?php echo $Data['productlistname']; ?></option>
						
					 <?php } ?>
					</select>
				</div>
					 
			
				
	  
	
		
			
				<div class="form-group">
				<span>Source Bussiness</span>
				
				
				<?php $Get_Data = $this->DataModel->Select_All_business(0); ?>
					 <select class="form-control form-control-solid" id="source">
					 <option value="" class="mainselect"  selected>Select Bussiness</option>
					 <?php foreach($Get_Data as $Data) { ?>
						<option <?php if($Data['id']=='15'){ ?> class="defaultbusiness" <?php } ?> value="<?= $Data['id'];?>" ><?php echo $Data['business_name']; ?></option>
						
					 <?php } ?>
					</select>
			
					 
				</div >
				
	  
	

	      <div class="form-group">
				
					<span>Destination Bussiness</span>
				
			
					 <select class="form-control form-control-solid" id="desti">
					 <option value="" disabled selected>Select Bussiness</option>
					 <?php foreach($Get_Data as $Data) { ?>
						<option value="<?= $Data['id'];?>" ><?php echo $Data['business_name']; ?></option>
						
					 <?php } ?>
					</select>
				
		  </div >  
    
	 	
		<div class="form-group">
			<span  class="form-control btn btn-info" id="enter">Copy All Product</span >
		</div >  
		
    </div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	 </form>
	
 

  </div>
  <script>
 $('#enter').click(function(){  
	 bid=$('#source option:selected').val(); 
	  newbid=$('#desti option:selected').val();
	  listid=$('#list option:selected').val();
	 $.ajax({
		url:"<?= base_url('')?>Copy_List_Product", 
		method:"POST",
		data:{'bid':bid,'newbid':newbid,'listid':listid},
		success:function(data)
		{    
		   
			if(data==0)
			{
				alert("copy success");
			}
		    else 
			{
				alert("copy success");
			}
		}
	 });
	 
  }); 
  $('#list').change(function(){
	  $('.defaultbusiness').attr('selected',true);  
	  if($('#list :selected').val()=='0')
	  {
		  $('.defaultbusiness').attr('selected',false); 
		  $('.mainselect').attr('selected',true); 
	  }
  });
  </script>

