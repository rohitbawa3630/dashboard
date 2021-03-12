
<?php error_reporting(0);
defined('BASEPATH') OR exit('No direct script access allowed');

class PrescriptionsController extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->Model('DataModel');
		$this->load->Model('EngineerModel');
		$this->load->Model('SupplierModel');
		$this->load->Model('ProjectModel');
		$this->load->Model('ProductCategoryModal');
		$this->load->library('upload');
		$this->load->library('image_lib');
	}
	
	public function Prescriptions()
	{
	  
		$this->load->view('header.php');
		$this->load->view('sidebar.php');
		$this->load->view('PandingPrescriptions.php');
		$this->load->view('footer.php');
	}
	
	public function GetNewPrescriptions()
	{
	     $AllDataObj=$this->db->query("select * from prescriptions where status=1");
		 $AllDataArray=$AllDataObj->result_array();
		 echo json_encode($AllDataArray);
	}
	public function ExceptPrescription()
	{
		$PrescriptionId=$_POST['PrescriptionId'];
		$user_id=$_POST['user_id'];
		 $Store_Obj=$this->db->query("SELECT * FROM `stores` WHERE `register_id`= $user_id");
		$store_array=$Store_Obj->result_array();
		$store_id=$store_array[0]['id'];
		$Store_relation_with_prescription=array('store_register_id'=>$user_id,'store_id'=>$store_id,'Prescription_id'=>$PrescriptionId,'after_accepte_status'=>'1');
		
		$this->db->query("update prescriptions set status=2 where id=$PrescriptionId");
		
		if($this->db->affected_rows())
		{
			$this->db->query("update prescription_details set status=2 where prescription_id=$PrescriptionId");
			if($this->db->affected_rows())
			{ $where_array=array('Prescription_id'=>$PrescriptionId);
				$query = $this->db->get_where('store_relation_with_prescription',$where_array);
                 if($query->row()){
					 $this->db->query("update store_relation_with_prescription set after_accepte_status=1 where prescription_id=$PrescriptionId");
					 }else{
						 $this->db->insert('store_relation_with_prescription',$Store_relation_with_prescription);
						 }
				 
				echo "Prescription Accepted";
			}
			else
			{
				echo "Oprtaion Failed";
			} 
		}
	}
	public function UnExceptPrescription()
	{
		$PrescriptionId=$_POST['PrescriptionId'];
		$this->db->query("update prescriptions set status=1 where id=$PrescriptionId");
		if($this->db->affected_rows())
		{
			$this->db->query("update prescription_details set status=1 where prescription_id=$PrescriptionId");
			if($this->db->affected_rows())
			{
				$this->db->query("update store_relation_with_prescription set after_accepte_status=0 where prescription_id=$PrescriptionId");
				echo "Prescription UnExceptedAccepted";
			}
			else
			{
				echo "Oprtaion Failed";
			}
		}
	}
	public function ViewExceptPrescription()
	{
		if(isset($_SESSION['status']))
		{
			$ids_array=array();
		 $store_register_id=$_SESSION['status']['user_id'];
		 $ObjForPrescr=$this->db->query("select Prescription_id from store_relation_with_prescription where store_register_id = $store_register_id ");
		 $ArrayForPrescr=$ObjForPrescr->result_array();
		 foreach($ArrayForPrescr as $value)
		 {
			 $ids_array[]=$value['Prescription_id'];
		 }
		 $commaSprated=implode(',',$ids_array);
		 $AllDataObj=$this->db->query("select * from prescriptions where id in ($commaSprated)");
		 $AllDataArray=$AllDataObj->result_array();
		 echo json_encode($AllDataArray);  
		}
	}
	public function ExceptedPrescriptions()
	{
	  
		$this->load->view('header.php');
		$this->load->view('sidebar.php');
		$this->load->view('ExceptedPrescriptions.php');
		$this->load->view('footer.php');
	}
	
}
		
	

