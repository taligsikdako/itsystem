<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
              <?php if($this->session->flashdata('added_assets')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('added_assets').'</p>'; ?>
          <?php endif; ?>
                <h1 class="h4 text-gray-900 mb-4"><?php echo $title; ?></h1>
              </div>
            <?php echo form_open('user/update'); ?>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
            
                    <select class="form-control form-control" name="select_site">
                        <option class="hidden" selected disabled>Select User</option>
                                      
                     </select>
                  </div>
                  <div class="col-sm-6">                
                  <input type="text" class="form-control form-control-user" name="bundledcpu"  placeholder="Bundled CPU Serial No.">
                  </div>
                </div>
                <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                  <input type="text" class="form-control form-control-user" name="bundledcpu"  placeholder="Bundled CPU Serial No.">
                  <span class="text-danger"><?php echo form_error('bundledcpu'); ?></span>
                  </div>
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" name="serialno" placeholder="Serial No">
                    <span class="text-danger"><?php echo form_error('serialno'); ?></span>
                  </div>
                </div>
                <div class="form-group row">               
                  <div class="col-sm-6">
                  <label class="col-lg mb-7 mb-sm-0 small">Date of Purchase</label>
                    <input type="date" class="form-control form-control-user"  name="date_purchased">
                    <span class="text-danger"><?php echo form_error('date_purchased'); ?></span>
                  </div>   

                  <div class="col-sm-6">
                  <label class="col-lg mb-7 mb-sm-0 small">Date Received</label>
                    <input type="date" class="form-control form-control-user"  name="date_received">
                    <span class="text-danger"><?php echo form_error('date_received'); ?></span>
                  </div>                                   
                </div>
            
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                  <input type="text" class="form-control form-control-user" name="ponumber" placeholder="PO Number">
                    <span class="text-danger"><?php echo form_error('ponumber'); ?></span>
                    
                  </div>
                  <div class="col-sm-6 mb-3 mb-sm-0">
             
                    <select class="form-control form-control" name="select_status" id="">
                    <option class="hidden" selected disabled>Select an Asset Status</option>
                    <option>Spare</option>
                    <option>Deployed</option>
                    <option>Defective</option>
                    <option>Disposed</option>
                    </select>
                  </div>
                </div>
                <div class="form-group row">
              
                  <div class="col-sm-6">
            
                  <label class="col-lg mb-7 mb-sm-0 small">Received By</label>
                    <input type="text" class="form-control form-control-user" name="received_by" value="<?php echo $this->session->userdata('user_name');?>" readonly>                 
                  </div>
                </div>
              <button class="btn btn-primary btn-user btn-block">Add</button>
              </form>

            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

