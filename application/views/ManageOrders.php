<?php
	error_reporting(0); 
	$editid=$_GET['id'];
	$obj=$this->db->query("select * from  prescriptions  where id=$editid");
	$dataArray=$obj->result_array();
	$data=$dataArray[0];
	if(isset($_SESSION['status']))
	{
		$user_id=$_SESSION['status']['user_id'];
	}
	else
	{
		$user_id=0;
	}
	$where_array=array('Prescription_id'=>$editid,'store_id'=>$user_id,'status'=>2);
	$this->db->select('*');
	$this->db->from('prescription_details');
	$query = $this->db->where($where_array); 
	$isexcept=$query->get()->result_id->num_rows;
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
		<td><img style="width:30px;height:30px" src="http://15.206.100.247/helloapp/public/images/docs/<?php echo $data['image_file']; ?>" ></td>
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

<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Accept</button>

</div>
</div>

</div>

</div>
<!-------------------------------------------------------Modal------------------------------------------------->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          <p>Enter Price</p>
		  <input value="0" required type="number" id="price" class="form-control">
        </div>
        <div class="modal-footer">
       <div class=" unexdivbtn_sec2 " style="margin-top: 10px !important;"><button  data-toggle="modal" data-target="#approvemodal" type="button" class="save_btn  btn <?php if($isexcept){ echo "btn-danger Excepted "; }else{ echo "btn-info UnAccept"; } ?>"><?php if($isexcept){echo "UNAccept"; }else{ echo "Accept";} ?> </button></div>
	   
	   <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
<!--------------------------------------------------------------------------------------------------------------->
  
</div>



<script>
$('.save_btn').click(function(){
  if($(this).hasClass('Excepted'))
  {
	  $(this).removeClass('Excepted');
	   $(this).addClass('UnAccept');
	  $.ajax({
		url:"/dashboard/UnExceptPrescription",
		method:"post",
		data:{'PrescriptionId':<?php echo $_GET['id'];?> ,'user_id':<?php echo $user_id ;?>},
		success:function(data)
		{
			alert(data);
			$('.save_btn').html('Accept');
			$('.save_btn').removeClass('btn-danger');
			$('.save_btn').addClass('btn-info');
			
			
			
		}
		}); 
  }
  else
  {
	 price=$('#price').val();

	  $('.save_btn').removeClass('UnAccept');
	   $('.save_btn').addClass('Excepted');
  
	 $.ajax({
		url:"/dashboard/ExceptPrescription",
		method:"post",
		data:{'PrescriptionId':<?php echo $_GET['id'];?> ,'user_id':<?php echo $user_id ;?>,'price':price},
		success:function(data)
		{
			alert(data);
			$('.save_btn').html('UnAccept'); 
			$('.save_btn').removeClass('btn-info');
			$('.save_btn').addClass('btn-danger');
			window.location="dashboard/Prescriptions";
		}
	}); 
  }
});

</script>