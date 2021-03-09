<?php error_reporting(0);
   
    if(isset($_SESSION['Current_Business'])){
		$bid=$_SESSION['Current_Business'];
	//$All_Cetalogues=$this->CetaloguesModels->ViewCatelog($bid);
	$sectionobj=$this->db->query("select * from dev_cetalog_section where business_id='$bid'");
//	$catobj=$this->db->query("select * from dev_cetalog_cat where business_id='$bid'");
	
 }else
 {
	 $bid=$_SESSION['status']['business_id'];
	//$All_Cetalogues=$this->CetaloguesModels->ViewCatelog($bid); 
	$sectionobj=$this->db->query("select * from dev_cetalog_section where business_id='$bid'");
//$catobj=$this->db->query("select * from dev_cetalog_cat where business_id='$bid'");
	
 }
  $scearray= $sectionobj->result_array();
//  $catarray=$catobj->result_array();
?>


<div class="container">
  <ul class="nav nav-tabs">
  
    <li class="active" ><a data-toggle="tab" href="#Addsection">Add Sections</a></li>
	 <li><a data-toggle="tab" href="#Managesection">Manage Sections</a></li> 
    <li><a data-toggle="tab" href="#addcatalog">Add Catalogues</a></li> 
	<li><a data-toggle="tab" href="#managecatalog">Manage Catalogues</a></li> 	
  </ul>
 <div class="tab-content">
 
 <div id="Addsection" class="tab-pane active background">
     
  <div class="row">
	    <div class="col-md-12">
	   <div class="card card-custom gutter-b example example-compact">
<div class="card-header">
         <h3 class="card-title">Add Section</h3>
	
		 </div>
		 <div class="card-body">
	<div class="form-group dropzone mb-0" style="border: none;">
 <div class="jumbotron-sec marg ">

  <div class="form-horizontal">
    <div class="form-group">
           
              <form  enctype="Multipart/form-data" method="post" action="<?php echo site_url('Newcatalogcontroller/add_section');?>">
			 
				  
							   <div class="form-group ">
								  <div>Section Name</div>
								 
									<input type="text" name="section" placeholder="Section Name" class="col-md-6 form-control form-control-solid mt-5">
									<input type="hidden" name="bid" value="<?php echo $bid;?>">
								 
								</div>
				  
				  
							<div class="form-group ">
								  <div>Cover Image</div>
								
									<input type="file" name="cover" class="mt-5">
								
							</div> 
				  
				   
					   <div class="form-group ">
								<input type="submit" name="addsec" Value="Add Section" class="btn btn-info">
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
 <!----------------------------------manage section------------------------------------->
 <div id="Managesection" class="tab-pane   background">
  <div class="row">
	    <div class="col-md-12">
	   <div class="card card-custom gutter-b example example-compact">
<div class="card-header">
         <h3 class="card-title">Manage Section</h3>
	
		 </div>
		 <div class="card-body">
	<div class="form-group dropzone mb-0" style="border: none;">
 <div class="jumbotron-sec marg ">

  <div class="form-horizontal">
    <div class="form-group">
 
      
	 <table class="table table-striped">
    <thead>
      <tr>
	    <th>ID</th>
        <th>Section</th>
       
		<th>Cover</th>
		<th>Edit</th>
		<th>Delete</th> 
      </tr>
    </thead>
    <tbody>
  <?php foreach( $scearray as $sec){ 
	  ?>
	    <tr>
		<td><?php $id = $sec['id']; echo $sec['id'];?></td>
		<td><?php echo $sec['section_name'];?></td>
		<td><img src="<?php echo $sec['cover_image'];?>" style="width:100px;height:100px;"></td>
		<td><a href="<?php echo site_url('EditNewCatalogSection?id='.$id); ?>"><i style="color:#5867dd" class="fa fa-pencil" aria-hidden="true"></i></a></td>
		<td><a href="#" class="newanchor " id="<?php echo site_url('DeleteNewCatalogSection?id='.$id); ?>" data-toggle="modal" data-target="#myConModal" ><i class="fa fa-times-circle" aria-hidden="true"></a></i></td>		
		</tr>
	  <?php
  }?>
	    </tbody>
  </table>
 </div>
  </div>
   </div>
    </div>
	 </div>
	  </div>
	   </div>
	    </div>
		 </div>
 <!-----------------------------add catalog and view------------------------------------>
    <div id="addcatalog" class="tab-pane   background">
	  <div class="row">
       <div class="col-md-12">
<div class="card card-custom gutter-b example example-compact">
<div class="card-header">
         <h3 class="card-title">Add Catalogues</h3>
	
		 </div>
		 <div class="card-body">
	<div class="form-group dropzone mb-0" style="border: none;">
 <div class="jumbotron-sec marg ">

  <div class="form-horizontal">
    <div class="form-group">
              <form enctype="multipart/form-data" method="post" action="<?php echo site_url('Newcatalogcontroller/newCetalogues');?>">
			
					 <div class="form-group ">
					  <div>
							Select Section
					  </div>
					  <div>
							<select name="sectionid" class="col-md-6 form-control form-control-solid mt-5">
							<option value="0">-----Select------</option>
							<?php foreach($scearray as $sec)
							{ ?>
							<option value="<?php echo $sec['id'];?>"><?php echo $sec['section_name'];?></option>
							<?php  } ?>
							</select>
					  </div>
				 </div>
			 
			  <div class="form-group ">
				 
					  <div>
							Description
					  </div>
					  <div>
							<textarea name="description" class="col-md-6 form-control form-control-solid mt-5"></textarea>
					  </div>
				 
			  </div>
			  
			     
                    <div class="form-group">
						<div>
								Upload Catalogue
						</div>
						<div>
								<input type="file" name="pdffile" required class="mt-5">
						</div>
                    </div>
			   
				<div class="form-group">
                   
	     				<input class="btn btn-info" type="submit" value="Upload Catalogue" name="uploadpdf">
					
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
	<!----------------------------------manage catalog------------------------------------->
 <div id="managecatalog" class="tab-pane  background">
				  <div class="row">
	    <div class="col-md-12">
	   <div class="card card-custom gutter-b example example-compact">
<div class="card-header">
         <h3 class="card-title">Manage Catalogues</h3>
	
		 </div>
		 <div class="card-body">
	<div class="form-group dropzone mb-0" style="border: none;">
 <div class="jumbotron-sec marg ">

  <div class="form-horizontal">
  

                    <div class="form-group">
						<div>
								Select Section
						</div>
						<div>
							<select name="catalogsectionid" class="col-md-6 form-control form-control-solid mt-5" id="SelectSectionForCatalog">
								<option value="0">-----Select------</option>
								<?php foreach($scearray as $sec)
								{ ?>
								<option value="<?php echo $sec['id'];?>"><?php echo $sec['section_name'];?></option>
								<?php  } ?>
							</select>	
						</div>
                    
			    </div>
				  
		<!----------------------------- showing catalog section------------------------------------>
	  <div class="row addepter">
	  
	  </div>
   
 
 
 </div>
  </div>
   </div>
    </div>
	 </div>
	  </div>
  </div>
  
</div>



<!--::js""-->
<script>
jQuery('#SelectSectionForCatalog').change(function(){
	  jQuery(".addepter").empty();
      selctvalue = jQuery(this).val();
	  
	  
      jQuery.ajax({
          url:"<?= base_url('')?>newcatalogcontroller/ShowCatalogBySection",
          method:"post",
          data:{'selectedid':selctvalue},
          success:function(data)
          {
			  
			  if(data!='0')
			  {
				  
				  parseddata = JSON.parse(data);
				  
				   if(parseddata.length)
				  {
					  for(i=0;i<parseddata.length;i++)
					  {
						  
						  url=parseddata[i]['url'];
						  id = parseddata[i]['id'];
						  jQuery(".addepter").append("<div class='col-sm-3 imgbox'><img src='"+url+"' style='width:100px;height:100px'><i class='fa fa-times deleteicon' id='"+id+"' aria-hidden='true'></i></div>");
						  
						
					}   
						jQuery(".deleteicon").click(function(){

							id = $(this).attr('id');
							jQuery.ajax({
							  url:"<?= base_url('')?>newcatalogcontroller/DeleteCateLougesImg",
							  method:"post",
							  data:{'id':id},
							  success:function(data)
							  {
								  console.log('delete sucessfully');
							  }
							 	
							});	
							jQuery(this).parent('.imgbox').remove();  
						});			  
				}
				  
			  }
			  else
			  {
				  alert('Select a section');
			  }
          }
      })
});

//confirmatiom-Of-Delete

$('.newanchor').click(function(){
		var myIdd = $(this).attr('id');
		$("#deca").attr("href", myIdd);
	});

</script>
