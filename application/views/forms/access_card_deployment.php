<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-asset-imag2e"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">

                <h1 class="h4 text-gray-900 mb-4"><?php echo $title; ?></h1>
                <!-- Success Message -->
                <?php if($this->session->flashdata('access_card_replaced')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('access_card_replaced').'</p>'; ?>
          <?php endif; ?>
              </div>
            <?php echo form_open('msasset/access_card_deployment'); ?>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="col-lg mb-7 mb-sm-0 small">Current Access Card</label>
                     <input type="text" class="form-control form-control-user" name="access_card" value="<?php echo set_value('access_card');?>">
                        <span class="text-danger"><?php echo form_error('access_card'); ?></span>
                  </div>
                  <div class="col-sm-6">
                    <label class="col-lg mb-7 mb-sm-0 small">New Access Card</label>
                     <input type="text" class="form-control form-control-user" name="new_access_card" value="<?php echo set_value('new_access_card');?>" >
                        <span class="text-danger"><?php echo form_error('new_access_card'); ?></span>
                  </div>
                </div>
                <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                 <label class="col-lg mb-7 mb-sm-0 small">Ticket ID</label>
                  <input type="text" class="form-control form-control-user" name="ticketid" value="<?php echo set_value('ticketid');?>" >
                  <span class="text-danger"><?php echo form_error('ticketid'); ?></span>
                  </div>
                  <div class="col-sm-6">
                    <label class="col-lg mb-7 mb-sm-0 small">Status</label>
                      <select class="form-control form-control" name="select_status" >
                      <option class="hidden" value="none" selected disabled>--Select Access Card Status--</option>
                      <?php foreach ($getStatus as $getStatus) {?>
                      <option ><?php echo $getStatus['AssetStatus']; ?> </option>
                      <?php } ?>
                      </select>
                      <span class="text-danger"><?php echo form_error('select_status'); ?></span>
                  </div>

                </div>

              <div class="form-group">
                <button class="btn btn-primary btn-user btn-block">Save</button>
              </div>
              </form>

              <div class="text-center">
                <!-- <a class="small" href="<?php echo base_url('asset/import_batteries') ?>">Import Batteries</a> </br> -->
                <a class="small" href="<?php echo base_url('msasset/list_accesscard') ?>">View All Deployed Access Card</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
