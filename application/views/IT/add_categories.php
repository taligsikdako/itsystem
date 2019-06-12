<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <!-- <div class="col-lg-5 d-none d-lg-block bg-register-image"></div> -->
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
             
                <h1 class="h4 text-gray-900 mb-4"><?php echo $title; ?></h1>
              </div>
              <?php echo form_open('it/assets/add_categories');?>
              <form class="user" method="post" action="">
                <div class="form-group row">
                  

                  <div class="col-sm-6">
                    <input type="text" class="form-control form-control-user" name="asset_name" placeholder="Enter Categories Name">
                    <span class="text-danger"><?php echo form_error('asset_name');?></span>
                  </div>
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