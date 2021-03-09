<?php error_reporting(0); 


?>
<div class="container">




    <form class="form-signin" id="login" method="post" action="Notifications">
        <div class="row">
            <table>
                <tr id="noticetable"></tr>
            </table>
        </div>
        <div class="row">
            <div class="col-md-6 col-xs-12">
                <div class="card card-custom gutter-b example example-compact">
                    <div class="card-header">
                        <h3 class="card-title">General Details</h3>

                    </div>
                    <div class="card-body">
                        <div class="form-group dropzone" style="border: none;">
                            <div class="jumbotron-sec marg ">

                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <span>Source Bussiness</span>
                                        <?php $Get_Data = $this->DataModel->Select_All_business(0); ?>
                                        <select class="form-control form-control-solid mt-2" id="source">
                                            <option value="" disabled selected>Select Bussiness</option>
                                            <?php foreach($Get_Data as $Data) { ?>
                                            <option value="<?= $Data['id'];?>">
                                                <?php echo $Data['business_name']; ?>
                                            </option>

                                            <?php } ?>
                                        </select>


                                    </div>



                                    <div class="form-group">


                                        <span>Destination Bussiness</span>


                                        <select class="form-control form-control-solid mt-2" id="desti">
                                            <option value="" disabled selected>Select Bussiness</option>
                                            <?php foreach($Get_Data as $Data) { ?>
                                            <option value="<?= $Data['id'];?>">
                                                <?php echo $Data['business_name']; ?>
                                            </option>

                                            <?php } ?>
                                        </select>


                                    </div>

                                    <div class="form-group">
                                        <span class="form-control btn btn-info" id="enter">Copy All Category</span>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>



</div>
<script>
    $('#enter').click(function () {
        bid = $('#source option:selected').val();
        newbid = $('#desti option:selected').val();
        $.ajax({
            url: "<?= base_url('')?>getbusinesscat",
            method: "get",
            data: { 'bid': bid, 'newbid': newbid, 'listid': '0' },
            success: function (data) {

                if (data == 0) {
                    alert("Category already Exsist");
                }
                else {
                    alert("Category Add Successfully");
                }
            }
        });

    });


</script>