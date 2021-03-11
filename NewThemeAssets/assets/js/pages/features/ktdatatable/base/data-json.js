"use strict";
// Class definition

var KTDatatableJsonRemoteDemo = function() {
    // Private functions

    // basic demo
    var business = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/GetAllBusiness",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: 'id',
                title: 'id',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            }, {
                field: 'business_name',
				 width: 200,
                title: 'Business Name',
            }, {
                field: 'email',
                title: 'email',
				 width: 250,
                template: function(row) {
                    return row.email ;
                },
            }, {
                field: 'app_status',
                title: 'Status',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, {
                field: 'iswholeapp',
                title: 'Type',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="editbusiness?id='+row.id+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                        <a href="delete?id='+row.id+'&type=business" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },
            }],

        });

        $('#kt_datatable_search_status').on('change', function() {
				
            datatable.search($(this).val().toLowerCase(), 'app_status');
		
        });

        $('#kt_datatable_search_type').on('change', function() {
            datatable.search($(this).val().toLowerCase(), 'iswholeapp');
        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    };          
 //For User section 
    var users = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/getBusinessUsers",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: 'id',
                title: 'id',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            }, 
			{
                field: 'user_name',
				 width: 200,
                title: 'User Name',
            },
			{
                field: 'business',
				 width: 200,
                title: 'Business Name',
            },
			{
                field: 'last_login',
				 width: 200,
                title: 'Last Login',
            }
			, {
                field: 'email',
                title: 'Login as this User',
				 width: 200,
                 template: function(row) {
				
                  
                    return "<a href='https://stagingapp.pickmyorder.co.uk/adminlogin?id="+row.id+"'>Login</a>";
                },
            },/*  {
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="editusers?id='+row.id+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                        <a href="delete?id='+row.id+'&type=users" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },            
            }],

        });

        $('#kt_datatable_search_status').on('change', function() {
				
            datatable.search($(this).val().toLowerCase(), 'app_status');
		
        });

        $('#kt_datatable_search_type').on('change', function() {
            datatable.search($(this).val().toLowerCase(), 'iswholeapp');
        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    };      
	 //For supplier section 
    var supplier = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/GetAllNewSuppliers",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: 'id',
                title: 'id',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            }, 
			{
                field: 'suppliers_name',
				 width: 200,
                title: 'Supplier Name',
            },
			{
                field: 'contact_name',
				 width: 200,
                title: 'Contact Name',
            },
			/* {
                field: 'last_login',
				 width: 200,
                title: 'Last Login',
            }
			, */ {
                field: 'email',
                title: 'Email',
				 width: 250,
                template: function(row) {
                    return row.email ;
                },
            },/*  {
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="editsuppliers?id='+row.id+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                        <a href="deletesuppliers?id='+row.id+'" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },            
            }],

        });

        $('#kt_datatable_search_status').on('change', function() {
				
            datatable.search($(this).val().toLowerCase(), 'app_status');
		
        });

        $('#kt_datatable_search_type').on('change', function() {
            datatable.search($(this).val().toLowerCase(), 'iswholeapp');
        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    };      
	
	//project section 
	
	 //For User section 
    var Projects = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/GetAllNewProjects",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: '',
                title: 'Project Number',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            }, 
			{
                field: 'project_name',
				 width: 200,
                title: 'Project Name',
            },
			{
                field: 'customer_name',
				 width: 200,
                title: 'Customer',
            },
			/* {
                field: 'last_login',
				 width: 200,
                title: 'Last Login',
            }
			, */ {
                field: 'email_address',
                title: 'Email',
				 width: 250,
                
			},
				{
                field: 'id',
                title: 'View Orders',
				 width: 250,
                template: function(row) {
                    return '<a href="OrderUnderProject?id='+row.id+'">View</a>' ;
                },
            },/*  {
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="editprojects?id='+row.id+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                        <a href="deleteproject?id='+row.id+'" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },            
            }],

        });

        $('#kt_datatable_search_status').on('change', function() {
				
            datatable.search($(this).val().toLowerCase(), 'app_status');
		
        });

        $('#kt_datatable_search_type').on('change', function() {
            datatable.search($(this).val().toLowerCase(), 'iswholeapp');
        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    }; 
	 //For Engineer  
    var WholsalerEnginer = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/GetWholsalerEngineer",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,            

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: 'id',
                title: 'id',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            },
			{
                field: 'name',
				 width: 200,
                title: 'Name',
            },
			{
                field: 'Operative',
				 width: 200,
                title: 'Type',
				template: function(row) {
				  var status = {
                        0: {
                            'title': 'Business',
                            
                        },
                        1: {
                            'title': 'Oprative',
                            
                        },
                        
                    };
					
					if(row.atradeya_retail)
					{
						 return "Guest" ;
					}
					else
					{
                     return status[row.Operative].title ;
					}
            }},
			
			{
                field: 'user_name',
				 width: 200,
                title: 'user_name',
            },
			/* {
                field: 'user_name',
				 width: 200,
                title: 'Username',
            }, */
			/* {
                field: 'last_login',
				 width: 200,
                title: 'Last Login',
            }
			, */ 
			
				{
                field: 'email',
                title: 'Email Address',
				 width: 250,
                template: function(row) {
                    return row.email ;
                },
            },/*  {
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="EditWholesaler?id='+row.id+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                        <a href="deleteengineer?id='+row.id+'&uid='+row.user_id+'" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },            
            }],

        });

        $('#kt_datatable_search_status').on('change', function() {
				
            datatable.search($(this).val().toLowerCase(), 'app_status');
		
        });

        $('#kt_datatable_search_type').on('change', function() {
            datatable.search($(this).val().toLowerCase(), 'iswholeapp');
        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    }; 
		 //For Engineer  
    var Engineer = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/GetAllEngineer",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,            

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: 'id',
                title: 'Project Number',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            }, 
			{
                field: 'name',
				 width: 200,
                title: 'Name',
            },
			{
                field: 'user_name',
				 width: 200,
                title: 'Username',
            },
			{
				field: 'Operative',
				 width: 200,
                title: 'Type',
				template: function(row) {
				  var status = {
                        0: {
                            'title': 'Supervisor',
                            
                        },
                        1: {
                            'title': 'Oprative',
                            
                        },
                        
                    };
                    return status[row.Operative].title ;
            }},
			/* {
                field: 'last_login',
				 width: 200,
                title: 'Last Login',
            }
			, */ 
			
				{
                field: 'email',
                title: 'Email Address',
				 width: 250,
                template: function(row) {
                    return row.email ;
                },
            },/*  {
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="editengineer?id=='+row.id+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                        <a href="deleteengineer?id='+row.id+'&&uid='+row.user_id+'" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },            
            }],

        });



        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    }; 

      
				 //For DeleveryCost page  
    var DeleveryCost = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/GetNewDeleveryCost",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,            

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: 'id',
                title: 'id',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            },
			{
                field: 'title',
				 width: 200,
                title: 'title',
            },
			
			
			{
                field: 'cost',
				 width: 200,
                title: 'cost',
            },
			/* {
                field: 'user_name',
				 width: 200,
                title: 'Username',
            }, */
			/* {
                field: 'last_login',
				 width: 200,
                title: 'Last Login',
            }
			, */ 
			
				/* {
                field: 'email',
                title: 'Email Address',
				 width: 250,
                template: function(row) {
                    return row.email ;
                }, */
            /*  {
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="UpdateDeleveryCost?id='+row.id+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                        <a href="deleteshipping?id='+row.id+'" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },            
            }],

        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    }; 
	// Stores
	
	   var Stores = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/GetOurStoreSection",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,            

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: 'id',
                title: 'id',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            },
			{
                field: 'name',
				 width: 200,
                title: 'Store Name',
            },
			
			
			{
                field: 'address',
				 width: 200,
                title: 'Store Address',
            },
			 {
                field: 'email',
				 width: 200,
                title: 'Email',
            },
			 {
                field: 'Rating',
				 width: 200,
                title: 'Rating',
            },
			 {
                field: 'Contact',
				 width: 200,
                title: 'contact',
            },
			  {
                field: 'logo',
                title: 'Store Logo',
				 width: 250,
                template: function(row) {
                  //  return  "<img src='https://localhost/App-Login/"row.voucher_logo"' style='width:50px;heigth50px'>";
				 }}, 
			{
                field: 'status',
				 width: 200,
                title: 'Status',
            },
			/* {
                field: 'last_login',
				 width: 200,
                title: 'Last Login',
            }
			, */ 
			
				/* {
                field: 'email',
                title: 'Email Address',
				 width: 250,
                template: function(row) {
                    return row.email ;
                }, */
            /*  {
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="EditStore/'+row.id+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                        <a href="#" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },            
            }],

        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    }; 
	/*******************************Add New ProductsList******************************************************/

	
	   var ProductsList = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/GetAllNewProductList",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,            

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: 'id',
                title: 'List Id',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            },
			{
                field: 'productlistname',
				 width: 200,
                title: 'List',
            },
			
			/* {
                field: 'last_login',
				 width: 200,
                title: 'Last Login',
            }
			, */ 
			
				 {
                field: '',
                title: 'View',
				 width: 250,
                template: function(row) {
                    return  "<a href='ManageList?listid="+row.id+"'>View</a>";
				 }}, 
				 
					 {
                field: ' ',
                title: 'Master List',
				 width: 250,
                template: function(row) {
                    return  "<input type='checkbox' class='singlechecklist' style='background-color: #EBEDF3;border: 1px solid transparent;height: 18px;width: 18px;'>";
				 }}, 
            /*  {              
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',    
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="EditNewProductList?id='+row.id+'&name='+row.productlistname+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                        <a href="DeleteProductList?id='+row.id+'" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },            
            }],

        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    }; 
	
	/*******************************Order section******************************************************/

	
	   var Order = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/GetNewThemeAllOrder",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,            

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: 'id',
                title: 'id',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            },
			{
                field: 'po_reffrence',
				 width: 80,
                title: 'PO NUMBER',
            },
			{
                field: 'date',
				 width: 100,
                title: 'Date',         
            },
			
			/* {
                field: 'last_login',
				 width: 200,
                title: 'Last Login',
            }
			, */ 
			
					{
						field: 'givenprojectname',
						 width: 100,
						title: 'Project',
					},
					{
						field: 'order_desc',
						 width: 150,
						title: 'Order Description',
					},
					/* {
						field: 'productlistname',
						 width: 100,
						title: 'Description',
					}, */
					{
						field: 'total_ex_vat',
						 width: 100,
						title: 'Total EX VAT',
						template: function(row)
						{
							return  "£"+row.total_ex_vat;
						}
					},
					{
						field: 'total_inc_vat',
						 width: 120,
						title: 'Total INC VAT',
						
						template: function(row)
						{
							return  "£"+row.total_inc_vat;
						}
					},
					
					{
						field: 'status',
						 width: 60,
						title: 'Status',
						 template: function(row) {
                    var statusw = {
                        0: {
                            'title': 'Order',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Panding',
                            'class': ' label-light-primary'
                        },
                       
                    };                      
                    return  statusw[row.status].title; 
                },
					},
            /*  {              
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 100,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="manageOrder?id='+row.id+'&orderno='+row.po_number+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                      ';
                },            
            }],

        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    }; 
	
	/********************************************************************AWATING ORDERS****************************************************************
	***************************************************/

	
	   var AwatingOrders = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/GetNewThemeAllAwatingOrder",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,            

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: 'id',
                title: 'id',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            },
			{
                field: 'po_reffrence',
				 width: 80,
                title: 'PO NUMBER',
            },
			{
                field: 'date',
				 width: 100,
                title: 'Date',         
            },
			
			/* {
                field: 'last_login',
				 width: 200,
                title: 'Last Login',
            }
			, */ 
			
					{
						field: 'givenprojectname',
						 width: 100,
						title: 'Project',
					},
					{
						field: 'order_desc',
						 width: 150,
						title: 'OrderDescription',
					},
					/* {
						field: 'productlistname',
						 width: 100,
						title: 'Description',
					}, */
					{
						field: 'total_ex_vat',
						 width: 100,
						title: 'Total EX VAT',
						template: function(row)
						{
							return  "£"+row.total_ex_vat;
						}
					},
					{
						field: 'total_inc_vat',
						 width: 120,
						title: 'Total INC VAT',
						
						template: function(row)
						{
							return  "£"+row.total_inc_vat;
						}
					},
					
					{
						field: 'status',
						 width: 60,
						title: 'Status',
						 template: function(row) {
                    var statusw = {
                        0: {
                            'title': 'Order',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Panding',
                            'class': ' label-light-primary'
                        },
                       
                    };                      
                    return  statusw[row.status].title; 
                },
					},
            /*  {              
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 100,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="manageOrder?id='+row.id+'&orderno='+row.po_number+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                      ';
                },            
            }],

        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    }; 
		/*******************************Quotes******************************************************/

	
	   var Quotes = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/GetAllDataQuotes",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,            

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: '',
                title: '',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            },	//	

			{
                field: 'date',
				 width: 100,
                title: 'Date',
            },
			{
                field: 'po_reffrence',
				 width: 100,
                title: 'Refrence No.',         
            },
			
			 {
                field: 'total_ex_vat',
				 width: 200,
                title: 'Total EX.VAT',
            }
			, 
			
					{
						field: 'total_inc_vat',
						 width: 200,
						title: 'Total INC.VAT',
					},
					  
					
				 {
                field: '',
                title: '',
				 width: 250,
                template: function(row) {
                    return  "<span>View</span>";
				 }}, 
					
            /*  {              
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="manageOrder?id='+row.id+'&orderno='+row.po_number+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                        <a href="DeleteQuote?id='+row.id+'" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },            
            }],

        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    }; 
	/***************************************************Order Under Project*****************************************/
	var orderUnderProject =	 function(id) {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://stagingapp.pickmyorder.co.uk/GetNewThemeOrderUnderProject?id="+id,
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,            

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: 'id',
                title: 'id',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            },
			{
                field: 'po_reffrence',
				 width: 80,
                title: 'PO NUMBER',
            },
			{
                field: 'date',
				 width: 100,
                title: 'Date',         
            },
			
			/* {
                field: 'last_login',
				 width: 200,
                title: 'Last Login',
            }
			, */ 
			
					{
						field: 'givenprojectname',
						 width: 100,
						title: 'Engineer Name',
					},
					/* {
						field: 'productlistname',
						 width: 100,
						title: 'Description',
					}, */
					
					{
						field: 'order_desc',
						 width: 150,
						title: 'ORDERDESCRIPTION ',
					},
					{
						field: 'total_ex_vat',
						 width: 100,
						title: 'Total EX VAT',
						template: function(row)
						{
							return  "£"+row.total_ex_vat;
						}
					},
					{
						field: 'total_inc_vat',
						 width: 120,
						title: 'Total INC VAT',
						
						template: function(row)
						{
							return  "£"+row.total_inc_vat;
						}
					},
					
					{
						field: 'status',
						 width: 60,
						title: 'Status',
						 template: function(row) {
                    var statusw = {
                        0: {
                            'title': 'Order',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Panding',
                            'class': ' label-light-primary'
                        },
                       
                    };                      
                    return  statusw[row.status].title; 
                },
					},
            /*  {              
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 100,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="manageOrder?id='+row.id+'&orderno='+row.po_number+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                      ';
                },            
            }],

        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    };
	/***************************************************************************************************************/
		/***************************************************Products*****************************************/
	var product =	 function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
				// datasource definition
				data: {
					type: 'remote',
					source:"https://stagingapp.pickmyorder.co.uk/GetNewThemeProducts",
					pageSize: 10,
				},

				// layout definition
				layout: {
					scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
					footer: false // display/hide footer
				},

				// column sorting
				sortable: true,            

				pagination: true,

				search: {
					input: $('#kt_datatable_search_query'),
					key: 'generalSearch'
				},

				// columns definition
				columns: [{
					field: 'id',
					title: 'id',
					sortable: false,
					width: 20,
					type: 'number',
					selector: {
						class: ''
					},
					textAlign: 'center',
				},
				{
					field: 'po_reffrence',
					 width: 80,
					title: 'Image',
						 template: function(row) {                   
						return  '<img src=' +row.products_images+ ' width="50px" heigth="50px">'; 
					},
				},
				{
					field: 'title',
					 width: 150,
					title: 'Product Title',         
				},
				{
					field: 'SKU',
					 width: 100,
					title: 'Sku',         
				},
					{
						field: 'publish_status',
						 width: 80,
						title: 'Status',
						  template: function(row) {
                    var status = {
                        1: {
                            'title': 'Publish',
                            'class': ' label-light-success'
                        },
                        0: {
                            'title': 'Un-Publish',
                            'class': ' label-light-primary'
                        },
                       
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.publish_status].class + ' label-inline">' + status[row.publish_status].title + '</span>';
                },
						
					},
            /*  {              
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="Edit_single_product?id='+row.id+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                        <a href="DeleteProducts?id='+row.id+'" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },            
            }],

        });
		
		 $('#kt_datatable_search_status').on('change', function() {
				
            datatable.search($(this).val().toLowerCase(), 'Manufacture');
		
        });

        $('#kt_datatable_search_type').on('change', function() {
            datatable.search($(this).val().toLowerCase(), 'searchcat');
        });
        
        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    };
	/********************************nOTIFICATION***********************************/
	var Notifictions =	 function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
				// datasource definition
				data: {
					type: 'remote',
					source:"https://stagingapp.pickmyorder.co.uk/GetAllNtofications",
					pageSize: 10,
				},

				// layout definition
				layout: {
					scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
					footer: false // display/hide footer
				},

				// column sorting
				sortable: true,            

				pagination: true,

				search: {
					input: $('#kt_datatable_search_query'),
					key: 'generalSearch'
				},

				// columns definition
				columns: [{
					field: 'id',
					title: 'id',
					sortable: false,
					width: 20,
					type: 'number',
					selector: {
						class: ''
					},
					textAlign: 'center',
				},
				{
					field: 'business_name',
					 width: 150,
					title: 'Businees Name',        
				},
				{
					field: 'message',
					 width: 150,
					title: 'Message',         
				},
				{
					field: 'datetime',
					 width: 150,
					title: 'Date/Time',         
				},
            /*  {              
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                      \
                        <a href="DeleteNotification?id='+row.id+'" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },            
            }],

        });
		
		 $('#kt_datatable_search_status').on('change', function() {
				
            datatable.search($(this).val().toLowerCase(), 'Manufacture');
		
        });

        $('#kt_datatable_search_type').on('change', function() {
            datatable.search($(this).val().toLowerCase(), 'searchcat');
        });
        
        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    };
	/*********************Product page*********************/
	var category =	 function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
				// datasource definition
				data: {
					type: 'remote',
					source:"https://stagingapp.pickmyorder.co.uk/GetCatOnNewTheme",
					pageSize: 10,
				},

				// layout definition
				layout: {
					scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
					footer: false // display/hide footer
				},

				// column sorting
				sortable: true,            

				pagination: true,

				search: {
					input: $('#kt_datatable_search_query'),
					key: 'generalSearch'
				},

				// columns definition
				columns: [{
					field: 'id',
					title: 'id',
					sortable: false,
					width: 20,
					type: 'number',
					selector: {
						class: ''
					},
					textAlign: 'center',
				},
				{
					field: 'Unique',
					 width: 150,
					title: 'Unique Id',         
				},
				{
					field: 'image',
					 width: 80,
					title: 'Image',
						 template: function(row) {                   
						return  '<img src=' +row.image+ ' width="50px" heigth="50px">'; 
					},
				},
				{
					field: 'cat_name',
					 width: 150,
					title: 'Category Name',         
				},
				
					
            /*  {              
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="EditNewThemeCategory?id='+row.id+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
						 <a  href="CatDetails?id='+row.id+'&cat_name='+row.cat_name+'" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <i class="fa fa-eye" aria-hidden="true"></i>\
                            </span>\
                        </a>\
                        <a href="DeleteCat?cat_id='+row.id+'" class="btn btn-sm btn-clean btn-icon" title="Delete">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>\
                                        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                    ';
                },            
            }],

        });
		
		 $('#kt_datatable_search_status').on('change', function() {
				
            datatable.search($(this).val().toLowerCase(), 'Manufacture');
		
        });

        $('#kt_datatable_search_type').on('change', function() {
            datatable.search($(this).val().toLowerCase(), 'searchcat');
        });
        
        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    };
		/*********************filter page*********************/
	var fillter =	 function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
				// datasource definition
				data: {
					type: 'remote',
					source:"https://stagingapp.pickmyorder.co.uk/NewThemeFillter",
					pageSize: 10,
				},

				// layout definition
				layout: {
					scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
					footer: false // display/hide footer
				},

				// column sorting
				sortable: true,            

				pagination: true,

				search: {
					input: $('#kt_datatable_search_query'),
					key: 'generalSearch'
				},

				// columns definition
				columns: [{
					field: 'id',
					title: 'id',
					sortable: false,
					width: 20,
					type: 'number',
					selector: {
						class: ''
					},
					textAlign: 'center',
				},
				
				{
					field: 'cat',
					 width: 150,
					title: 'Category Name',         
				},
				
					
            /*  {              
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 125,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {  
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="editfillter?id='+row.id+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\ ';
                },            
            }],

        });
		
		 
        
        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    };
	
	
	
	
	/**********************************************************HELLO PARHMACY************************************************/
		  var pre = function() {
		
        var datatable = $('#kt_datatable').KTDatatable({
            // datasource definition
            data: {
                type: 'remote',
                source:"https://localhost/dashboard/GetNewPrescriptions",
                pageSize: 10,
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false // display/hide footer
            },

            // column sorting
            sortable: true,            

            pagination: true,

            search: {
                input: $('#kt_datatable_search_query'),
                key: 'generalSearch'
            },

            // columns definition
            columns: [{
                field: 'id',
                title: 'id',
                sortable: false,
                width: 20,
                type: 'number',
                selector: {
                    class: ''
                },
                textAlign: 'center',
            },
			{
                field: 'code',
				 width: 100,
                title: 'Code',
            },
			{
                field: 'code_number',
				 width: 100,
                title: 'Code Number',         
            },
			
			{
				field: 'image_file',
				 width: 100,
				title: 'Image',
				template: function(row)
				{
					return  "<img src='"+row.image_file+"' style='width:50px;height:50px'>"
				}
			},
			     
					
					{
						field: 'status',
						 width: 60,
						title: 'Status',
						 template: function(row) {
                    var statusw = {
                        1: {
                            'title': 'Pending',
                            'class': ' label-light-success'
                        },
                        /* 2: {
                            'title': 'In',
                            'class': ' label-light-primary'
                        },
						3: {
                            'title': 'Order',
                            'class': ' label-light-success'
                        },
                        4: {
                            'title': 'Panding',
                            'class': ' label-light-primary'
                        }, */
                       
                    };                      
                    return  statusw[row.status].title; 
                },
					},
					{
						field: 'created_at',
						 width: 100,
						title: 'created_at',         
					},
            /*  {              
                field: 'app_status',
                title: 'Last Login',
                // callback function support for column rendering
                template: function(row) {
                    var status = {
                        0: {
                            'title': 'De-Activate',
                            'class': ' label-light-success'
                        },
                        1: {
                            'title': 'Activate',
                            'class': ' label-light-primary'
                        },
                        3: {
                            'title': 'Canceled',
                            'class': ' label-light-primary'
                        },
                        4: {
                            'title': 'Success',
                            'class': ' label-light-success'
                        },
                        5: {
                            'title': 'Info',
                            'class': ' label-light-info'
                        },            
                        6: {
                            'title': 'Danger',
                            'class': ' label-light-danger'                    
                        },
                        7: {
                            'title': 'Warning',
                            'class': ' label-light-warning'
                        },
                    };                      
                    return '<span class="label font-weight-bold label-lg' + status[row.app_status].class + ' label-inline">' + status[row.app_status].title + '</span>';
                },
            }, */ /*  {
                field: 'iswholeapp',
                title: 'Login as this User',
                autoHide: false,
                // callback function support for column rendering
                template: function(row) {
				
                    var status = {
                        0: {
                            'title': 'Contractor App',
                            'state': 'danger'
                        },
                        1: {
                            'title': 'Wholsaler App',
                            'state': 'primary'
                        },
                        2: {
                            'title': 'Invoice Management',
                            'state': 'success'
                        },
                    };
                    return '<span class="label label-' + status[row.iswholeapp].state + ' label-dot mr-2"></span><span class="font-weight-bold text-' + status[row.iswholeapp].state + '">' +
                        status[row.iswholeapp].title + '</span>';
                },
            }, */  {
                field: 'Actions',
                title: 'Actions',
                sortable: false,
                width: 100,
                autoHide: false,
                overflow: 'visible',
                template: function(row) {
					var host = window.location.host; 
				   
                    return '\
                       \
                        <a href="dashboard/ViewPrescription?id='+row.id+'" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details">\
                            <span class="svg-icon svg-icon-md">\
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                                        <rect x="0" y="0" width="24" height="24"/>\
                                        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero"\ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>\
                                        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>\
                                    </g>\
                                </svg>\
                            </span>\
                        </a>\
                      ';
                },            
            }],

        });

        $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();
    }; 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
    return {
        // public functions
        init: function() {
			var url = window.location.href; 
			var myarr = url.split("/");
			var index=myarr.length;
			/***************************Function for OrderUnderProject page******************************************/
				var str = myarr[index-1];
				var n = str.indexOf("UnderProject");
				if(n>0)
				{
				  var orderUnder=str.split("=");
				  orderUnderProject(orderUnder[1]); 
				}
		   /*********************************************************************************************************/
				if(myarr[index-1]=="business")
				{
					business();
				}
				if(myarr[index-1]=="users")
				{ 
					users();
				}
				if(myarr[index-1]=="suppliers")
				{ 
					supplier();
				}
				if(myarr[index-1]=="projects")
				{ 
					Projects();
				}
				if(myarr[index-1]=="engineer")
				{ 
					Engineer();
				}
				if(myarr[index-1]=="wholesaler")
				{
					
					WholsalerEnginer();
				}
				if(myarr[index-1]=="Delevercost")
				{
					
					DeleveryCost();
			    }
				if(myarr[index-1]=="Stores")
				{
				
					Stores();
			    }
				if(myarr[index-1]=="ProductList")
				{
				 
					ProductsList();
			    }
				if(myarr[index-1]=="orders")
				{
					
					Order();
				}
				if(myarr[index-1]=="quotes")
				{
					
					Quotes();
				}
				if(myarr[index-1]=="AwtingOrderView")
				{
					
					AwatingOrders();
				}
				if(myarr[index-1]=="products")
				{
					
					product();
				}
				if(myarr[index-1]=="Notifictions")
				{
					Notifictions();
				}
				if(myarr[index-1]=="category")
				{
					category();
				}
				if(myarr[index-1]=="fillter")
				{
					
					fillter();
				}
				if(myarr[index-1]=="Prescriptions")
				{
					
					pre();
				}
				
        }
    };
}();      

jQuery(document).ready(function() {
    KTDatatableJsonRemoteDemo.init();
});
