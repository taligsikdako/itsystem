<body class="bg-gradient-primary">

<div class="container">
 <!-- Outer Row -->

  <div class="row justify-content-center">

    <div class="col-xl-10 col-lg-12 col-md-9">

      <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
          <!-- Nested Row within Card Body -->
          <div class="row">
        <div class="col-lg-5 d-none d-lg-block bg-login-image"></div>
            <div class="col-lg-6">
              <div class="p-5">
                <div class="text-center">
                  <h1 class="h4 text-gray-900 mb-4"><?php echo $title; ?></h1>
                  <?php if($this->session->flashdata('failed_login')) : ?>
                  <?php echo '<p class="alert alert-danger">'.$this->session->flashdata('failed_login').'</p>'; ?>
                  <?php endif; ?>
                  <?php if($this->session->flashdata('inactive_account')) : ?>
                  <?php echo '<p class="alert alert-danger">'.$this->session->flashdata('inactive_account').'</p>'; ?>
                  <?php endif; ?>
                </div>
                <!-- Start Form -->

                    <?php echo form_open('site/login'); ?>
                    <div class="form-group">
                      <input type="text" class="form-control" name="user_email" value="<?php echo set_value('user_email');?>"placeholder="Enter your email...">
                      <span class="text-danger"><?php echo form_error('user_email'); ?></span>
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" name="user_password"  placeholder="Password">
                      <span class="text-danger"><?php echo form_error('user_password'); ?></span>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                   <span class="text-danger"> <?php echo $this->session->flashdata('error'); ?></span> <br>
                   <div class="text-center">
                            <a class="small" href="#" id="btnAddUserModal">Create an Account!</a>
                  </div>
                  <?php echo form_close(); ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>
