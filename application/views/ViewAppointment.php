<?php //echo "<pre>";  print_r($getappo); die;?>
<style>
body{
    margin-top:20px;
    color: #1a202c;
    text-align: left;
    background-color: #e2e8f0;    
}
.main-body {
    padding: 15px;
}
.card {
    box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: .25rem;
}

.card-body {
    flex: 1 1 auto;
    min-height: 1px;
    padding: 1rem;
}

.gutters-sm {
    margin-right: -8px;
    margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
    padding-right: 8px;
    padding-left: 8px;
}
.mb-3, .my-3 {
    margin-bottom: 1rem!important;
}

.bg-gray-300 {
    background-color: #e2e8f0;
}
.h-100 {
    height: 100%!important;
}
.shadow-none {
    box-shadow: none!important;
}
</style>
<?php /* echo "<pre>";

print_r($get); */ ?>
<div class="container">
    <div class="main-body">
    
          <!-- Breadcrumb -->
      
          <!-- /Breadcrumb -->
    
          <div class="row gutters-sm">
            
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">User Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <?php echo $getuser[0]['first_name'].' '.$getuser[0]['last_name']?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">User Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $getuser[0]['email'];?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">User Phone</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <?php echo $getuser[0]['phone'];?>
                    </div>
                  </div>
                  <hr>
				   <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Appointment Date</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <?php echo $getappo[0]['date'];?>
                    </div>
                  </div>
                  <hr>
				     <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Appointment status</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php  if($getappo[0]['status']=='1'){ echo "Inprogress";}elseif($getappo[0]['status']=='2'){ echo "Completed";}else{ echo "Cancelled";}?>
                    </div>
                  </div>
                  <hr>
				   <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Amount</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo "$".$getappo[0]['payment_amount'];?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Inc tax</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <?php echo "$".$getappo[0]['tax'];?>
                    </div>
                  </div>
                  <hr>
				   <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Total Amount</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo "$".$getappo[0]['total'];?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Payment Status</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php  if($getappo[0]['payment_status']=='1'){ echo "Paid";}elseif($getappo[0]['payment_status']=='2'){ echo "Panding";}else{ echo "Failed";}?>
                    </div>
                  </div>
                  <hr>

                  <!--  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo $getuser[0]['address'];?>
                    </div>
                  </div><hr>
				 <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Language</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo $getuser[0]['language'];?>
                    </div>
                  </div><hr>
				   <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Education</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo $getuser[0]['education'];?>
                    </div>
                  </div><hr>
				   <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">About</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo $get[0]['about'];?>
                    </div>
                  </div><hr>-->
				   
                </div>
              </div>
           
            </div>
          </div>
        </div>
    </div>