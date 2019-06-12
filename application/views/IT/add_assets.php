<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <!-- <div class="col-lg-5 d-none d-lg-block bg-register-image"></div> -->
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
             
                <h1 class="h4 text-gray-900 mb-4">Deployed Keyboard and Mouse</h1>
              </div>
              <?php echo form_open('it/assets/add_assets');?>
              <form class="user" method="post" action="">
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" name="serial_ct" placeholder="Enter Accessories Serial / CT #">
                    <span class="text-danger"><?php echo form_error('serial_ct');?></span>
                  </div> </div>

                  <div class="col-sm-6">
                    <input type="text" class="form-control form-control-user" name="data_port" placeholder="Enter Data Port Location">
                    <span class="text-danger"><?php echo form_error('data_port');?></span>
                  </div>
                </div>
                <div class="form-group">                
                  <input type="text" class="form-control form-control-user" name="ticket_no"  placeholder="Enter Microstatus Ticket No.">
                  <span class="text-danger"><?php echo form_error('ticket_no');?></span>
                </div>                              
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" name="deployedby" placeholder="Deployed By">
                    <span class="text-danger"><?php echo form_error('deployedby');?></span>
                  </div>                 
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" name="asset_type" placeholder="Type of Assets">
                    <span class="text-danger"><?php echo form_error('asset_type');?></span>
                  </div>                 
                </div>
                
                  <button type="submit" class="btn btn-primary btn-user btn-block">Submit</button>
             
                <?php echo form_close(); ?>
               
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>