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
								
								<li class="menu-item menu-item-submenu menu-item-open" aria-haspopup="true" data-menu-toggle="hover">
									<a href="javascript:;" class="menu-link menu-toggle">
										<span class="svg-icon menu-icon">
											<!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Design/Bucket.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<rect x="0" y="0" width="24" height="24"></rect>
													<path d="M5,5 L5,15 C5,15.5948613 5.25970314,16.1290656 5.6719139,16.4954176 C5.71978107,16.5379595 5.76682388,16.5788906 5.81365532,16.6178662 C5.82524933,16.6294602 15,7.45470952 15,7.45470952 C15,6.9962515 15,6.17801499 15,5 L5,5 Z M5,3 L15,3 C16.1045695,3 17,3.8954305 17,5 L17,15 C17,17.209139 15.209139,19 13,19 L7,19 C4.790861,19 3,17.209139 3,15 L3,5 C3,3.8954305 3.8954305,3 5,3 Z" fill="#000000" fill-rule="nonzero" transform="translate(10.000000, 11.000000) rotate(-315.000000) translate(-10.000000, -11.000000)"></path>
													<path d="M20,22 C21.6568542,22 23,20.6568542 23,19 C23,17.8954305 22,16.2287638 20,14 C18,16.2287638 17,17.8954305 17,19 C17,20.6568542 18.3431458,22 20,22 Z" fill="#000000" opacity="0.3"></path>
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span>
										<span class="menu-text">Prescriptions</span>
										<i class="menu-arrow"></i>
									</a>
									<div class="menu-submenu" kt-hidden-height="80" style="">
										<i class="menu-arrow"></i>
										<ul class="menu-subnav">
											<li class="menu-item menu-item-parent" aria-haspopup="true">
												<span class="menu-link">
													<span class="menu-text">Themes</span>
												</span>
											</li>
											<li class="menu-item" aria-haspopup="true">
												<a href="<?php echo site_url('Prescriptions');?>" class="menu-link">
													<i class="menu-bullet menu-bullet-dot">
														<span></span>
													</i>
													<span class="menu-text">New Uploaded</span>
												</a>
											</li>
											<li class="menu-item" aria-haspopup="true">
												<a href="<?php echo site_url('ExceptedPrescriptions') ;?>" class="menu-link">
													<i class="menu-bullet menu-bullet-dot">
														<span></span>
													</i>
													<span class="menu-text">Excepted</span>
												</a>
											</li>
										</ul>
									</div>
								</li>
								<?php }else{ print_r($_SESSION['status']);}
									
									
									
									
									
									
									
									
									
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
				