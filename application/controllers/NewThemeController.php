<?php
class NewThemeController extends CI_Controller
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
	$this->load->Model('ProductModel');
	$this->load->library('upload');
    $this->load->library('image_lib');
	}
	
	public function getBusinessUsers()
	{
		 if(isset($_SESSION['Current_Business']))
		   {
			   $bid=$_SESSION['Current_Business'];
			   $data=$this->db->get_where('dev_users', array('role' => 2,'business_id'=>$bid));
		   }
		  else
		  {
			   $bid=$_SESSION['status']['business_id'];
			   $data=$this->db->get_where('dev_users', array('role' => 2));
		  }
		 
		
		 echo json_encode($data->result_array());
	}
	public function AddNewAdminUsers()
	{
		$this->load->view('header.php');
		$this->load->view('sidebar.php');
		 $this->load->view('AddUser.php');
		 $this->load->view('footer.php');
	}
	public function getNewSuppliersPage()
	{
			$this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('AddNewSupplier.php');
			$this->load->view('footer.php');
	}
	public function GetAllNewSuppliers()
	{
		
		 if(isset($_SESSION['Current_Business']))
		   {
			   $bid=$_SESSION['Current_Business'];
			   $dataobj=$this->db->get_where('dev_supplier', array('business_id'=>$bid));
		   }
		  else
		  {
			   $bid=$_SESSION['status']['business_id'];
			   $dataobj=$this->db->get_where('dev_supplier');
		  }
		
		echo json_encode($dataobj->result_array());
	}
	public function AddNewDeleverCost()
	{
		
		 if($this->input->post('title')!='' && $this->input->post('cost')!='')
        	 {
				 if(isset($_SESSION['Current_Business']))
				   {
					   $bid=$_SESSION['Current_Business'];
					 
				   }
				  else
				  {
					   $bid=$_SESSION['status']['business_id'];
					  
				  }
        	   
        	       $title=$this->input->post('title');
        	       $cost=$this->input->post('cost');
        	       $status=$this->db->query("insert into dev_delevery(bussiness,title,cost)value('$bid','$title','$cost')");
        	     redirect('Delevercost');
        	 }
			 else{
			$this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('AddNewDeleverCost.php');
			 $this->load->view('footer.php');} 
	}
	public function AddNewProjects()
	{
		
		    $this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('AddNewProjects.php');
			$this->load->view('footer.php');
	}
	
	//Get All projects
		public function GetAllNewProjects()
		{
			 if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_projects',array('business_id'=>$bid));
			   }
			  else
			  { 
				   $dataobj=$this->db->get('dev_projects');
			  }
			
			echo json_encode($dataobj->result_array());
		}
		
		//Get All engineer
		
		public function GetAllEngineer()
		{      
		    
			 if(isset($_SESSION['Current_Business']))
		   {
			  $bid=$_SESSION['Current_Business'];
			 
			  $this->db->select('*');
			$this->db->from('dev_engineer');
			$this->db->join('dev_engineer_permissions', 'dev_engineer.id = dev_engineer_permissions.engineer_id');
			$this->db->where(array('business_id'=>$bid));
			  
		  }
		  else
		  {
			   $bid=$_SESSION['status']['business_id'];
			  
			    $this->db->select('*');
				$this->db->from('dev_engineer');
				$this->db->join('dev_engineer_permissions', 'dev_engineer.id = dev_engineer_permissions.engineer_id');
			//	$this->db->where(array('business_id'=>$bid));
			   
		  }
			
			$dataobj = $this->db->get();
			
			echo json_encode($dataobj->result_array());
		}
		
		//add newtheme productlistname
		public function AddNeThemeProduct()
		{
			$this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('NewAddProductPage.php');
			$this->load->view('footer.php');
		}
		
		//Get All engineer page 
		
		public function AddNewEngineer()
		{
			$this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('AddNewEngineer.php');
			$this->load->view('footer.php');;
		}
     /************************************print work for all new page ******************************/ 
	  public function printAdminUserTable()              
	  {
		  if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_users',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_users');
				  
			  }
		
		  $data=$dataobj->result_array();
		  $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/printAdminUserTable.php',$viewSend);
	  }
	/************************************ make csv file ******************************/
	
	 /************************************print table for suppliers ******************************/ 
	  public function printTableForSuppliers()              
	  {
		  if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_supplier',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_supplier');
				  
			  }
		
		  $data=$dataobj->result_array();
		  $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/printAdminUsersupplier.php',$viewSend);
	  }
	  	 /************************************print table for orders ******************************/ 
	  public function printTableForOrders()              
	  {
		  if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_orders',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_orders');
				  
			  }
		
		  $data=$dataobj->result_array();
		  $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/printAdminUserOrders.php',$viewSend);
	  }
	    	 /************************************print table for business ******************************/ 
	  public function printTableForBusiness()              
	  {
		  if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_business',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_business');
				  
			  }
		
		  $data=$dataobj->result_array();
		  $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/printAdminUserbusiness.php',$viewSend);
	  }
	/************************************ make csv file ******************************/
  public function makeCsvFileForUsers()
  {
	  if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_users',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_users');
				  
			  }
		
		$data=$dataobj->result_array();
		
		 	  // Create an array of elements 
		$list = array(array('USER NAME','Business',	'last_login')); 
		foreach($data as $d)
		{
			
			array_push($list,array($d['user_name'],$d['business'],$d['last_login']));
		}
		
		 // Open a file in write mode ('w') 
		$fp = fopen('./images/csv/usersAdmin.csv', 'w'); 
		  
		// Loop through file pointer and a line 
		foreach ($list as $fields) { 
			fputcsv($fp, $fields); 
		} 
		  
		fclose($fp);      
         $url = "./images/csv/usersAdmin.csv"; 	
        $file_name = basename($url);  
		$info = pathinfo($file_name); 
        if ($info["extension"] == "csv") 
		{ 
			/* Informing the browser that 
			the file type of the concerned 
			file is a MIME type (Multipurpose 
			Internet Mail Extension type). 
			Hence, no need to play the file 
			but to directly download it on 
			the client's machine. */
			header("Content-Description: File Transfer");  
			header("Content-Type: application/octet-stream");  
			header( 
			"Content-Disposition: attachment; filename=\""
			. $file_name . "\"");   
			readfile ($url); 
		}  		
  }
   /******************Print pdf Table ***************************/
		public function PrintPdfTableForUser()
		{
			if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_users',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_users');
				  
			  }
		
		  $data=$dataobj->result_array();
		  $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/GenratePdfForAdmin.php',$viewSend);
		}
		public function AddNewWholsalerEnginner()
		{
			  $this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('AddNewWholesaller.php');
			$this->load->view('footer.php');;
		}
	 /************************************print work for project  page ******************************/	
	  public function printProjectTable()
	  {
		   if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_projects',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_projects');
				  
			  }
	      
		    $data=$dataobj->result_array();
		  $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/printprojecttable.php',$viewSend);
		  
	  }	  
	 /******************************Wholsaler Engineer**************************************/
	 public function GetWholsalerEngineer()
	 {
		   if(isset($_SESSION['Current_Business']))
		   {
			  $bid=$_SESSION['Current_Business'];
			  
		  }
		  else
		  {
			   $bid=$_SESSION['status']['business_id'];
			   
		  }
			$this->db->select('*');
			$this->db->from('dev_engineer');
			$this->db->join('dev_engineer_permissions', 'dev_engineer.id = dev_engineer_permissions.engineer_id');
			$this->db->where(array('business_id'=>$bid,'wholeseller_status'=>'1'));
			$dataobj = $this->db->get();
			
			echo json_encode($dataobj->result_array());
		// echo json_encode($Get_Data);                         
	 }
	 
	 /**********************get Wholsaler Engineer Page ********************************/
	 public function AddNewWholesaller()
	 {
			$this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('AddNewWholesaller.php');
			$this->load->view('footer.php');    
	 }
	 /***************************AddNewDelverCost Section***************************/
	 public function GetNewDeleveryCost()
				 {
				  if(isset($_SESSION['Current_Business'])){
				  $Get_Data = $this->DataModel->Select_All_dlcost($_SESSION['Current_Business']);
				  $bid = $_SESSION['Current_Business'];
				  
				}
				   else
				   {
					   $Get_Data = $this->DataModel->Select_All_dlcost(0);
					   $bid=0;
				   }
				   echo json_encode($Get_Data);
	 }
	 /**************************PrintEngineer Table*****************************************/
	  public function PrintEngineerTable()
	  {
		   if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_engineer',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				   $bid=$_SESSION['status']['business_id'];
				   $dataobj=$this->db->get('dev_engineer');
				  
			  }
	     
		    $data=$dataobj->result_array();
		  $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/PrintEngineerTable.php',$viewSend);
		  
	  }	
		/******************************************GetAllProduct*************************************/
		public function GetNewThemeProducts()
		{
			if(isset($_SESSION['Current_Business']))
			{ 
			$bid=$_SESSION['Current_Business'];
			 $All_Product= $this->ProductModel->GetAllProduct($_SESSION['Current_Business']);
			}
			else
			{
				$bid=$_SESSION['status']['business_id'];
				$All_Product= $this->ProductModel->GetAllProduct($_SESSION['status']['business_id']);
			}
			
			  $All_Product=$All_Product->result_array();
			  echo json_encode($All_Product);
		}
		/********************************************************************************************/
	/******************************printwholesellertable****************************/
		public function PrintWholeSellerTable()
		{
		
		if(isset($_SESSION['Current_Business']))
		   {
			  $bid=$_SESSION['Current_Business'];
			  $Get_Data_W = $this->db->query("select * from dev_engineer where wholeseller_status='1' AND business_id='$bid'");
			  $Get_Data=$Get_Data_W->result_array();
		  }
		  else
		  {
			   $bid=$_SESSION['status']['business_id'];
			   $Get_Data_W = $this->db->query("select * from dev_engineer where wholeseller_status='1' AND business_id='$bid'");
			   $Get_Data=$Get_Data_W->result_array();
		  }
	     $viewSend=array('values'=>$Get_Data);
		  $this->load->view('PrintViews/PrintEngineerTable.php',$viewSend);
		}
		/*********************************Stores******************************/
		
		public function GetOurStoreSection()
		{   
			
			$dataobj=$this->db->query("select * from subcat_store");
                $dataarray=$dataobj->result_array();    
			
				echo json_encode($dataarray);   
		}
		
		
		public function AddNewThemeStore()
		{ 
		
		if(isset($_POST['submit']))
		{
			$storename=$this->input->post('Store_Name');
			$Email=$this->input->post('Email');
			$password=$this->input->post('password');
			$StoreAddress=$this->input->post('Store_Address');
			$Contact=$this->input->post('Contact');
			$pub=$this->input->post('pub');
			$role=4;
			$Image=$_FILES['Image'];  
			$Imagename=$_FILES['Image']['name'];
			$userdata=array('first_name'=>$storename,'email'=>$Email,'password'=>$password,'role'=>$role);
			 
			if(move_uploaded_file($Image['tmp_name'],'./images/storelogo/'.$Imagename))  
			{
				$this->db->insert('users',$userdata);
				 $insert_id = $this->db->insert_id();
				 if($insert_id)
				 {
					 
				$storedata=array('name'=>$storename,'email'=>$Email,'address'=>$StoreAddress,'contact'=>$Contact,'status'=>$pub,'logo'=>$Imagename,'register_id'=>$insert_id);
				$this->db->insert(' stores',$storedata);
				
				
				 }
			}			
		}
		 else
		 {
			 
			$this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('AddNewThemeStore.php');
			$this->load->view('footer.php');
		 }
		 
		}
		/************************************AddNewPoductList************************************/
		public function GetAllNewProductList()
		{
			 if(isset($_SESSION['Current_Business']))
			 {
					$bid=$_SESSION['Current_Business'];
				
			 }else
			 {
				 $bid=$_SESSION['status']['business_id'];
				 
			 }
		   $AllCatListData= $this->db->query("select * from dev_productlist");
		   $AllCatList=$AllCatListData->result_array();
		   echo json_encode($AllCatList);
		}
		public function ProductList()
		{
			 $this->load->view('header.php');              
			$this->load->view('sidebar.php');
			$this->load->view('ProductList.php');
			$this->load->view('footer.php');;
		}
		public function AddNewProductList()
		{
			 $this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('AddNewProductList.php');
			$this->load->view('footer.php');;
		}
		/***********************Notifictions****************/
		public function Notifictions()
		{
			$this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('Notifictions.php');
			$this->load->view('footer.php');;
			
			
		}
		public function EditNewProductList()
		{
			
			if($this->input->post('updateListName'))
			{
				$id=$this->input->post('hiddenid');
				$addlist=$this->input->post('addlist');
				$data=array('id'=>$id,'productlistname'=>$addlist);
				$this->db->where('id', $id);
				$this->db->update('dev_productlist', $data);
				redirect('ProductList');
			}
			else
			{
				$this->load->view('header.php');
				$this->load->view('sidebar.php');
				$this->load->view('EditNewProductList.php');
				$this->load->view('footer.php');;
			}
		}
		/********************************GetAllNtofications***************************/
		 public function GetAllNtofications()
		 {
			 if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_Notifications',array('businees_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_Notifications');
				  
				  
			  }
		   
		  $data=$dataobj->result_array();
	
		  echo json_encode($data);
			 
			 
			 
		 }
		
		
		
		
		/**************************************************notification***************************************/
		public function SendNewThemeNotification()
		{
			
			 $this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('SendNewThemeNotification.php');
			$this->load->view('footer.php');;
			
		}
		
		/******************Order Page **************************/
		public function GetNewThemeAllOrder()
		{
			if(isset($_SESSION['Current_Business']))
			{
				$business=$_SESSION['Current_Business']; 
				$orders=$this->db->query("select *from dev_orders inner join dev_single_order on dev_orders.id= dev_single_order.Reffrence_id where dev_orders.business_id='$business' && dev_orders.status='0'");
				
				
			}
			else
			{
				$business=$_SESSION['status']['business_id'];
				$orders=$this->db->query("select *from dev_orders inner join dev_single_order on dev_orders.id= dev_single_order.Reffrence_id && dev_orders.status='0'");
					
			}
			$orders=$orders->result_array(); 
			echo json_encode($orders);
		}
		/******************Order Page **************************/
		public function GetNewThemeAllAwatingOrder()
		{
			if(isset($_SESSION['Current_Business']))
			{
				$business=$_SESSION['Current_Business']; 
				$orders=$this->db->query("select *from dev_orders inner join dev_single_order on dev_orders.id= dev_single_order.Reffrence_id where dev_orders.business_id='$business' && dev_orders.status='1'");
				
				
			}
			else
			{
				$business=$_SESSION['status']['business_id'];
				$orders=$this->db->query("select *from dev_orders inner join dev_single_order on dev_orders.id= dev_single_order.Reffrence_id && dev_orders.status='1'");
					
			}
			$orders=$orders->result_array(); 
			echo json_encode($orders);
		}
		/****************************Quotes section**********************************/
		
		
		/******************OrderUnderProject Page **************************/
		public function GetNewThemeOrderUnderProject()
		{
			$id=$_REQUEST['id'];
		
			if(isset($_SESSION['Current_Business']))
			{
				$business=$_SESSION['Current_Business']; 
				$orders=$this->db->query("select *from dev_orders inner join dev_single_order on dev_orders.id = dev_single_order.Reffrence_id where  business_id='$business' && givenprojectid='$id' ");
			    
			}
			else
			{
				$business=$_SESSION['status']['business_id'];
				$orders=$this->db->query("select *from dev_orders  inner join dev_single_order on dev_orders.id= dev_single_order.Reffrence_id ");
			
			}
		
			$orders=$orders->result_array(); 
			echo json_encode($orders);
		}
		/****************************************************Awting Order View****************************/
		public function AwtingOrderView()
		{
				$this->load->view('header.php');
				$this->load->view('sidebar.php');
				$this->load->view('AllAwatingOrders.php');
				$this->load->view('footer.php');;
		}
		/****************************OrderUnderProject section**********************************/
		public function GetNewThemeAllQuotes()
		{
				if(isset($_SESSION['Current_Business']))
				{
					$business=$_SESSION['Current_Business']; 
					$quotes=$this->db->query("select *from dev_quotes  where business_id='$business' ORDER BY id ASC");}
				else
				{
					$business=$_SESSION['status']['business_id'];
					$quotes=$this->db->query("select *from dev_quotes  where business_id='$business' ORDER BY id ASC");
				}
			   $quotes=$quotes->result_array();
			   echo json_encode($quotes);
		}
		/******************Print pdf project ***************************/
		public function PrintPdfTableForproject()
		{
			if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_projects',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_projects');
				  
			  }
		   
		  $data=$dataobj->result_array();
	
		  $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/GenratePdfForProject',$viewSend); 
		}
		/******************Print pdf engineer ***************************/
		public function PrintPdfTableForEngineer()
		{
			if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_engineer',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_engineer');
				  
			  }
		  
		  $data=$dataobj->result_array();
		 $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/GenratePdfForEngineer',$viewSend);  
		}
	/******************Print pdf suppliers ***************************/
		public function PrintPdfTableForSuppliers()
		{
			if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_supplier',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_supplier');
				  
			  }
		 
		  $data=$dataobj->result_array();
	
		 $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/GenratePdfForSupplier',$viewSend);  
		}	
		/******************Print pdf Stores ***************************/
		public function PrintPdfTableForStores()
		{
			if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_stores',array('bussiness'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_stores');
				  
			  }
		  $data=$dataobj->result_array();
	
		 $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/GenratePdfForStores',$viewSend);  
		}
			
		/******************Print pdf orders ***************************/
		public function PrintPdfTableFororder()
		{
			if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_orders',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_orders');
				  
			  }
		  
		  $data=$dataobj->result_array();
	
		 $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/GenratePdfFororders',$viewSend);  
		}
         /******************Print pdf Delevercost ***************************/		
		public function PrintPdfTableForDelevercost()
		{
		if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_delevery',array('bussiness'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_delevery');
				  
			  }
	
		  $data=$dataobj->result_array();
	
		 $viewSend=array('values'=>$data);
		  $this->load->view('PrintViews/GenratePdfForDelevercost',$viewSend);   
		}

         /******************Print pdf users ***************************/		
		public function PrintPdfTableForusers()
		{
		
		 if(isset($_SESSION['Current_Business']))
			   {
				  $bid=$_SESSION['Current_Business'];
				  $Get_Data_W = $this->db->query("select * from dev_engineer where wholeseller_status='1' AND business_id='$bid'");
				  $Get_Data=$Get_Data_W->result_array();
			  }
			  else
			  {
				   $bid=$_SESSION['status']['business_id'];
				   $Get_Data_W = $this->db->query("select * from dev_engineer where wholeseller_status='1' ");
				   $Get_Data=$Get_Data_W->result_array();
			  }
			
		 $viewSend=array('values'=>$Get_Data);
		  $this->load->view('PrintViews/GenratePdfForusers',$viewSend);   
		}
		public function GenratePdfForBusiness()
		{
		
			if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataObj=$this->db->query("select * from  dev_business where id='$bid'");
					$data=$dataObj->result_array();
			   }
			  else
			  {
				   $bid=$_SESSION['status']['business_id'];
				   $dataObj=$this->db->query("select * from  dev_business");
					$data=$dataObj->result_array();
			  }
			 
		 
				  $viewSend=array('values'=>$data);
				  $this->load->view('PrintViews/GenratePdfForBusiness.php',$viewSend);   
		}
		

		
       /************************************make csv file for projects*****************************/ 
        public function MakeCsvFileForProjects()
        { 
		if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_projects',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_projects');
				  
			  }
	
		$data=$dataobj->result_array();
		
		 	  // Create an array of elements 
		$list = array(array('PROJECT NAME ','CUSTOMER ','EMAIL')); 
		foreach($data as $d)
		{
			
			array_push($list,array($d['project_name'],$d['customer_name'],$d['email_address']));
		}
		
		 // Open a file in write mode ('w') 
		$fp = fopen('./images/csv/projects.csv', 'w'); 
		  
		// Loop through file pointer and a line 
		foreach ($list as $fields) { 
			fputcsv($fp, $fields); 
		} 
		  
		fclose($fp);      
         $url = "./images/csv/projects.csv"; 	
        $file_name = basename($url);  
		$info = pathinfo($file_name); 
        if ($info["extension"] == "csv") 
		{ 
			/* Informing the browser that 
			the file type of the concerned 
			file is a MIME type (Multipurpose 
			Internet Mail Extension type). 
			Hence, no need to play the file 
			but to directly download it on 
			the client's machine. */
		header("Content-Description: File Transfer");  
			header("Content-Type: application/octet-stream");  
			header( 
			"Content-Disposition: attachment; filename=\""
			. $file_name . "\"");   
			readfile ($url); 
		}  	 
  }

	
	
	  /************************************make csv file for stores*****************************/ 
        public function MakeCsvFileForstore()
        { 
		if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_stores',array('bussiness'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_stores');
				  
			  }
	
		
		$data=$dataobj->result_array();
		
		 	  // Create an array of elements 
		$list = array(array('ID','STORE NAME','STORE ADDRESS ','DEFAULT')); 
		foreach($data as $d)
		{
			
			array_push($list,array($d['id'],$d['Store_Name'],$d['Store_Address_one'],$d['defaultcheck']));
		}
		
		 // Open a file in write mode ('w') 
		$fp = fopen('./images/csv/stores.csv', 'w'); 
		  
		// Loop through file pointer and a line 
		foreach ($list as $fields) { 
			fputcsv($fp, $fields); 
		} 
		  
		fclose($fp);      
         $url = "./images/csv/stores.csv"; 	
        $file_name = basename($url);  
		$info = pathinfo($file_name); 
        if ($info["extension"] == "csv") 
		{ 
			/* Informing the browser that 
			the file type of the concerned 
			file is a MIME type (Multipurpose 
			Internet Mail Extension type). 
			Hence, no need to play the file 
			but to directly download it on 
			the client's machine. */
		header("Content-Description: File Transfer");  
			header("Content-Type: application/octet-stream");  
			header( 
			"Content-Disposition: attachment; filename=\""
			. $file_name . "\"");   
			readfile ($url); 
		}  	 
  }
  
	  /************************************make csv file for  Delevercost*****************************/ 
        public function MakeCsvFileFordeleverycost()
        { 
		if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_delevery',array('bussiness'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_delevery');
				  
			  }
	
		
		$data=$dataobj->result_array();
		
		 	  // Create an array of elements 
		$list = array(array('TITLE','COST')); 
		foreach($data as $d)
		{
			
			array_push($list,array($d['title'],$d['cost']));
		}
		
		 // Open a file in write mode ('w') 
		$fp = fopen('./images/csv/delevery.csv', 'w'); 
		  
		// Loop through file pointer and a line 
		foreach ($list as $fields) { 
			fputcsv($fp, $fields); 
		} 
		  
		fclose($fp);      
         $url = "./images/csv/delevery.csv"; 	
        $file_name = basename($url);  
		$info = pathinfo($file_name); 
        if ($info["extension"] == "csv") 
		{ 
			/* Informing the browser that 
			the file type of the concerned 
			file is a MIME type (Multipurpose 
			Internet Mail Extension type). 
			Hence, no need to play the file 
			but to directly download it on 
			the client's machine. */
		header("Content-Description: File Transfer");  
			header("Content-Type: application/octet-stream");  
			header( 
			"Content-Disposition: attachment; filename=\""
			. $file_name . "\"");   
			readfile ($url); 
		}  	 
  }
   /************************************make csv file for  Orders*****************************/ 
        public function MakeCsvFileFororders()
        { 
		if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_orders',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_orders');
				  
			  }
	
		
		$data=$dataobj->result_array();
		
		 	  // Create an array of elements 
		$list = array(array('PO NUMBER','DATE','PROJECT','TOTAL EX VAT' ,'TOTAL INC VAT', 'STATUS')); 
		foreach($data as $d)
		{
			
			array_push($list,array($d['po_number'],$d['date'],$d['givenprojectid'],$d['total_ex_vat'],$d['total_inc_vat'],$d['status']));
		}
		
		 // Open a file in write mode ('w') 
		 
		$fp = fopen('./images/csv/orders.csv', 'w'); 
		  
		// Loop through file pointer and a line 
		foreach ($list as $fields) { 
			fputcsv($fp, $fields); 
		} 
		  
		fclose($fp);      
         $url = "./images/csv/orders.csv"; 	
        $file_name = basename($url);  
		$info = pathinfo($file_name); 
        if ($info["extension"] == "csv") 
		{ 
			/* Informing the browser that 
			the file type of the concerned 
			file is a MIME type (Multipurpose 
			Internet Mail Extension type). 
			Hence, no need to play the file 
			but to directly download it on 
			the client's machine. */
		header("Content-Description: File Transfer");  
			header("Content-Type: application/octet-stream");  
			header( 
			"Content-Disposition: attachment; filename=\""
			. $file_name . "\"");   
			readfile ($url); 
		}  	 
  }	
    /************************************make csv file for  users*****************************/ 
        public function MakeCsvFileForuser()
        { 
		if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_engineer',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_engineer');
				  
			  }
		
		$data=$dataobj->result_array();
		
		 	  // Create an array of elements 
		$list = array(array('NAME','USER_NAME','EMAIL ADDRESS')); 
		foreach($data as $d)
		{
			
			array_push($list,array($d['name'],$d['user_name'],$d['email']));
		}
		
		 // Open a file in write mode ('w') 
		 
		$fp = fopen('./images/csv/users.csv', 'w'); 
		  
		// Loop through file pointer and a line 
		foreach ($list as $fields) { 
			fputcsv($fp, $fields); 
		} 
		  
		fclose($fp);      
         $url = "./images/csv/users.csv"; 	
        $file_name = basename($url);  
		$info = pathinfo($file_name); 
        if ($info["extension"] == "csv") 
		{ 
			/* Informing the browser that 
			the file type of the concerned 
			file is a MIME type (Multipurpose 
			Internet Mail Extension type). 
			Hence, no need to play the file 
			but to directly download it on 
			the client's machine. */
		header("Content-Description: File Transfer");  
			header("Content-Type: application/octet-stream");  
			header( 
			"Content-Disposition: attachment; filename=\""
			. $file_name . "\"");   
			readfile ($url); 
		}  	 
  }	
   /************************************make csv file for  ProductList*****************************/ 
        public function MakeCsvFileForProductList()
        { 
		if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_productlist',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_productlist');
				  
			  }
		
		$data=$dataobj->result_array();
		
		 	  // Create an array of elements 
		$list = array(array('LIST')); 
		foreach($data as $d)
		{
			
			array_push($list,array($d['productlistname']));

		}
		
		 // Open a file in write mode ('w') 
		 
		$fp = fopen('./images/csv/ProductList.csv', 'w'); 
		  
		// Loop through file pointer and a line 
		foreach ($list as $fields) { 
			fputcsv($fp, $fields); 
		} 
		  
		fclose($fp);      
         $url = "./images/csv/ProductList.csv"; 	
        $file_name = basename($url);  
		$info = pathinfo($file_name); 
        if ($info["extension"] == "csv") 
		{ 
			/* Informing the browser that 
			the file type of the concerned 
			file is a MIME type (Multipurpose 
			Internet Mail Extension type). 
			Hence, no need to play the file 
			but to directly download it on 
			the client's machine. */
		header("Content-Description: File Transfer");  
			header("Content-Type: application/octet-stream");  
			header( 
			"Content-Disposition: attachment; filename=\""
			. $file_name . "\"");   
			readfile ($url); 
		}  	 
  }	
    /************************************make csv file for  engineer*****************************/ 
        public function MakeCsvFileForEngineer()
        { 
		if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where('dev_engineer',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get('dev_engineer');
				  
			  }
	
		$data=$dataobj->result_array();
		
		 	  // Create an array of elements 
		$list = array(array('NAME','USER_NAME','EMAIL ADDRESS')); 
		foreach($data as $d)
		{
			
			array_push($list,array($d['name'],$d['user_name'],$d['email']));
		}
		
		 // Open a file in write mode ('w') 
		 
		$fp = fopen('./images/csv/engineer.csv', 'w'); 
		  
		// Loop through file pointer and a line 
		foreach ($list as $fields) { 
			fputcsv($fp, $fields); 
		} 
		  
		fclose($fp);      
         $url = "./images/csv/engineer.csv"; 	
        $file_name = basename($url);  
		$info = pathinfo($file_name); 
        if ($info["extension"] == "csv") 
		{ 
			/* Informing the browser that 
			the file type of the concerned 
			file is a MIME type (Multipurpose 
			Internet Mail Extension type). 
			Hence, no need to play the file 
			but to directly download it on 
			the client's machine. */
		header("Content-Description: File Transfer");  
			header("Content-Type: application/octet-stream");  
			header( 
			"Content-Disposition: attachment; filename=\""
			. $file_name . "\"");   
			readfile ($url); 
		}  	 
  
} 
/************************************make csv file for  suppliers*****************************/ 
        public function MakeCsvFileForsuppliers()
        { 
		if(isset($_SESSION['Current_Business']))
			   {
				   $bid=$_SESSION['Current_Business'];
				   $dataobj=$this->db->get_where(' dev_supplier',array('business_id'=>$bid));
				  
			   }
			  else
			  {
				  
				   $dataobj=$this->db->get(' dev_supplier');
				  
			  }
	
		$data=$dataobj->result_array();
		
		 	  // Create an array of elements 
		$list = array(array('SUPPLIER NAME','CONTACT NAME','EMAIL')); 
		foreach($data as $d)
		{
			
			array_push($list,array($d['suppliers_name'],$d['contact_name'],$d['email']));
		}
		
		 // Open a file in write mode ('w') 
		 
		$fp = fopen('./images/csv/suppliers.csv', 'w'); 
		  
		// Loop through file pointer and a line 
		foreach ($list as $fields) { 
			fputcsv($fp, $fields); 
		} 
		  
		fclose($fp);      
         $url = "./images/csv/suppliers.csv"; 	
        $file_name = basename($url);  
		$info = pathinfo($file_name); 
        if ($info["extension"] == "csv") 
		{ 
			/* Informing the browser that 
			the file type of the concerned 
			file is a MIME type (Multipurpose 
			Internet Mail Extension type). 
			Hence, no need to play the file 
			but to directly download it on 
			the client's machine. */
		header("Content-Description: File Transfer");  
			header("Content-Type: application/octet-stream");  
			header( 
			"Content-Disposition: attachment; filename=\""
			. $file_name . "\"");   
			readfile ($url); 
		}  	 
  
	} 
	/********************deletenotofication****************************/
	public function DeleteNotification()
	{
		$id=$_REQUEST['id'];
	    $this->db->delete('dev_Notifications',array('id'=>$id));
        if($this->db->affected_rows())
		{
			redirect('Notifictions');
		}		
		
	}
	/***********************deleteproducts*********************/
	public function DeleteProducts()
	{
		$id=$_REQUEST['id'];
		$this->db->where('id', $id);
			$this->db->delete('dev_products');
		if($this->db->affected_rows())
		{
			redirect('products');
		}
		
	}
	/*************************  GetAllDataQuotes  *********************/
	public function GetAllDataQuotes()
	{
			 if(isset($_SESSION['Current_Business'])){$business=$_SESSION['Current_Business']; 
		$quotes=$this->db->query("select *from dev_Quotes  where business_id='$business' ORDER BY id ASC");}
			
		else{
			$business=$_SESSION['status']['business_id'];
			$quotes=$this->db->query("select *from dev_Quotes  where business_id='$business' ORDER BY id ASC");
		}
		   $quotes=$quotes->result_array();
		   echo json_encode($quotes);
		   
	}
	/**************Get category***********/
	public function GetCatOnNewTheme()
	{
		 if(isset($_SESSION['Current_Business']))
		 {
		$bid=$_SESSION['Current_Business'];
		 }
		 else
		 {
			 $bid=$_SESSION['status']['business_id'];
			 
		 }
	   $AllCatList= $this->ProductCategoryModal->GetAllCat($bid);
	   $cat_array=array();
	   $storecat=array();
	   foreach($AllCatList as $SingleList ) 
	   { 
			if(!in_array($SingleList['cat_name'], $storecat))
			{
			 
			  array_push($storecat,$SingleList['cat_name']); 
			  array_push($cat_array,array('Unique'=>$SingleList['id'],'cat_name'=>$SingleList['cat_name'],'id'=>$SingleList['id'],'image'=>$SingleList['image'])); 
			}			
	   }
		echo json_encode($cat_array); 	   
	}
	public function AddNewThemeCat()
	{
		    $this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('AddNewThemeCat.php');
			$this->load->view('footer.php');;
	}
	public function EditNewThemeCategory()
	{
		    $this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('EditNewThemeCategory.php');
			$this->load->view('footer.php');;
	}
	 public function changeCatNewTheme()
	{
		$changedcatid=$_POST['id'];
		$cat_name=$_POST['cat_name'];
		$catimg=$_FILES['cat_img'];
		$image_name_1=$catimg['name'];
		$url_image_name_1=site_url().'/images/category/'.$image_name_1;
		 if(move_uploaded_file($catimg["tmp_name"],"images/category/".$image_name_1))
		 {
				$this->db->query("update dev_product_cat SET image='$url_image_name_1',cat_name='$cat_name' where id=$changedcatid ");
				if($this->db->affected_rows())
				{
					redirect('category');
				}
				
		 }

	}
	public function NewThemeFillter()
	{
		$fillArray=array();
		if(isset($_SESSION['Current_Business']))
		{
			$business_id=$_SESSION['Current_Business'];
		}
		else
		{   
			$business_id=$_SESSION['status']['business_id'];
		}
		$catFillterObj=$this->db->query("select * from dev_product_cat where business_id='$business_id' && filter!=''");
		$catFillterArray=$catFillterObj->result_array();
		foreach($catFillterArray as $single)
		{
           if(count(unserialize($single['filter'])))
			{
				
				array_push($fillArray,array('id'=>$single['id'],'cat'=>$single['cat_name']));
			}
		}
         echo json_encode($fillArray);
	}
	
	public function AddNewThemeFilter()
	{
		if(isset($_SESSION['Current_Business']))
			{
				$business_id=$_SESSION['Current_Business'];
			}
			else
			{   
				$business_id=$_SESSION['status']['business_id'];
			}
			$catobj=$this->db->query("select * from dev_product_cat where business_id='$business_id' ");
			$catArray=$catobj->result_array();
            $data=array('key'=>$catArray);
		$this->load->view('header.php');
			$this->load->view('sidebar.php');
			$this->load->view('AddNewThemeFilter.php',$data);
			$this->load->view('footer.php');;
	}
}    
      
?> 