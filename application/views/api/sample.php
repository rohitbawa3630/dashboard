<?php
/* header("Access-Control-Allow-Origin: *");
header("Content-Type: application/x-www-form-urlencoded; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  $valid = 'invalid';
  $this->load->helper('string'); */
        $days=array("Sunday"=>"closed","Monday"=>"closed","Saturday"=>"closed","Friday"=>"closed","Thursday"=>"closed","Tuesday"=>"closed","Wednesday"=>"closed");
		 $em=array();
	    $storeid="1";
		$data=$this->db->query("select * from Store_slots where store_id=$storeid");
	    $datarray= $data->result_array();
		foreach($datarray as $d)
		{
			unset($days[$d['day']]);
			$em[$d['day']]=$d['open']."-".$d['close'];
		}
		//print_r($em);
		print_r(array_merge($em,$days));
		//  echo json_encode(array("statusCode"=>401,"valid"=>false,$em,JSON_FORCE_OBJECT));
	  
?>