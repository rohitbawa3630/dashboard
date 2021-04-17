
<?php error_reporting(0);
defined('BASEPATH') OR exit('No direct script access allowed');

class AtradeyaAppController extends CI_Controller
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
	public function Delevercost()
	{
	    if($this->input->post('title')!='' && $this->input->post('cost')!='')
        	 {
        	       $bid=$this->input->post('bid');
        	       $title=$this->input->post('title');
        	       $cost=$this->input->post('cost');
        	       $status=$this->db->query("insert into dev_delevery(bussiness,title,cost)value('$bid','$title','$cost')");
        	     redirect('Delevercost');
        	 }
        	 else
        	 {//print_r('dd');die;
					if(isset($_SESSION['status']['user_id']))
					{
						$this->load->view('header.php');
						$this->load->view('sidebar.php');
						$this->load->view('DelevercostPage.php');
						$this->load->view('footer.php');
					}
					else
					{
						$this->load->view('login-v1.php');
					}
        	    
        	 }
	}
    /**********************************UpdateDeleveryCost***************************************/
    public function UpdateDeleveryCost()
    {
         if($this->input->post('title')!='' && $this->input->post('cost')!='' &&  $this->input->post('id')!='')
        	 {
        	   
        	       $title=$this->input->post('title');
        	       $cost=$this->input->post('cost');
        	       $id=$this->input->post('id');
        	       $this->db->query("update dev_delevery SET title='$title' , cost='$cost' where id='$id'");
        	       redirect('Delevercost');
        	 }
        	 else
        	 {
        	    $this->load->view('header.php');
        	    $this->load->view('sidebar.php');
        	    $this->load->view('UpdateDeleveryCost.php');
        	    $this->load->view('footer.php');
        	 }
        	
    }
    /************************delete shipping******************************/
        /**********************************Stores***************************************/
    public function Stores()
    {
		
           if($this->input->post('submit_store'))
            {
				$lang=array();
				//$language=Implode $this->input->post('','Language');
				if($this->input->post('English'))
				{
					$lang[]='English';
				}
				if($this->input->post('Arbic'))
				{
					$lang[]='Arbic';
				}
				$language=implode(',',$lang);
				//print_r($language);die;
                $Price=$this->input->post('Price');
				$Prescribe=$this->input->post('Prescribe'); 
				$About=$this->input->post('About');
				$Experiece=$this->input->post('Experiece');
				$Education=$this->input->post('Education');
				$storetname=$this->input->post('storetname');
                $storeEmail=$this->input->post('storeEmail');
				$password=$this->input->post('password');
                $phnumber=$this->input->post('phnumber');
                $country=$this->input->post('country');
                $city=$this->input->post('city');
                $postcode=$this->input->post('postcode');
                $pub=$this->input->post('pub');
				$logo=$_FILES['logo']; 
				$imagename=$_FILES['logo']['name'];
				$tempname=$_FILES['logo']['tmp_name'];
				$address=$this->input->post('address');
                $Category=$this->input->post('Category');
                $Sub_Category=$this->input->post('Sub_Category');
				$State=$this->input->post('State');
				$Landmark=$this->input->post('Landmark');
				$Latitude=$this->input->post('Latitude');
				$Longitude=$this->input->post('Longitude');
				/* PRINT_R(move_uploaded_file($tempname, SITE_URL("/images/storelogo/".$imagename))); DIE;
				 if(move_uploaded_file($tempname, "/images/storelogo/".$imagename))
					{
						echo "okay";
					}
					else{
						echo "by";
					}					
					die; */
				$UserDatadata=array("first_name"=>$storetname, "phone"=>$phnumber, "email"=>$storeEmail,"password"=>md5($password), "status"=>$pub,'role'=>5);
				$this->db->insert("users",$UserDatadata);
				$user_id=$this->db->insert_id();
				if($user_id)
				{
					$data=array("price"=>$Price,"education"=>$Education,"language"=>$language,"experiece"=>$Experiece,"about"=>$About,"is_prescribe"=>$Prescribe,"name"=>$storetname, "phone"=>$phnumber, "email"=>$storeEmail, "logo"=>$imagename, "address"=>$address, "city"=> $city, "country"=>$country, "zip_code"=>$postcode, "status"=>0,'cat_id'=>$Category,'subcat_id'=>$Sub_Category,'userid'=>$user_id, "state"=>$State, "landmark"=>$Landmark, "latitude"=>$Latitude, "longitude"=>$Longitude);
					
					 if(move_uploaded_file($tempname, "/images/storelogo".$imagename))
					{ 
						$this->db->insert("subcat_store",$data);
						$store_id=$this->db->insert_id();
						if($store_id)
						{
							 
							 $data_service=array( "store_id"=>$store_id, "sub_catId"=>$Sub_Category, "status"=> $pub);
							 $this->db->insert("store_services",$data_service);
							 //redirect(base_url().'EditServiceStores/'.$store_id);
							 redirect(base_url().'Stores');
						}
					 }
				
        	    }
    
                
            }
            else
            {
                if(isset($_SESSION['Current_Business']))
                {
                    $bid=$_SESSION['Current_Business'];
                }
                else
                {
                    $bid=$_SESSION['status']['business_id'];
                }
                
              
                $this->load->view('header.php');
                $this->load->view('sidebar.php');
                $this->load->view('OurStores.php');
                $this->load->view('footer.php');  
	} }
	/******************Add store avibility*************************/
	 public function UpdateStores()
    {
		
           if($this->input->post('update_store'))
            {
				
                $Price=$this->input->post('Price');
				
				$About=$this->input->post('About');
				$Experiece=$this->input->post('Experiece');
				$Education=$this->input->post('Education');
				$storetname=$this->input->post('storetname');
                $storeEmail=$this->input->post('storeEmail');
				
                $phnumber=$this->input->post('phnumber');
                $country=$this->input->post('country');
                $city=$this->input->post('city');
                $postcode=$this->input->post('postcode');
                $pub=$this->input->post('pub');
				
				$address=$this->input->post('address');
               
				$State=$this->input->post('State');
				$Landmark=$this->input->post('Landmark');
				$Latitude=$this->input->post('Latitude');
				$Longitude=$this->input->post('Longitude');
				$store_id=$this->input->post('storeid');
			
					$data=array("price"=>$Price,"education"=>$Education,"experiece"=>$Experiece,"about"=>$About,"name"=>$storetname, "phone"=>$phnumber,  "address"=>$address, "city"=> $city, "country"=>$country, "zip_code"=>$postcode, "status"=>$pub, "state"=>$State, "landmark"=>$Landmark, "latitude"=>$Latitude, "longitude"=>$Longitude);
					
					$this->db->where('id', $store_id);
					$this->db->update('subcat_store', $data);
							 redirect(base_url().'EditServiceStores/'.$store_id);
							 //redirect(base_url().'Stores');
						
				
        	    }
    
                
            
            else
            {
              
                
              
                $this->load->view('header.php');
                $this->load->view('sidebar.php');
                $this->load->view('OurStores.php');
                $this->load->view('footer.php');  
			}
	} 
	
	public function StoreAvibility()
	{
		$InsertData=array();
		if($this->input->post('add_aviblity'))
		{
			$store_id=$this->input->post('storeid');
			
			  if($this->input->post('Sunday'))
				 {
					$day="Sunday";
					$am_Sunday=$this->input->post('am_Sunday');
					$pm_Sunday=$this->input->post('pm_Sunday');
					$sunday=array('store_id'=>$store_id,'day'=>$day,'open'=>$am_Sunday,'close'=>$pm_Sunday);
					array_push($InsertData,$sunday);
				 }
				
				  if($this->input->post('Monday')){
					  $day="Monday";
					$am_Monday= $this->input->post('am_Monday');
					$pm_Monday=$this->input->post('pm_Monday');
					$monday=array('store_id'=>$store_id,'day'=>$day,'open'=>$am_Monday,'close'=>$pm_Monday);
					array_push($InsertData,$monday);
				 }
				
				 if($this->input->post('Tuesday'))
				 {
					  $day="Tuesday";
					 $am_Tuesday=$this->input->post('am_Tuesday');
					$pm_Tuesday=$this->input->post('pm_Tuesday');
					$tuseday=array('store_id'=>$store_id,'day'=>$day,'open'=>$am_Tuesday,'close'=>$pm_Tuesday);\
					array_push($InsertData,$tuseday);
				 }
				
				 if($this->input->post('Wednesday'))
				 {
					  $day="Wednesday";
					 $am_Wednesday= $this->input->post('am_Wednesday');
					$pm_Wednesday=$this->input->post('pm_Wednesday');
					$wednesday=array('store_id'=>$store_id,'day'=>$day,'open'=>$am_Wednesday,'close'=>$pm_Wednesday);
					array_push($InsertData,$wednesday);
				 }
				
				  if($this->input->post('Thursday'))
				  {
					  $day="Thursday";
					  $am_Thursday=$this->input->post('am_Thursday');
					$pm_Thursday=$this->input->post('pm_Thursday');
					$Thursday=array('store_id'=>$store_id,'day'=>$day,'open'=>$am_Thursday,'close'=>$pm_Thursday);
					array_push($InsertData,$Thursday);
				 }
				
				  if($this->input->post('Friday'))
				  {
					   $day="Friday";
					 $am_Friday=$this->input->post('am_Friday');
					$pm_Friday=$this->input->post('pm_Friday');
					$Friday=array('store_id'=>$store_id,'day'=>$day,'open'=> $am_Friday,'close'=>$pm_Friday);
					array_push($InsertData,$Friday);
				 }
				
				  if($this->input->post('Saturday'))
				  {
					     $day="Saturday";
					 $am_Saturday=$this->input->post('am_saturday');
					$pm_Saturday=$this->input->post('pm_saturday');
					
					$Saturday=array('store_id'=>$store_id,'day'=>$day,'open'=> $am_Saturday,'close'=>$pm_Saturday);
					array_push($InsertData,$Saturday);
				 }
				 if(count($InsertData))
				 {
				    $this->db->query("delete  from Store_slots where store_id=$store_id");
					$this->db->insert_batch('Store_slots',$InsertData);
				 }
				 redirect(base_url().'EditServiceStores/'.$store_id);
		}
	}
	
	public function EditServiceStores()
	{
		$storeid = $this->uri->segment(2);
		$slots_obj=$this->db->query("select * from Store_slots where store_id=$storeid");
		$slots_array=$slots_obj->result_array();
		$store_obj=$this->db->query("select * from subcat_store where id=$storeid");
		$store_array=$store_obj->result_array();
		$data=array('store_id'=>$storeid,'slots'=>$slots_array,'details'=>$store_array);
		$this->load->view('header.php');
		$this->load->view('sidebar.php');
		$this->load->view('EditServiceStores.php',$data);
		$this->load->view('footer.php');
	}
	public function StoreAppointment()
	{
		
				
				//$sended=array('get'=>$send);
				
				$this->load->view('header.php');
                $this->load->view('sidebar.php');
                $this->load->view('StoreApointment.php');
                $this->load->view('footer.php'); 
		
	}
	
	public function GetStoreAppointMent()
	{
		if(isset($_SESSION['status']))
		{
				$storeid=$_SESSION['status']['storeid'];
				$this->db->select('*');
				$this->db->from('appointments');
				$this->db->where('store_id',$storeid);
				$this->db->order_by("id", "desc");
				$data=$this->db->get();
				$send=$data->result_array();
				echo json_encode($send);
		}
	}
	
	public function markascomplete()
	{
		$appointment_id = $this->uri->segment(2);
		$data = array('status'=>'2');
		$this->db->where('id', $appointment_id);
		$this->db->update('appointments', $data);
		redirect(site_url('StoreAppointment'));
	}
	public function ViewAppointment()
	{
		if(isset($_SESSION['status']))
		{
				$storeid=$_SESSION['status']['storeid'];
				$appointment_id=$this->uri->segment(2);
				$userid=$appointment_id[0]['user_id'];
				
				$this->db->select('*');
				$this->db->from('appointments');
				$this->db->where('id',$appointment_id);
				$data=$this->db->get();
				$sendApp=$data->result_array();
				
				
				
				//get user details
				
				$this->db->select('*');
				$this->db->from('users');
				$this->db->where('id',$userid);
				$data=$this->db->get();
				$Usersend=$data->result_array();
				
				$sended=array('getuser'=>$Usersend,'getappo'=>$sendApp);
			
				$this->load->view('header.php');
                $this->load->view('sidebar.php');
                $this->load->view('ViewAppointment.php',$sended);
                $this->load->view('footer.php'); 
		}
	}
	
	public function storeProfile()
	{
		        $storeid=$_SESSION['status']['storeid'];
				$store_obj=$this->db->query("select * from subcat_store where id=$storeid");
	           	$details=$store_obj->result_array();
				$slots_obj=$this->db->query("select * from Store_slots where store_id=$storeid");
				$slots_array=$slots_obj->result_array();
				
				$data=array('store_id'=>$storeid,'slots'=>$slots_array,'get'=>$details);
				
				$this->load->view('header.php');
                $this->load->view('sidebar.php');
                $this->load->view('Profile.php',$data);
                $this->load->view('footer.php'); 
	}
	
	
	
	
	
	
	
	
	
    /**************************************edit store************************/
    public function EditStore($id)
    { 
        if($this->input->post('edit_store'))
            { 
                $store_name=$this->input->post('Store_Name');
                $storeaddress1=$this->input->post('Store_Address_one');
                $storeaddress2=$this->input->post('Store_Address_two');
                $city=$this->input->post('City');
                $postcode=$this->input->post('Post_Code');
                $contact=$this->input->post('Contact_Number');
                $email=$this->input->post('Email');
                $default=$this->input->post('defaultcheck');
                
                 $status=$this->db->query("update dev_stores set Store_Name='$store_name',Store_Address_one='$storeaddress1',Store_Address_two='$storeaddress2' ,City='$city' ,Post_Code='$postcode',Contact_Number='$contact',Email='$email',defaultcheck='$default' where id='$id'");
        	     redirect('Stores');
                
            }
            else
            {
                
                $dataobj=$this->db->query("select * from dev_stores where id=$id");
                $dataarray=$dataobj->result_array();
                $resultset['EditArray']=$dataarray;
                $this->load->view('header.php');
                $this->load->view('sidebar.php');
                $this->load->view('EditOurStore.php',$resultset);
                $this->load->view('footer.php'); 
            }
    }
    /************************delete store******************************/
    
    public function deletestore($id)
    {
        
        $status=$this->db->query("delete from dev_stores where id='$id'");
        if($status)
        {
              redirect('Stores');
        }
    }
    /************************delete shipping******************************/
    
    public function deleteshipping()
    {
        $id=$_REQUEST['id'];
        $status=$this->db->query("delete from dev_delevery where id='$id'");
        if($status)
        {
              redirect('Delevercost');
        }
    }
	public function GenratePasswordAndSendApi()
	{
		$this->load->view('api/GenrateAtradeyaPassword.php');
	
	}
	public function CreateAtradeyaAppUsers()
	{
	   $this->load->view('api/CreateAtradeyaAppUsers.php');
	}
	public function SendStore()
	{
	    $this->load->view('api/SendStore.php');
	}
	public function SendDeleveryCost()
	{
	    $this->load->view('api/SendDeleveryCost.php');
	}
	public function AtradeyNewGetOrder()
	{
	    $this->load->view('api/AtradeyNewGetOrder.php');
	}
	//fillter
	public function ApplyFilter()
	{ 
	    $this->load->view('api/ApplyFillter.php');
	}
	public function fillter()  
	{
		if(isset($_POST['addfillter']))
		{
			$data=array();
			$catid=$_POST['catid'];
			if($catid)
			{
					$keys=$_POST['key'];
					$values=$_POST['value'];
					for($i=0;$i<count($keys);$i++)
					{
						array_push($data,array($keys[$i]=>$values[$i]));
					}
					$serializeData=serialize($data);
			$this->db->query("update dev_product_cat set filter= '$serializeData' where id=$catid");
			if($this->db->affected_rows())
			{
				$sendmessage=array("message"=>"Add fillter successfully");
			}
			else
			{
				$sendmessage=array("message"=>"Add fillter successfully");
			}

			}
			
				$this->load->view('header.php');
				$this->load->view('sidebar.php');
				$this->load->view('fillter_view.php',$sendmessage);  
				$this->load->view('footer.php');
			 
		}    
		else
		{
			if(isset($_SESSION['status']['user_id']))
			{
			$this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('fillter_view.php');  
			$this->load->view('footer.php');
			}
			else{
				$this->load->view('login-v1.php');
			}
		}
	}
		
	public  function EditFillter()
		{
			if(isset($_POST['Editfillter']))
			{
				$data=array();
				$catid=$_POST['catid'];
				if($catid)
				{  
					$keys=$_POST['key'];
					$values=$_POST['value'];
					for($i=0;$i<count($keys);$i++)
					{
						array_push($data,array($keys[$i]=>$values[$i]));
					}
					$serializeData=serialize($data);
					$this->db->query("update dev_product_cat set filter= '$serializeData' where id=$catid");
					redirect('editfillter?id='.$catid);
                }
			  
			}
			else  
			{ 
				$this->load->view('header.php');
				$this->load->view('sidebar.php');
				$this->load->view('EditFilter.php');  
				$this->load->view('footer.php'); 
			}
					
		}
		public function sample()
		{
			$this->load->view("api/sample.php");
		}
	
}
