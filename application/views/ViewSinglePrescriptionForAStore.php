<?php
	error_reporting(0); 
	if(isset($data) && isset($userid))
	{ 
 ?>	

<link href="<?php base_url()?>//assets/css/demo1/style.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style>
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
div#menu1 .subtot h3 {
    text-align: left;
    text-transform: capitalize;
    margin-bottom: 15px;
	font-size: 16px;
	display: flex;
	justify-content: space-between;
}
.subtot h3:nth-of-type(3) {
    border-top: 1px solid black;
    border-bottom: 1px solid black;
    padding: 10px 0px;
}
@media print{a[href]:after{content:none;}
}
@media print {
    /* Hide everything in the body when printing... */
    .mainpage{ display: none; }
	 #kt_subheader{ display: none !important;}
   #kt_header{ display: none !important;}
   #kt_aside{ display: none !important;}
    /* ...except our special div. */
    body.printing #DivIdToPrint { display: block; }
}

@media screen {
    /* Hide the special layer from the screen. */
    #DivIdToPrint { display: none; }
	/*  #kt_subheader{ display: none !important;}
   #kt_header{ display: none !important;}
   #kt_aside{ display: none !important;} */
}</style>
<div class="container mainpage">


  <div class="tab-content" id="outprint">
    
    <div id="menu1" class="tab-pane active">
	<div class="row align-items-center">
	 <div class="col-sm-1">
	<span style="color: #3F4254;font-size: 14px !important;
    font-family: Arial !important;font-weight: bold;">Prescription</span>
	
		</div>
		<div class="col-sm-4 order-dec-sec">
		<!--<span style="width:200px;color: #3F4254;font-size: 14px !important;font-family: Arial !important;margin-left:60px;font-weight: bold;"><span class="">Order Description</span> :<?php echo $select_single_order_query[0]['order_desc'];?></span>-->
		</div>
		<div class="col-sm-4">
	
	<span style="color: #3F4254;font-size: 14px !important;
    font-family: Arial !important;margin-left:60px;font-weight: bold;">Date : <?php echo $data['created_at'];?></span>
	</div>
	<div class="col-sm-3 text-center">
	<button id='btn' value='Print' class="btn btn-info printMe" >PRINT THIS ORDER</button>
	</div>
	</div>
	<hr>
          <div class="manage_table_data">
  
  <table class="table table-striped">
    <thead>
      <tr>
	    <th>code</th>
        <th>prescription </th>
        <th>Image</th>
		<th>group_name</th>
		<th>Price</th>
		
		<!--<th>Edit</th>
		<th>Delete</th>-->
      </tr>
    </thead>
    <tbody>
	
   <tr>
		<td ><?php echo $data['code']; ?></td>
		<td><?php echo $data['prescription']; ?></td>
		<td><img style="width:30px;height:30px" src="<?php echo $data['image_file']; ?>" ></td>
		<td><?php echo $data['group_name']; ?></td>
		<td><?php echo $data['price']; ?></td>
  </tr>      
	
	
    </tbody>
  </table>
 
</div>

<hr>

<div class="row">
<div class="col-sm-7">
<!--<div class="save_btn btn_sec2" ><button  data-toggle="modal" data-target="#ordermodal" type="button" class="btn btn-default">MORE DETAILS</button></div>-->


<div class="form-group row">
  <label class="col-3 col-form-label">Accept</label>
  <div class="col-3">
   <span class="switch switch-outline switch-icon switch-success">
    <label>
     <input type="checkbox" class="changeStaus"  name="1"/>
     <span></span>
    </label>
   </span>
  </div>
 </div>
 <div class="form-group row">
  <label class="col-3 col-form-label">In Progress</label>
  <div class="col-3">
   <span class="switch switch-outline switch-icon switch-warning">
    <label>
     <input type="checkbox" class="changeStaus"  name="3"/>
     <span></span>
    </label>
   </span>
  </div>
 </div>
 <div class="form-group row">
  <label class="col-3 col-form-label">Ready</label>
  <div class="col-3">
   <span class="switch switch-outline switch-icon switch-danger">
    <label>
     <input type="checkbox" class="changeStaus"  name="4"/>
     <span></span>
    </label>
   </span>
  </div>
 </div>
 <div class="form-group row">
  <label class="col-3 col-form-label">Delevered</label>
  <div class="col-3">
   <span class="switch switch-outline switch-icon switch-dark">
    <label>
     <input type="checkbox" class="changeStaus"  name="5"/>
     <span></span>
    </label>
   </span>
  </div>
 </div>
 
 
</div>
</div>

</div>

</div>

  
</div>
<script>
$('.changeStaus').change(function(){
		name=$(this).attr('name');
		if($(this).prop("checked") == true)
			{
                       $.ajax({
							url:"https://localhost/dashboard/ChangeStatusByStore",
							method:"post",
							data:{'PrescriptionId':<?php echo $data['id'];?> ,'name':name,'IsThisTrueOrFlaseRightNow':true},
							success:function(data)
							{
								alert(data);
								
								
								
								
							}
						});
            }
            else if($(this).prop("checked") == false){
                alert("Checkbox is unchecked.");
            }
});



</script>
	<?php } ?>