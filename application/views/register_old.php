<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <!-- <div class="col-lg-5 d-none d-lg-block bg-register-image"></div> -->
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <!-- set Message -->
              <?php if($this->session->flashdata('user_registered')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>'; ?>
          <?php endif; ?>
                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
              </div>
              <?php echo form_open('users/register');?>
              <form class="user" method="post" action="">
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" name="username" placeholder="Enter Username">
                    <span class="text-danger"><?php echo form_error('username');?></span>
                  </div>
                  <div class="col-sm-6">
                    <input type="password" class="form-control form-control-user" name="password" placeholder="Enter Password">
                    <span class="text-danger"><?php echo form_error('password');?></span>
                  </div>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-user" name="password2" placeholder="Repeat Password">
                  <span class="text-danger"><?php echo form_error('password2');?></span>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" name="first_name" placeholder="First Name">
                    <span class="text-danger"><?php echo form_error('first_name');?></span>
                  </div>
                  <div class="col-sm-6">
                    <input type="text" class="form-control form-control-user" name="last_name" placeholder="Family name">
                    <span class="text-danger"><?php echo form_error('last_name');?></span>
                  </div>
                </div>
                <!-- <a href="<?php echo base_url();?>"users\register class="btn btn-primary btn-user btn-block">
                  Register Account -->
                  <button type="submit" class="btn btn-primary btn-user btn-block">Register</button>
                </a>
                <?php echo form_close(); ?>
                <!-- <hr>
                   <a href="index.html" class="btn btn-facebook btn-user btn-block">
                  <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                </a> -->
                <div class="text-center">
                <a href="<?php echo base_url(); ?>" >
                   Back to Login
                </a>
                </div>
             
              </form>
              <!-- <hr>
              <div class="text-center">
                <a class="small" href="forgot-password.html">Forgot Password?</a>
              </div>
              <div class="text-center">
                <a class="small" href="login.html">Already have an account? Login!</a>
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>