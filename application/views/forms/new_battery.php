<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-asset-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">

                <h1 class="h4 text-gray-900 mb-4"><?php echo $title; ?></h1>
                <?php if($this->session->flashdata('battery_added')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('battery_added').'</p>'; ?>
          <?php endif; ?>
              </div>
            <?php echo form_open('msasset/new_battery'); ?>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="col-lg mb-7 mb-sm-0 small">Brand</label>
                     <input type="text" class="form-control form-control-user" name="Brand" value="<?php echo set_value('Brand');?>">
                        <span class="text-danger"><?php echo form_error('Brand'); ?></span>
                  </div>
                  <div class="col-sm-6">
                    <label class="col-lg mb-7 mb-sm-0 small">Model</label>
                     <input type="text" class="form-control form-control-user" name="Model" value="<?php echo set_value('Model');?>">
                        <span class="text-danger"><?php echo form_error('Model'); ?></span>
                  </div>
                </div>
                <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                 <label class="col-lg mb-7 mb-sm-0 small">Serial No.</label>
                  <input type="text" class="form-control form-control-user" name="BatterySerial" value="<?php echo set_value('BatterySerial');?>">
                  <span class="text-danger"><?php echo form_error('BatterySerial'); ?></span>
                  </div>
                  <div class="col-sm-6 mb-3 mb-sm-0">
                  <label class="col-lg mb-7 mb-sm-0 small">PO Number</label>
                    <input type="text" class="form-control form-control-user" name="ponumber" value="<?php echo set_value('ponumber');?>" >
                    <span class="text-danger"><?php echo form_error('ponumber'); ?></span>
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6">
                  <label class="col-lg mb-7 mb-sm-0 small">Delivery Date</label>
                    <input type="date" class="form-control form-control-user"  name="date_delivery" value="<?php echo set_value('date_delivery');?>" >
                    <span class="text-danger"><?php echo form_error('date_delivery'); ?></span>
                  </div>

                  <div class="col-sm-6">
                    <label class="col-lg mb-7 mb-sm-0 small">Status</label>
                      <select class="form-control form-control" name="select_status" >
                      <option class="hidden" value="none" selected disabled>--Please Battery Status--</option>
                      <?php foreach ($battery_status as $battery_status) {?>
                      <option ><?php echo $battery_status['AssetStatus']; ?> </option>
                      <?php } ?>
                      </select>
                      <span class="text-danger"><?php echo form_error('select_status'); ?></span>
                  </div>
                </div>
              <div class="form-group">
                <button class="btn btn-primary btn-user btn-block">Submit</button>
              </div>
              </form>

              <div class="text-center">
                <a class="small" href="<?php echo base_url('asset/import_batteries') ?>">Import Batteries</a> </br>
                <a class="small" href="<?php echo base_url('msasset/ups_batteries') ?>">View All Batteries</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
