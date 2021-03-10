<?php
session_start();

?>
<!--begin::Aside-->
				<div class="aside aside-left aside-fixed d-flex flex-column flex-row-auto" id="kt_aside">
					<!--begin::Brand-->
					<div class="brand flex-column-auto" id="kt_brand">  
						<!--begin::Logo-->
						<a href="index.html" class="brand-logo">
							<img alt="Logo" src="<?php echo base_url(); ?>/assets/images/newlogoleatest.png" class="h-30px" />
						</a>
						<!--end::Logo-->
						<!--begin::Toggle-->
						<button class="brand-toggle btn btn-sm px-0" id="kt_aside_toggle">
							<span class="svg-icon svg-icon svg-icon-xl">
								<!--begin::Svg Icon | path:new/assets/media/svg/icons/Text/Toggle-Right.svg-->
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
									<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
										<rect x="0" y="0" width="24" height="24" />
										<path fill-rule="evenodd" clip-rule="evenodd" d="M22 11.5C22 12.3284 21.3284 13 20.5 13H3.5C2.6716 13 2 12.3284 2 11.5C2 10.6716 2.6716 10 3.5 10H20.5C21.3284 10 22 10.6716 22 11.5Z" fill="black" />
										<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M14.5 20C15.3284 20 16 19.3284 16 18.5C16 17.6716 15.3284 17 14.5 17H3.5C2.6716 17 2 17.6716 2 18.5C2 19.3284 2.6716 20 3.5 20H14.5ZM8.5 6C9.3284 6 10 5.32843 10 4.5C10 3.67157 9.3284 3 8.5 3H3.5C2.6716 3 2 3.67157 2 4.5C2 5.32843 2.6716 6 3.5 6H8.5Z" fill="black" />
									</g>
								</svg>
								<!--end::Svg Icon-->
							</span>
						</button>
						<!--end::Toolbar-->
					</div>
					<!--end::Brand-->
	
					<!--begin::Aside Menu-->
					<div class="aside-menu-wrapper flex-column-fluid" id="kt_aside_menu_wrapper">
						<!--begin::Menu Container-->
						<div id="kt_aside_menu" class="aside-menu my-4" data-menu-vertical="1" data-menu-scroll="1" data-menu-dropdown-timeout="500">
							<ul class="menu-nav">
								<?php if(isset($_SESSION['status']) && $_SESSION['status']['role']=='4'){	?>
								<li  class="menu-item " aria-haspopup="true" >
									<a href="<?php echo site_url('Prescriptions');?>" class="menu-link ">
										<span class="svg-icon menu-icon">
											<!--begin::Svg Icon | path:new/assets/media/svg/icons/Files/Upload.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<rect x="0" y="0" width="24" height="24" />
													<path d="M2,13 C2,12.5 2.5,12 3,12 C3.5,12 4,12.5 4,13 C4,13.3333333 4,15 4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 C2,15 2,13.3333333 2,13 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" />
													<rect fill="#000000" opacity="0.3" x="11" y="2" width="2" height="14" rx="1" />
													<path d="M12.0362375,3.37797611 L7.70710678,7.70710678 C7.31658249,8.09763107 6.68341751,8.09763107 6.29289322,7.70710678 C5.90236893,7.31658249 5.90236893,6.68341751 6.29289322,6.29289322 L11.2928932,1.29289322 C11.6689749,0.916811528 12.2736364,0.900910387 12.6689647,1.25670585 L17.6689647,5.75670585 C18.0794748,6.12616487 18.1127532,6.75845471 17.7432941,7.16896473 C17.3738351,7.57947475 16.7415453,7.61275317 16.3310353,7.24329415 L12.0362375,3.37797611 Z" fill="#000000" fill-rule="nonzero" />
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span>
										<span class="menu-text">Prescriptions</span>
										
									</a>
									<div class="menu-submenu">
										
									
									</div>
								</li>
								<?php } 
									
									
									
									
									
									
									
									
									
									?>
									
									
									
								
							
							
							
							
							
							
							
							
							</ul>
							<!--end::Menu Nav-->
						</div>
						<!--end::Menu Container-->
					</div>
					<!--end::Aside Menu-->
				</div>
				<!--end::Aside-->                
<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
						<!--begin::Subheader-->
						<div class="subheader py-6 py-lg-8 subheader-transparent" id="kt_subheader">
							<div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
								<!--
								<div class="col-md-6 d-flex align-items-center flex-wrap">
									
									<div class="d-flex align-items-center flex-wrap mr-5">
									
										 <h5 class="text-dark font-weight-bold my-1 mr-5">
										<?php
										$take = ucfirst(trim($_SERVER['PATH_INFO'],'/'));
										 
										
										if($take=='Editbusiness'){ echo "Edit Business";}
										else if($take=='Editusers'){ echo "Edit Users";}
										else if($take=='Edit_single_product'){ echo "Edit Single Product";}
										else if($take=='CatDetails'){ echo "Category Details";}
										else if($take=='SubCatDetails'){ echo "Sub Category Details";}
										else if($take=='Editsuppliers'){echo "Edit Suppliers";}
										else if($take=='Editengineer'){echo "Edit $type";}
										else if($take=='Editprojects'){echo "Edit Projects";}
										else if($take=='Variationpage'){echo "Variation Page";}
										else if($take=='Wholesaler'){echo "Users";}
										else if($take=='EditWholesaler'){echo "Edit User";}
										else if($take=='ManageOrder'){echo "Manage Order";}
										else if($take=='Categorylist'){echo "Category List";}
										else if($take=='Catinsidelist'){echo "Category of List";}
										else if($take=='CategoriesListTransfer'){echo "Categories List Transfer";}
										else if($take=='Cetalogues'){echo "Catalogues";}
										else if($take=='OrderUnderProject'){echo "Orders Under Project";}
										else if($take=='AddNewWholesaller'){echo "Add New Wholesaller";}
										else if($take=='AddNewThemeStore'){echo "Add New ThemeStore";}
										else if($take=='AddNewAdminUsers'){echo "Add New Admin Users";}
										else if($take=='AddNewDeleverCost'){echo "Add New DeleverCost";}
									    else if($take=='AddNewBusiness'){echo "Add New Business";}
						                else if($take=='NewCetalogues'){echo "New Cetalogues";}
										else if($take=='AddNewProjects'){echo "Add New Projects";}
										else if($take=='InvoiceView'){echo "Invoice View";}
										else if($take=='GetNewSuppliers'){echo "Get New Suppliers";}
				 		                else if($take=='AddNewEngineer'){echo "Add New Engineer";}
		                         		else if($take=='AwtingOrderView'){echo "Awting Order View";}
										else if($take=='AddNeThemeProduct'){echo "Add New Theme Product";}
									    else if($take=='SendNewThemeNotification'){echo "Send New Theme Notification";}
										else if($take=='Engineer'){echo "$type";}
										else{echo $take;} 
										?>
										</h5>
										
									</div>
									
								</div>
								-->
								<!--begin::Toolbar-->
								<div class="col-md-6 d-flex align-items-center flex-wrap justify-content-end">
								
									<!--end::Dropdown-->
								</div>
								<!--end::Toolbar-->
							</div>
						</div>
						<!--end::Subheader-->				
				