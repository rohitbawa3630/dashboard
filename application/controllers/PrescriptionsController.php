
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
	     $AllDataObj=$this->db->query("select * from prescriptions where status=1 order by id DESC");
		 $AllDataArray=$AllDataObj->result_array();
		 echo json_encode($AllDataArray);
	}
	public function ExceptPrescription()
	{
		$PrescriptionId=$_POST['PrescriptionId'];
		
		 $user_id=$_POST['user_id'];
		$price=$_POST['price'];
		 $Store_Obj=$this->db->query("SELECT * FROM `stores` WHERE `register_id`= $user_id");
		$store_array=$Store_Obj->result_array();
		$store_id=$store_array[0]['id'];
		
		 $Store_relation_with_prescription=array('prescription_id'=>$PrescriptionId,'store_id'=>$store_id,'price'=>$price,'status'=>'2');
		
		 $this->db->query("update prescriptions set status=2 where id=$PrescriptionId");
		
		if($this->db->affected_rows())
		{
			
		       $obj=$this->db->query("select * from prescription_details where prescription_id=$PrescriptionId && store_id=$store_id");
			   $isexcept=$obj->num_rows();
                 if($isexcept)  
				 {  
					 $this->db->query("update prescription_details set status=2 where prescription_id=$PrescriptionId");
				  }
				 else
				 { 
					$this->db->insert('prescription_details',$Store_relation_with_prescription);
				 }  
				 
				echo "Prescription Accepted";
			
		}
		else
		{
			echo "prescriptions table failer";
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
			
				echo "Prescription UnAccepted";
			 }
			else
			{
				echo "Oprtaion Failed";
			} 
		}
		else
			{
				echo "Oprtaion Failed";
			} 
	}
	public function ViewExceptPrescription()
	{
		if(isset($_SESSION['status']))
		{
			$ids_array=array();
		 $store_register_id=$_SESSION['status']['user_id'];
		  $Store_Obj=$this->db->query("SELECT * FROM `stores` WHERE `register_id`= $store_register_id");
		$store_array=$Store_Obj->result_array();
		$store_id=$store_array[0]['id'];
		 $ObjForPrescr=$this->db->query("select prescription_id from prescription_details where store_id = $store_id  && status>=2");
		 $ArrayForPrescr=$ObjForPrescr->result_array();
		
		 foreach($ArrayForPrescr as $value)
		 {
			 $ids_array[]=$value['prescription_id'];
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
	public function ViewSinglePrescriptionForAStore()
	{
		$editid=$this->uri->segment('2');
		$obj=$this->db->query("select * from  prescriptions inner join  prescription_details on prescriptions.id=prescription_details.prescription_id where prescriptions.id=$editid");
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
		//get current staus from store
		$store_register_id=$_SESSION['status']['user_id'];
		  $Store_Obj=$this->db->query("SELECT * FROM `stores` WHERE `register_id`= $user_id");
		$store_array=$Store_Obj->result_array();
		$store_id=$store_array[0]['id'];
				$where_array=array('prescription_id'=>$editid,'store_id'=>$store_id);
				$this->db->select('*');
				$this->db->from('prescription_details');
				$query = $this->db->where($where_array);
				$StoreData=$query->get()->result_array();
                 
		$dataKey=array('data'=>$data,'userid'=>$user_id,'currentStatus'=>$StoreData[0]['status'],'pid'=>$data['prescription_id']);
		$this->load->view('header.php');
		$this->load->view('sidebar.php');
		$this->load->view('ViewSinglePrescriptionForAStore.php',$dataKey);
		$this->load->view('footer.php');
	}
	// chage prescription status store like in progress or ready etc
	public function ChangeStatusByStore()
	{
		$PrescriptionId=$_POST['PrescriptionId'];
		$name=$_POST['name']; //3,4,5
		$IsThisTrueOrFlaseRightNow=$_POST['IsThisTrueOrFlaseRightNow'];
		$GetConst=array(1=>panding,2=>Accepted,3=>inProgess,4=>Delevered);
		
		if($IsThisTrueOrFlaseRightNow)
		{
		    $state=$GetConst[$name];
		
			$this->db->trans_start();
			$this->db->query("update prescriptions set status=$state where id=$PrescriptionId");
			$this->db->query("update prescription_details set status=$state where prescription_id=$PrescriptionId");
			//$this->db->query("update store_relation_with_prescription set after_accepte_status=$state where Prescription_id=$PrescriptionId");
			$this->db->trans_complete();	
			Echo "Status Changed Successfully";
			
		}
		else
		{
			$index=$name-1;
			$state=$GetConst[$index];
		
			$this->db->trans_start();
			$this->db->query("update prescriptions set status=$state where id=$PrescriptionId");
			$this->db->query("update prescription_details set status=$state where prescription_id=$PrescriptionId");
			//$this->db->query("update store_relation_with_prescription set after_accepte_status=$state where Prescription_id=$PrescriptionId");
			$this->db->trans_complete();	
		   Echo "Status Changed Successfully";
		}
	}
	
	public function testigMethod()
	{ 
	    
	}
}
		
	

