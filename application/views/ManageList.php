<?php error_reporting(0);
if(isset($_GET['listid']))
{
	$listid=$_GET['listid'];
}
 ?>
 
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
.fade.show{
	opacity: 1 !important;
}
</style>

<script src="http://tinymce.cachefly.net/4.0/tinymce.min.js"></script>

<script type="application/x-javascript">

tinymce.init({selector:'#spc0'});

</script>
 
<div class="container">


  <ul class="nav nav-tabs">
    <li id="man" class="<?php echo (isset($tab)) ? '': 'active'; ?>"><a data-toggle="tab" href="#home">Manage List Products</a></li>
    
    <li  class="<?php echo (isset($tab)) ? 'active': ''; ?>"><a data-toggle="tab" href="#menu1">Add List Products</a></li>
	<?php 
   $AllProMasterListData= $this->db->query("select * from dev_productlist where masterlist='1' order by `productlistname` ASC");
   $AllProList=$AllProMasterListData->result_array(); 
    $AllProNonMasterListData= $this->db->query("select * from dev_productlist where masterlist='0' order by `productlistname` ASC");
   $AllNonmasterList=$AllProNonMasterListData->result_array(); 
	?>
	<li><select id="alllist" style="height: calc(1.5em + 1.3rem + 2px);
    padding: 6px;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #e2e5ec;
    border-radius: 4px;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;margin-left:370px">
	<option value="0" selected>Select List To Copy</option>
	<?php 
	foreach($AllProList as $prodata)
	{ ?>
	<option value="<?php echo $prodata['id']; ?>"><?php echo $prodata['productlistname'];?></option>
	<?php
	}?>
	<option disabled>-----------------------</option>
	<?php
	foreach($AllNonmasterList as $prodata)
	{ ?>
	<option value="<?php echo $prodata['id']; ?>"><?php echo $prodata['productlistname'];?></option>
	<?php
	}
	?>
	</select> <span class="btn btn-info copy">Copy</span></li>
    
  </ul>
 
  <div class="tab-content">

    <div id="home" class="tab-pane <?php echo (isset($tab)) ? 'fade': 'active'; ?>">
	   <!--------------------------------------------Fillers section----------------------------------->
 
	<div class="row">
	<div class="col-lg-9">
		<div class="col-lg-4 cat">
			<div class="input-group md-form form-sm form-2 pl-0">
				<div class="input-icon">
				<input type="text" class="form-control" placeholder="Search..." id="searchinput" aria-label="Search">
				
				<span><i class="flaticon2-search-1 text-muted"></i></span>
																
				</div>
					 <!-- <div class="input-group-append">
						<span class="presssearch input-group-text red lighten-3" id="basic-text1"><i class="fas fa-search text-grey "
		  		aria-hidden="true"></i></span>
					  </div> -->
			</div>
		</div>
					<?php 
  
					  if(isset($_SESSION['Current_Business'])){ 
					  $bu_id=$_SESSION['Current_Business'];
					  }
					  else
					  {
						  $bu_id=$_SESSION['status']['business_id'];
					  }
					  $AllCat=$this->ProductCategoryModal->GetAllCat($bu_id);
					  $manufatureobj=$this->db->query("select Manufacture from dev_products where business_id='$bu_id'");
					  $manufaturearray=$manufatureobj->result_array();
					?>
		<div class="col-md-8 my-2 my-md-0">
			<div class="d-flex align-items-center">
	
				<select class="fillterselect form-control" id="categoryfillter" style="margin-right: 25px;">
					<option>Category</option>
					<?php foreach( $AllCat as $singe){?>
						<option value="<?php echo $singe['id'];?>"><?php echo $singe['cat_name'];?></option>
					<?php } ?>
				</select>
				<select class="fillterselect form-control" id="manufacturefillter">
					<option>Manufacture</option>
					<?php foreach( $manufaturearray as $singellist){?>
						<option value="<?php echo $singellist['Manufacture'];?>"><?php echo $singellist['Manufacture'];?></option>
					<?php } ?>
				</select>
				
			</div>
		</div>
		</div>
	</div>
<hr>
  <!---------------------------------------------------------------------------------------------->
       <h3>Manage List Products</h3>
     <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
	 <div class="manage_list_data">
  
  <table class="table background table-striped" id="all_list">
    <thead>
      <tr>
        <th>Image</th>
        <th>Product Title</th>
        <th>SKU</th>
		<th>Publish Status</th>
		<th>Delete</th>
		<th>Copy All <input type="checkbox" class="allchecked"></th>          
      </tr>
    </thead>
    <tbody id="listproducttbody">
	<?php
	
	$All_list_data= $this->db->query("select id,list_id from dev_products where 1");
	$All_list=$All_list_data->result_array();
	for($i=0;$i<count($All_list);$i++)
	{ 
		
		if(in_array($listid, json_decode($All_list[$i]['list_id'])))
		{
			$getproid=$All_list[$i]['id'];
			$SingleListObject=$this->db->query("select * from dev_products where id=$getproid");
			$single_Product_index=$SingleListObject->result_array();
		    $single_Product=$single_Product_index[0];
	       
	 
	?>
      <tr>
        <td><img width="50px" height="50px" src="<?php echo $single_Product['products_images'];?>"></img></td>
        <td> <?php echo $single_Product['title'];?></td>
        <td><?php echo $single_Product['SKU'];?></td>
		  
		<!-- <td>€<?php echo $single_Product['price'];?></td>-->
		 
		 <td><?php $publish_status=$single_Product['publish_status']; if($publish_status=='1'){echo "yes";}else{ echo "No";}?></td>
		 
		<!--<td><a href="<?php //echo site_url('Edit_single_product?id='.$single_Product['id']);?>"><i class="fa fa-pencil" aria-hidden="true"></i></a></td> -->
		
		<td><i class="fa fa-times-circle RemoveProductFromList" id="<?php echo $single_Product['id']; ?>" aria-hidden="true"></i></td>
		<td><input style="margin-left:55px;" type="checkbox" value="<?php echo $single_Product['id']; ?>" class="singlecheck"></td>
      </tr>      
	<?php } } ?>
    </tbody>
  </table>
    </div></div>

    <div id="menu1" class="tab-pane <?php echo (isset($tab)) ? 'active show in': 'fade'; ?>">
     <div class="container">

<?php $checkcat=$this->ProductCategoryModal->GetAllCat($bid); if($checkcat){ ?>
  <ul class="nav nav-tabs">
    <li class="<?php echo (isset($tab)) ? ($tab['sub']=="pd")? 'active' : '' : 'active'; ?>"><a data-toggle="tab" href="#pd">Product Details</a></li>
    <li class="disablealert disabled<?php //echo (isset($tab)) ? ($tab['sub']=="add_img")? 'active' : '' : ''; ?>"><a data-toggle="tab" href="#ai">Add Images</a></li>
    <li class="disablealert disabled<?php //echo (isset($tab)) ? ($tab['sub']=="sc")? 'active' : '' : ''; ?>"><a data-toggle="tab" href="#sc">Suppliers Cost</a></li>
	 <li class="disablealert disabled<?php //echo (isset($tab)) ? ($tab['sub']=="sp")? 'active' : '' : ''; ?>"><a data-toggle="tab" href="#sp">Specification</a></li>
	  <li class="disablealert disabled<?php //echo (isset($tab)) ? ($tab['sub']=="ao")? 'active' : '' : ''; ?>"><a data-toggle="tab" href="#ao">Add Option</a></li>
	   <li class="disablealert disabled<?php //echo (isset($tab)) ? ($tab['sub']=="pm")? 'active' : '' : ''; ?>"><a data-toggle="tab" href="#pm">PDF Manual</a></li>
	   <li class="li-file"><form id="sendcsvtoanotherfile" enctype="multipart/form-data" method="post" action="uploadcsvfilebyajax"><label>Import<input type="file" accept=".csv" id="importcsv" size="60" name="thisiscsv"></label></form><li>
	   <li class="li-file firstli" style="margin-left:10px"><span class="luckinimport btn btn-info">Lukins</span><li>
	   <li class="li-file secli" style="margin-left:10px;display:none"><i class="fa fa-spinner fa-spin" style="font-size:24px;color:red"></i><li>
  </ul>
 <!-----------------------------------------------Modal popup----------------------------------------->
 <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
 <!-----------------------------------------------close----------------------------------------------->
  <div class="tab-content">
    <div id="pd" class=" tab-pane <?php echo (isset($tab)) ? ($tab['sub']=="pd")? 'active' : '' : 'active'; ?>">
     
<div id="form">
<div class="container">

	 <?php 
   if($this->session->flashdata('successdetails')){
 ?>
   <div class="alert alert-success"> 
     <?php  echo $this->session->flashdata('successdetails'); ?>
	 </div>
<?php  
   }  
if($this->session->flashdata('failed')){
?>
 <div class = "alert alert-success">
   <?php echo $this->session->flashdata('faileddetails'); ?>
 </div>
<?php } ?>
	    <div class="row">
		
	    <div class="col-md-6 col-xs-12 back ">
	 <h2>Product  Details</h2>
	
  <form  id="product_form" enctype="multipart/form-data" method="post" action="<?php echo site_url('products');?>">
	 <div class="marg product-form">

  <div class="form-horizontal">
  
  <div class="form-group ">
      <label required class="control-label col-sm-4" for="name">Manufactured By</label>
	
	  <div class="col-md-8">
       <input  type="text" class="form-control"  placeholder="" value="<?= isset($_POST['Manufacture'])? $_POST['Manufacture']: '';?>" name="Manufacture">
    </div>
	  </div>
  <!-------------------------------------hidden list id ------------------------------------->
  <input  type="hidden" class="form-control"  value="<?= isset($_GET['listid'])? $_GET['listid']: '';?>" name="listid">
  <!----------------------------------------------------------------------------------------->
    <div class="form-group ">
      <label required class="control-label col-sm-4" for="name">Product Code</label>
	
	  <div class="col-md-8">
       <input required type="text" class="form-control"  placeholder="" value="<?= isset($_POST['name'])? $_POST['name']: '';?>" name="name">
    </div>
	  </div>
	   <div class="form-group ">
      <label class="control-label col-sm-4" for="name">Title</label>
	
	  <div class="col-md-8">
       <input required type="text" class="form-control"  placeholder="" value="<?= isset($_POST['title'])? $_POST['title']: '';?>" name="title">
    </div>
	  </div>
  
 
 <div class="form-group ">
      <label class="control-label col-sm-4" for="name">SKU</label>
	
	  <div class="col-md-8">
       <input required type="text" class="form-control"  placeholder="" value="<?= isset($_POST['SKU'])? $_POST['SKU']: '';?>" name="SKU">
    </div>
	  </div>
	  
	 
	  
   <!----------------SKU------------------------->   
 
 <div class="form-group ">
      <label class="control-label col-sm-4" for="name">Description</label>
	
	  <div class="col-md-8">
      <textarea required type="text" class="form-control"  name="Description"><?= isset($_POST['Description'])? $_POST['Description']: '';?></textarea>
    </div>
	  </div>
    <!-- <div class="form-group ">
      <label class="control-label col-sm-4" for="name">Price</label>
	
	  <div class="col-md-8">
       <input type="text" class="form-control"  placeholder="" name="price">
    </div>
	  </div>  -->
	   <div class="form-group">
      <label class="control-label col-sm-4" for="name">VAT Deductable</label>
	
	  <div class="col-md-8">
	  
      Yes<input <?php if(isset($_POST['deduct'])){ if($_POST['deduct']=='1'){?> checked <?php }  } ?> type="radio" class="tax_class" value="1" name="deduct">
      No<input checked <?php if(isset($_POST['deduct'])){ if($_POST['deduct']=='0'){?>checked <?php }  } ?>  type="radio"  class="tax_class" value="0"  name="deduct">
    </div>
	  </div>
<div class="form-group">
      <label class="control-label col-sm-4" for="name">Price Ex VAT</label>
	
	  <div class="col-md-8">
  <input required type="text" class="form-control"  placeholder="" value="<?= isset($_POST['Description'])? $_POST['Price_ex_VAT']: '';?>" name="Price_ex_VAT" id="pexvat" >
    </div>
	  </div>

 <div class="form-group ">
      <label class="control-label col-sm-4" for="name">Price INC VAT</label>
	
	  <div class="col-md-8">
    <input readonly type="text" class="form-control" placeholder="" value="<?= isset($_POST['Description'])? $_POST['Price_INC_VAT']: '';?>" name="Price_INC_VAT" id="pincvat">
    </div>
	  </div>
     

 
 <div class="form-group" id="tax_class">
      <label class="control-label col-sm-4" for="name">Tax Class</label>
	
	  <div class="col-md-8" >
    <select name="tax" id="taxrate">
	<option value='' selected disabled>--Selected--</option>
	<option value='5'  <?php if(isset($_POST['tax'])){ if($_POST['tax']=='5'){?> selected <?php }  } ?>>5%</option>
	<option <?php if(isset($_POST['tax'])){ if($_POST['tax']=='10'){?> selected <?php }  } ?> value='10' >10%</option>
	<option <?php if(isset($_POST['tax'])){ if($_POST['tax']=='20'){?> selected <?php }  } ?>selected value='20' >20%</option>
	</select>
    </div>
	  </div>
	
	 <!----------------Tax ------------------------->   

 <div class="form-group">
      <label class="control-label col-sm-4" for="name">Publish</label>
	
	  <div class="col-md-8">
          Yes<input <?php if(isset($_POST['pub'])){ if($_POST['pub']=='1'){?> checked <?php }  } ?> selected  type="radio" value="1" name="pub">
      No<input checked <?php if(isset($_POST['pub'])){ if($_POST['pub']=='0'){?> checked <?php }  } ?> type="radio"  value="0" name="pub">
    </div>
	  </div>
  
      </div>
	  </div>
 
</div>

	    <div class="col-md-6 col-xs-12 " id="form">
	 <h2>Category</h2>

   <div class="marg product-form">

  <div class="form-horizontal">
  
  
  <!------------Get All  category------------->
  <?php 
  
  if(isset($_SESSION['Current_Business'])){ 
  $bu_id=$_SESSION['Current_Business'];
  }
  else
  {
	  $bu_id=$_SESSION['status']['business_id'];
  }
  $AllCat=$this->ProductCategoryModal->GetAllCat($bu_id);
  ?>
   <div class="form-group">
      <label class="control-label col-sm-4" for="name">Mian Category</label>
	  <div class="col-md-8">
 <select class="form-control"  name="Category" id="maincat" >
  <option value="" selected disabled>--Select--</option>
 <?php foreach($AllCat as $All){?>
 <option  <?php if(isset($_POST['Category'])){ if($_POST['Category']==$All['id']){?> selected <?php }  } ?> value=<?php echo $All['id']; ?>><?php echo $All['cat_name']; ?></option>
 <?php } ?>
 </select>
    </div>
	  </div>
   <!-------->
  
  
   
   <div class="form-group">
      <label class="control-label col-sm-4" for="name">Sub Category</label>
	
	  <div class="col-md-8">
      <select class="form-control"  name="Sub_Category" id="subcat">
	  <option  value="" selected disabled>--Select--</option>
 
 </select>
    </div>
	  </div>
	
   <div class="form-group">
      <label class="control-label col-sm-4" for="name" id="supersubcat">Sub_Sub_Category</label>
	
	  <div class="col-md-8">
	  <?php $AllSuperSubCat=$this->ProductCategoryModal->GetAllSuperSubCat(0);?>
  <select class="form-control"  name="Sub_Sub_Category" id="subsubcat">
   <option value="" selected disabled>--Select--</option>
 </select>
    </div>
	  </div>
	  
 
</div>

<button class="btn btn-info" <?PHP if(isset($_POST['AddGernelDetails'])){ if($_POST['deduct']=='0'){ ?>style="display:none"<?PHP  } } ?> name="AddGernelDetails" >ADD PRODUCT</button>
</div>
</div>
   
	</div>
</div>

</div>

</form>
   </div>
    

    </div><?php }else{?><span style="color:red";>Please Add A Category First.</span><?php } ?>
   
  
</div>
</div>
</div>
</div>
<script>
$(document).ready(function(){
	l=1;
	$('#add_supplier').click(function(){
$('#single_row').append('<div class="col-md-6 col-xs-12  "><div class="form-group "><label class="col-md-3 control-label" for="address">Supplier</label><div class="col-md-9   "> <select class="form-control" id="supp'+l+'" name="supp'+l+'"><option value="0">Select</option><?php foreach($All_Supplier as $single){?><option value=<?php echo $single['id'];?>><?php echo $single['suppliers_name'];?></option><?php } ?></select></div></div></div><div class="col-md-6 col-xs-12 " id="form"><div class="form-group"><label class="col-md-3 control-label"  for="name">Cost</label><div class="col-md-9"> <input id="suppcost'+l+'" name="suppcost'+l+'" type="text" class="form-control" ></div> </div></div>');

l++;
});
j=1;
$('#Add_specifictaion').click(function(){
	$('.addnewsp').append('<div class="form-horizontal"><div class="row row3"><label class="col-md-3 control-label spc'+j+'" >Description</label><div class="col-md-5 "><textarea  class="form-control" id="spc'+j+'" name="spc'+j+'" " ></textarea></div><div class="form-group col-md-4"><div class="col-md-9 offset-md-3"><span class="btn btn-info rem" id="'+j+'">REMOVE</span></div></div></div></div>');
	
	j++;
	jQuery('.rem').click(function(){
	id=$(this).attr('id');
	$("#"+'spc'+id).remove();
	$("."+'spc'+id).remove();
	$("#"+id).remove();
	
});
});
allvalue=new Array();
allsuplierid_cost=new Array();
$('#Addspecbyajax').click(function(){       //add spcification
	for(i=0;i<j;i++){
	allvalue[i]=$("#"+'spc'+i).val();
	}
	 $("#"+'spc0').val(allvalue);
	 $('#specification_form').submit();
});
$('#Addsuppliersbyajax').click(function(){        //add supplier
     for(k=0;k<l;k++){
	allsuplierid_cost[k]=$("#"+'supp'+k).val()+'=>'+$("#"+'suppcost'+k).val();
	                }
	 $("#hidsuppli").val(allsuplierid_cost);
	 $('#supplier_form').submit();
       });

$('#addoption').click(function(){
	var placeholder=$('#placeholder_name').val();
	var varname=$('#var_name').val();
	if(placeholder!=''&&varname!=''){
	$.ajax({
		url:"<?= base_url('')?>AddProductVariation",
		method:"GET",
		data:{'placeholder':placeholder,'varname':varname},
		success:function(data){
		     alert(data);
			$('#var_name').val('');
			$('#placeholder_name').val('');
			$.ajax({
		url:"<?= base_url('')?>ViewProductVariation",
		success:function(data){
			$('#vartionMessage').text('Please Go To Edit Product To Add Variation For The Options');
			$('.newrow').empty();
		   	decodeddata=JSON.parse(data);
			objlen=decodeddata.length;
			for(i=0;i<objlen;i++)
			{
				id=decodeddata[i].id;
				product_id=decodeddata[i].product_id;
				name=decodeddata[i].option_name;
				plaseholder=decodeddata[i].plaseholder	;
			
			$('#Variation_row').after("<tr class='newrow'><td>+</td><td>"+name+"</td><td>"+plaseholder+"</td><td><a href=deletevariationoption?optionid="+id+"&&product="+product_id+"><i class='fa fa-times-circle' aria-hidden='true'></i></a></td></tr>");
			
			} 
			
		}
	});
			
		}
	});
	}
	else
	{
	alert('Please Enter NAme And Placeholder');
	}
});

	
	$('#subcat').change(function(){
		$sub_cat_id=$(this).val();
		$.ajax({
		url:"<?= base_url('')?>getsupersubcatbyajax",
		method:"GET",
		data:{'subcat':$sub_cat_id},
		success:function(data){
			  $('#subsubcat').empty();
			  $('#subsubcat').append('<option value="" selected >--Select--</option>'); 
			 data=JSON.parse(data);
			 
			 objlen=data.length;
			for(i=0;i<objlen;i++)
			{
			 
			$('#subsubcat').append('<option value="'+data[i].id+'" selected="selected">'+data[i].name+'</option>'); 
			}  
		  
			
		}
	});
		
	});
	$('#maincat').change(function(){
		maincatinbox=$('#maincat option:selected').attr('data-label');
		
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
	

$('#tax_class').css('display','none');
$('.tax_class').change(function(){
	var val=$(this).val();
	if(val=='1')
	{
		$('#tax_class').css('display','block');
		
	}
	else
	{
		$('#tax_class').css('display','none');
		var val=$('#pexvat').val();
	vat=parseFloat(val)*20/100;
	val=parseFloat(val)+parseFloat(vat);
    $('#pincvat').val(val.toFixed(2));
	}
	
	
});
parsent=20;
	$('#taxrate').change(function(){
	parsent=$(this).val();	
	var val=$('#pexvat').val();
	vat=parseFloat(val)*parsent/100;
	val=parseFloat(val)+parseFloat(vat);
    $('#pincvat').val(val.toFixed(2));
	});
$('#pexvat').blur(function(){
	var val=$(this).val();
	vat=parseFloat(val)*parsent/100;
	
	val=parseFloat(val)+parseFloat(vat);
$('#pincvat').val(val.toFixed(2));

});

$('#man').click(function(){
	$('#menu1').addClass('fade');
});

});
  function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#profile-img-tag').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
	function readURL2(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#profile-img-tag2').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#img_1").change(function(){
        readURL(this);
    });
	 $("#img_2").change(function(){
        readURL2(this);
    });
   $('#upimage').click(function(){
	 
 var form_data = new FormData($('#product_form_image')[0]);;	 
     $.ajax({
            type:'POST',
            url: "<?= base_url('')?>uploadimagebyajax",
            data:form_data,
            cache:false,
            contentType: false,
            processData: false,
            success:function(data){
               alert(data);
            },
            error: function(data){
                console.log("error");
                alert(data);
            }
        });
   });
   //Disbled tabs alert
   $('.disablealert').click(function(){
	  alert('Please Add Product Details First'); 
   });
   //import csv
   $('#importcsv').change(function(){
	 $('#sendcsvtoanotherfile').submit();  
      
   });
   //luckin import from curl productcontroller
   $('.luckinimport').click(function(){
	   
	    var press=confirm("This Action Import Data From Luckins For The Products Which Have A Correct Tsi Code In The Database <br> Do You Want To Perform This Action ?");
		
		if(press)
		{
			$('.firstli').css('display','none');
			$('.secli').css('display','block');
			$.ajax({
				type:"POST",
				url:"<?= base_url('')?>FetchingDataFromLuckins",
				success:function(data)
				{
					$('.secli').css('display','none');
					$('.firstli').css('display','block');
					alert(data);
				}
			}); 
		}
   });
   
   /*******************************************new copy jquery*******************************************/
   $('.allchecked').change(function(){
	   if(this.checked) 
		{
			$('.singlecheck').prop('checked',true); 
			
		}
		else
		{
			$('.singlecheck').prop('checked',false); 
		}
	  
   });
   $('.copy').click(function()
   {
			listid=$('#alllist').val();
			
			if(listid!='0')
			{
				AllOrdersid=document.getElementsByClassName('singlecheck');
				$lenth= AllOrdersid.length;
				for($i=0;$i<$lenth;$i++)
				{
					if(AllOrdersid[$i].checked)
					{
					$chekedid=AllOrdersid[$i].value;
					$.ajax({
					   url:"<?= base_url('')?>GetListAndProduct",
					   type:"post",
					   data:{'product_id':$chekedid,'list_id':listid} 
					  
						});
					}
				}
			  alert("Copy Successfully ");
			}
   });
   	// Remove product from a list
	
	$('.RemoveProductFromList').click(function()
	{
		result=confirm("Press ok if you want to remove this prosuct from this list");
		if(result)
		{
		product=$(this).attr('id');
		listid=<?php echo $_GET['listid'];?>;
		$.ajax({
			   url:"<?= base_url('')?>RemoveListFromAProduct",
			   type:"post",
			   data:{'product':product,'list':listid},
               success:function(data){
				   location.reload();
			   }			   
			  
			 });
		}
		
	});
	/**************************fillters script on change category and manufactures****************************/
	

 jQuery('.fillterselect').change(function(){
	  $type=$(this).attr('id');
	  if($type=='categoryfillter')
	  {
		   mode=1;
	  }
	  if($type=='manufacturefillter')
	  {
		 mode=2;  
	  }
	  catid=$(this).val(); 
	  list_id=<?php echo $_GET['listid']; ?>;
	   $("#listproducttbody").empty();
	   jQuery.ajax({
		
		url:"<?= base_url('')?>ApplyCatFillterOnListProduct",
		method:"POST",
		data:{'cat_id': catid,'list_id':list_id,'type':mode},
		success:function(d){
			if(d)
			{
			var status;
			 obj=jQuery.parseJSON(d);
			
			  length=obj.length;
			  
			       
		for(i=0;i<=length-1;i++){
			
      var $row = $('<tr>'+
      '<td><img src='+obj[i].products_images+' style="width:50px;height50px;"></td>'+
      '<td>'+obj[i].title+'</td>'+
      '<td>'+obj[i].SKU+'</td>'+
	   '<td>'+obj[i].publish_status+'</td>'+
	    '<td><i class="fa fa-times-circle RemoveProductFromList" id='+obj[i].id+' aria-hidden="true"></i></td>'+	
		 '<td><input style="margin-left:55px;" type="checkbox" value='+obj[i].id+' class="singlecheck"></td>'+
		  
		   
      '</tr>');    
if(obj.Type=='Error') {
    $row.append('<td>'+ obj.ErrorCode+'</td>');
}

$('#all_list').append($row);
 		} 
		 
		}
	} //check json data is coming or not		 
			 
 }); 
	 
 });
 /**************************fillters script on click category and manufactures****************************/
	

 jQuery('.presssearch').click(function(){
	 
	  catid=$('#searchinput').val(); 
	
	  list_id=<?php echo $_GET['listid']; ?>;
	   $("#listproducttbody").empty();
	   jQuery.ajax({
		
		url:"<?= base_url('')?>ApplyCatFillterOnListProduct",
		method:"POST",
		data:{'cat_id': catid,'list_id':list_id,'type':'3'},
		success:function(d){
			
			if(d)
			{     
			var status;
			 obj=jQuery.parseJSON(d);
			
			  length=obj.length;
			  
			       
		for(i=0;i<=length-1;i++){
			
      var $row = $('<tr>'+
      '<td><img src='+obj[i].products_images+' style="width:50px;height50px;"></td>'+
      '<td>'+obj[i].title+'</td>'+
      '<td>'+obj[i].SKU+'</td>'+
	   '<td>'+obj[i].publish_status+'</td>'+
	    '<td><i class="fa fa-times-circle RemoveProductFromList" id='+obj[i].id+' aria-hidden="true"></i></td>'+	
		 '<td><input style="margin-left:55px;" type="checkbox" value='+obj[i].id+' class="singlecheck"></td>'+
		  
		   
      '</tr>');    
if(obj.Type=='Error') {
    $row.append('<td>'+ obj.ErrorCode+'</td>');
}

$('#all_list').append($row);
 		} 
		 
		}
	} //check json data is coming or not		 
			 
 }); 
	 
 });
 
     	
</script>

