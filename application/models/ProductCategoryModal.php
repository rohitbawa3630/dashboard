<?php 
class ProductCategoryModal extends CI_Model
{
	function GetAllList()    
	{
		$listdata=$this->db->query("select * from 	dev_catlist");
		return($listdata->result_array());
	}
	function GetAllCat($bussiness_id)
	{
		if($bussiness_id!=0)
		{
		$AllCat=$this->db->query("select * from dev_product_cat where business_id='$bussiness_id' ");
		$AllCat=$AllCat->result_array();
		return($AllCat);
		}
		else{
		/* $AllCat=$this->db->query('select * from dev_product_cat ');
		$AllCat=$AllCat->result_array();
		return($AllCat); */
		}
	}
	function GetAllSubCat($catid)
	{
		/* if($catid==0){
		$AllCat=$this->db->query('select * from  service_subcategory');
		$AllCat=$AllCat->result_array();
		return($AllCat);
		}
		else
		{ */
		$AllCat=$this->db->query("select * from service_subcategory where category_id='$catid'");
		$AllCat=$AllCat->result_array();
		return($AllCat);	
		/* } */
	}
  function GetAllSuperSubCat($subcatid)
	{
		if($subcatid==0){
		$AllCat=$this->db->query('select * from super_sub_cat');
		$AllCat=$AllCat->result_array();
		return($AllCat);
		}
		else
		{
		$AllCat=$this->db->query("select * from super_sub_cat where sub_cat=$subcatid");
		$AllCat=$AllCat->result_array();
		return($AllCat);
		}
	} 
	public function insert($table,$insert){
		$results = $this->db->insert($table, $insert);
		
	    $insertId = $this->db->insert_id();
		if($results){
		return $insertId;}
		else{
		return false;}
}
public function delete($table,$id){
	   $this->db->where('id', $id);
	   $deleted = $this->db->delete($table); 
	   if($deleted){
		   return true;
	   }
		else{
			return false;
		}
}

}



?>