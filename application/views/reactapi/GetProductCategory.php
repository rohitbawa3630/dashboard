<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/x-www-form-urlencoded; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  $valid = 'invalid';
  $this->load->helper('string');
		//$data = file_get_contents("php://input");
		 $userid = $_REQUEST['userid'];
		
		$All_cat_data=array();
		$Next_Status=2;
		$numberofawating=0;
	if($userid!='0')
	{ // if user id 0 it mean this is atradeya app guest and send all data to it 

		//get role of user
		 $selected_role = $this->db->query('select * from dev_users where id="'.$userid.'"');
		 $selected_role = $selected_role->result_array();
		 $user_role=$selected_role[0]['role'];
		 $business_id=$selected_role[0]['business_id'];
		 /*************************number of awatin******************/
		 if($business_id!='')
		 {
		 $Get_awating_orders = $this->db->query("select id from dev_orders where status=1&& business_id=$business_id");
			$numberofawating=$Get_awating_orders->num_rows();
		 }
		 /*************************close***************************/
		 if($user_role=='3')  //check if user engineer 
		 {
			  $selected_engineer = $this->db->query('select * from dev_engineer where user_id="'.$userid.'"');
			  $selected_engineer = $selected_engineer->result_array();
			   $business_id=$selected_engineer[0]['business_id'];
			   $engineer_id=$selected_engineer[0]['id'];
			   /****************NUMBER OF AWATING IF ENGINEER*******************/
			$Get_awating_orders = $this->db->query("select id from dev_orders where status=1&& business_id= $business_id");
			$numberofawating=$Get_awating_orders->num_rows();
			/*************************close**********************/
			   $check_oprative=$this->db->query("select * from dev_engineer_permissions where engineer_id='$engineer_id'");
		      $check_oprative=$check_oprative->result_array();
	  if($check_oprative[0]['Operative']=='1')
		 {
			
			  /****************NUMBER OF AWATING IF ENGINEER*******************/
			$Get_awating_orders = $this->db->query("select id from dev_orders where status=1&& business_id=$business_id&&engineer_id=$userid");
			$numberofawating=$Get_awating_orders->num_rows();
			/*************************close**********************/
		 }
		 }
		  if($user_role=='1' ||$user_role=='2')  //check if user admin or superadmin 
		 {
		  
		   $selected_admin = $this->db->query('select business_id	from dev_users where id="'.$userid.'"');
			  $selected_admin = $selected_admin->result_array();
			   $business_id=$selected_admin[0]['business_id'];
		  }
	} // close atradeya app condition 
	else
	{
		$business_id=16; // set a static bussiness id for atradeya 
	}
		   $selected_data = $this->db->query('select * from dev_product_cat where business_id="'.$business_id.'"');
		$select_data = $selected_data->result_array();
		$i=0;
		foreach($select_data as $select)
		{
			$check_sub=$select['id'];					
			$check_sub_data = $this->db->query('select * from dev_product_sub_cat
             where cat_id="'.$check_sub.'"');
			
			if($check_sub_data->num_rows())
				{
				$Next_Status=1;
				}
		    else{
				        $Next_Status=2;
						$check_product=$select['id'];
						$check_product = $this->db->query('select * from dev_products
						where categories="'.$check_product.'"');
						
						
							if($check_product->num_rows())
							{
								$Next_Status=0; //zero means have product on this cat 
							}
							else
							{
								$Next_Status=2;
							}
						
		       }
			
			$SerializeData=$select['filter'];
			if(!empty($SerializeData))
			{
				$fulldata=unserialize($SerializeData);
				if(!count($fulldata))
				{
					$fulldata=[];
				}
			}
			else
			{
				$fulldata=[];
			}
			$All_cat_data[]=array('cat_id'=>$select['id'],'cat_name'=>$select['cat_name'],'cat_image'=>$select['image'],'status'=>$Next_Status,'fillter'=>$fulldata);
		
		}
		
		//print_r($All_cat_data);
		if($select_data)
		{ 
			
			echo json_encode(array("statusCode"=>200,'numberofawating'=>$numberofawating,'Category'=>$All_cat_data));
		 }
		else
		{
			echo json_encode(array("statusCode"=>401,"valid"=>false),JSON_FORCE_OBJECT);
		}  
?>

