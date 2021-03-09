<?php error_reporting(0); ?>
<link href="<?php base_url()?>//assets/css/demo1/style.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<div class="container">
	 
	    <div class="row">
		<div class="col-md-12">
			<div class="card card-custom gutter-b example example-compact">
      <div class="card-header">
         <h3 class="card-title"> Details</h3>
	
		 </div>
		 <div class="card-body">
		  <div class="form-group">
		
		 <div class="jumbotron-sec marg dropzone pt-0" style="border: none;">
 <div class="form-horizontal">
 
	    <div class="col-md-6 col-xs-12">
		<div class="row">
			
  
 <form method="post" enctype="multipart/form-data" action="<?php echo site_url('category');?>">
   <div class="form-group pl-0">
      <label for="email">Parent Category</label>
	  </div>
	  <?php
	    
		  $AllCat= $this->ProductCategoryModal->GetAllCat($bid);?>
	  
	  
	 <div class="form-group pl-0">
      <select  class="form-control form-control-solid" id="catselect" name="Parent_cat" style="margin-top:0px;">
	  <option value="0" selected >--Root--</option>
	  <?php foreach($AllCat as $singlecat){
		  $cat_id_array[]=$singlecat['id'];
		 
		  ?>
	  <option value=<?php echo $singlecat['id'].',cat'; ?>><?php echo $singlecat['cat_name'];?></option>
	  <?php }?>
	    <option disabled > -----------------Sub Category-------------</option>
	   <?php  for($i=0;$i<count($cat_id_array);$i++){
              $AllSubCat= $this->ProductCategoryModal->GetAllSubCat($cat_id_array[$i]);
		  foreach($AllSubCat as $singlecat){
			    $sucat_id_array[]=$singlecat['id'];
			if(isset($singlecat['sub_cat_name'])){  ?>
	  <option value=<?php echo $singlecat['id'].',Subcat'; ?>><?php echo $singlecat['sub_cat_name'];?></option>
	   <?php } } }?>
	   <option disabled > ---------------Sub Sub Category-------------</option>
	   <?php for($i=0;$i<count($sucat_id_array);$i++){
		 $AllSuperSubCat= $this->ProductCategoryModal->GetAllSuperSubCat($sucat_id_array[$i]);
		 
		  foreach($AllSuperSubCat as $singleSupercat){

		if(isset($singleSupercat['name'])){	  ?>
	  <option disabled value=<?php echo $singleSupercat['id'].',super_sub_cat'; ?>><?php echo $singleSupercat['name'];?></option>
	   <?php }}  } ?>
	 
	  </select>
	  <label class="mt-3" style="color:red">Please Select Root If You Want To Add A New Product Category.</label>
    </div>


	
   <!----------------address-------------------------> 
   <div class="form-group pl-0">
      <label for="email">Name</label>
	    <input required type="Text" class="form-control form-control-solid"   name="name" style="margin-top:0px !important;">
	  </div>
	  
    
 
  
   

	 <div class="form-group">
	 <h4 style="border-bottom:1px solid #f4f4f4; padding-bottom:10px;">Add Image</h4>
	 </div>
   <div class="form-group">
      <label for="email">Upload</label>
	   <input required type="file" class="form-control form-control-solid"  placeholder="image" name="image" style="margin-top:0px !important;">
	   <input type="hidden" name="redirect" value="category" >
	  </div>
	 
     
   
	

	
			<div class="form-group">
					<input type="submit" name="nsert_cat" value="SAVE" class="btn btn-info">
			</div>
	
		</div>

   </div>
</div>
</div>
 </div>
</div>
  
  </div>
</div>
  </form>
</div>
</div>
 
<script>
$('.savename').click(function(){
	catid=$(this).val();
	cat_name=$('.'+catid+'input').val();
	
	$.ajax({
		url:"<?= base_url('')?>UpdateCatName",
		method:"POST",
		data:{'catid':catid,'catname':cat_name},
		success:function(data)
		{
		        alert(data);
				location.reload();
			
		}
	});
});

$('.change').click(function(){
id=$(this).attr('id');
$('#'+id+'basic').css('display','none');
$('#'+id+'new').css('display','block');
});


////confirmatiom-Of-Delete
			
	$('.newanchor').click(function(){
		var myId = $(this).attr('id');
		$("#deca").attr("href", myId);
	});
// change or delete cat image	
$('.changecatimage').click(function(){
		var myId = $(this).attr('id');
		$.ajax({
		url:"DeleteCatImages",
		method:"POST",
		data:{'catid':myId},
		success:function(data)
		{
		        if(data=="1")
				{
					$('.imagesec'+myId).css('display','none');
					$('.imageuploadsec'+myId).css('display','block');
				}
				
			
		}
	});
		
	});	
/**************************************
$('.ff').click(function(){
alert($(".imageinput").val());
   	 id=$('.helpincat').val();
    var formData = new FormData($('#imagecontainer'+id)[0]);	 
for (var pair of formData.entries()) {
    console.log(pair[0]+ ', ' + pair[1]); 
}
	
   	 
   
        $.ajax({
               type:'POST',
               url: "changeCatImage",
               data:formData,
               cache:false,
               contentType: false,
               processData: false,
               success:function(data){  
                  alert(data);
               },
               error: function(data){
                   console.log(data);
                   alert(data);
               }
           });
      
       
      });**/
</script>
