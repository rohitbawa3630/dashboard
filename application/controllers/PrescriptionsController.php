
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
		$id=$_POST['id'];
		$this->db->query("update prescriptions set status=2 where id=$id");
		if($this->db->affected_rows())
		{
			$this->db->query("update prescription_details set status=2 where prescription_id=$id");
			if($this->db->affected_rows())
			{
				echo "Prescription Accepted";
			}
			else
			{
				echo "Oprtaion Failed";
			}
		}
	}
	
}
		
	

