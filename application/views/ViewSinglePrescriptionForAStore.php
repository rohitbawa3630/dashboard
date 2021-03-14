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
     <input type="checkbox" class="changeStaus"  id="2" name="2" <?php if($currentStatus>1){ ?> checked <?php } ?> />
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
     <input type="checkbox" class="changeStaus"  id="3" name="3" <?php if($currentStatus>2){ ?> checked <?php } ?>/>
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
     <input type="checkbox"  class="changeStaus"  id="4"  name="4" <?php if($currentStatus>3){ ?> checked <?php } ?>/>
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
     <input type="checkbox"  class="changeStaus"  id="5" name="5" <?php if($currentStatus>4){ ?> checked <?php } ?>/>
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
$(document).ready(function(){
	
			function DisableOrNotPositive(currentid,nextid)
			{
				if($('#'+currentid).prop("checked")==true)
				{
					previous=parseInt(currentid)-1;
					$('#'+previous).attr("disabled", true);
					$("#"+nextid).attr("disabled", false);
				}
				else
				{
					previous=parseInt(currentid)+1;
					
					$('#'+nextid).attr("disabled", false);
					$('#'+previous).attr("disabled", true);
					//currentid
					//$("#"+nextid).attr("disabled", true);
				}
			}
			
			
	
	$('.changeStaus').change(function(){
		
		 if($(this).attr('id')=='2' && $(this).prop("checked") == false)
		 {
			 $('.changeStaus').attr("disabled", true);
			 $(this).attr("disabled", false);
		 }
		
		name=$(this).attr('name');
		if($(this).prop("checked") == true)
			{
						currentid=$(this).attr('id');
						nextid=parseInt(currentid)+1;
						DisableOrNotPositive(currentid,nextid);  // call function
                       $.ajax({
							url:"/dashboard/ChangeStatusByStore",
							method:"post",
							data:{'PrescriptionId':<?php echo $data['id'];?> ,'name':name,'IsThisTrueOrFlaseRightNow':1},
							success:function(data)
							{
								alert(data);
								
								
								
								
							}
						});
            }
            else if($(this).prop("checked") == false)
			{
				currentid=$(this).attr('id');
				nextid=parseInt(currentid)-1;
				alert(nextid);
				 DisableOrNotPositive(currentid,nextid); // call function
               
				$.ajax({
							url:"/dashboard/ChangeStatusByStore",
							method:"post",
							data:{'PrescriptionId':<?php echo $data['id'];?> ,'name':name,'IsThisTrueOrFlaseRightNow':0},
							success:function(data)
							{
								alert(data);
								
								
								
								
							}
						});
            }
			
			// change status and validate
			
			
});

	$(".changeStaus").each(function()
	{                             
		if($(this).prop("checked") == true)
		{  /// first unselect
				 firsetselct=$(this).attr('id');
				 	 
		}
		
		
	});
		for(i=2;i<firsetselct;i++)
		{
			$('#'+i).attr("disabled", true);
		}
		furtherUnselct=parseInt(firsetselct)+2;
		
		for(i=furtherUnselct;i<=5;i++)
		{
			$('#'+i).attr("disabled", true);
		}
			//DisableOrNot();
});




</script>
	<?php } ?>