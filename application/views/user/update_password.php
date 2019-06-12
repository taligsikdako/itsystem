<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <!-- <div class="col-lg-5 d-none"></div> -->
                <!-- <div class="col-lg-5 d-none d-lg-block bg-register-image"></div> -->
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <?php if($this->session->flashdata('password_updated')) : ?>
                <?php echo '<p class="alert alert-success">'.$this->session->flashdata('password_updated').'</p>'; ?>
                <?php endif; ?>

                <h1 class="h4 text-gray-900 mb-4"><?php echo $title; ?></h1>
              </div>

            <?php echo form_open('user/update_password_validation'); ?>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" name="user_email" value="<?php echo $this->session->userdata('user_email'); ?>">

                  </div>
                </div>
                <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                 <label class="col-lg mb-7 mb-sm-0 small">New Pasword</label>
                  <input type="password" class="form-control form-control-user" name="new_password"  placeholder="Enter your new password">
                  <span class="text-danger"><?php echo form_error('new_password'); ?></span>
                  </div>

                  <div class="col-sm-6 mb-3 mb-sm-0">
                  </div>
                </div>
                <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                <label class="col-lg mb-7 mb-sm-0 small">Confirm Pasword</label>
                  <input type="password" class="form-control form-control-user" name="confirm_password"  placeholder="Enter your new password">
                  <span class="text-danger"><?php echo form_error('confirm_password'); ?></span>
              </div>
                </div>
                <div class="form-group row">
                </div>
                <div class="form-group row">
                </div>

                <button class="btn btn-primary btn-user btn-block">Update</button>
              </form>

            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
