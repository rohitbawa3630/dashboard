<?php error_reporting(0);
defined('BASEPATH') OR exit('No direct script access allowed');

class SevicesController extends CI_Controller {

	
	
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
	
	public function Services()
	{
						$this->load->view('header.php');
						$this->load->view('sidebar.php');
						$this->load->view('Services.php');
						$this->load->view('footer.php');
			
	}
	public function addService()
	{
	 if($this->input->post('Insert_service'))
			 {
				 
				 $nick_name= $this->input->post('Name');
				 $user_name= $this->input->post('uname');
				 $email= $this->input->post('email');
				 $pass = $this->input->post('Password');
				 $password = $pass;
				 $confirmpass= $this->input->post('Conpass');
				 $assign_buss=$this->input->post('Buisness');
                $arr=array('person_name'=>$user_name,'user_name'=>$nick_name,'business_id'=>$bid,'email'=>$email,'password'=>$password,'business'=>$assign_buss,'role'=>$role,'permission_full'=>$p1,'permission_products'=>$p2,'permission_orders'=>$p3, 'permission_suppliers'=>$p5, 'permission_engineers'=>$p6,'permission_projects'=>$p7,'permission_categories'=>$p9,'permission_notifications'=>$p10,'permission_super_Admin'=>$p11,'permission_wholeseller'=>$p12,'permission_store'=>$p13,'permission_deleverycost'=>$p14,'permission_quotes'=>$p15);
    
				$table='dev_users';
	
					 $insert_user = $this->DataModel->insert($table,$arr);
					 if($insert_user)
			            {
				          redirect('Services');
			            }
					  else
					    {
					      redirect('Services');
                        }
				
			 }
			 else
			 {
				
			
						$this->load->view('header.php');
						$this->load->view('sidebar.php');
						$this->load->view('addServices.php');
						$this->load->view('footer.php');
					 
			 }
	}

	

}

