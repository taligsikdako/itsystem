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
                <?php if($this->session->flashdata('added_assets')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('added_assets').'</p>'; ?>
          <?php endif; ?>
              </div>
            <?php echo form_open('msasset/new_asset'); ?>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <select class="form-control form-control" value="" name="select_site">
                      <?php foreach ($Site as $Site){?>
                        <option value="<?php echo $Site['SiteName']; ?>" selected><?php echo $Site['SiteName']; ?></option>
                  <?php } ?>
                     </select>
                        <span class="text-danger"><?php echo form_error('select_site'); ?></span>
                  </div>

                  <div class="col-sm-6">
                    <select class="form-control form-control" name="select_floor">
                      <?php foreach ($Floor as $Floor ) { ?>
                    <option value="<?php echo $Floor['Floor'];?>" selected><?php echo $Floor['Floor'];?></option>
                      <?php } ?>
                    </select>
                    <span class="text-danger"><?php echo form_error('select_floor'); ?></span>
                  </div>
                </div>

                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                       <label class="col-lg mb-7 mb-sm-0 small">Data Port</label>
                    <select class="form-control form-control" value="" name="select_port">
                      <option value="" selected disabled>--DataPort Selection--</option>
                      <?php foreach ($GetPortLocation as $Port){?>
                        <option value="<?php echo $Port['DataPort']; ?>" ><?php echo $Port['DataPort']; ?></option>
                  <?php } ?>
                     </select>
                        <span class="text-danger"><?php echo form_error('select_port'); ?></span>
                  </div>

                  <div class="col-sm-6">
                    <label class="col-lg mb-7 mb-sm-0 small">Asset Type</label>
                    <select class="form-control form-control" name="select_assettype">
                      <option value="" selected disabled>--Asset Selection--</option>
                      <?php foreach ($getAssetType as $AssetType ) { ?>
                    <option value="<?php echo $AssetType['AssetType'];?>" ><?php echo $AssetType['AssetType'];?></option>
                      <?php } ?>
                    </select>
                    <span class="text-danger"><?php echo form_error('select_assettype'); ?></span>
                  </div>
                </div>

                <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                 <label class="col-lg mb-7 mb-sm-0 small">Bundled CPU, Serial No. Only</label>
                  <input type="text" class="form-control form-control-user" name="CPUSerial" value="<?php echo set_value('CPUSerial');?>">
                  <span class="text-danger"><?php echo form_error('CPUSerial'); ?></span>
                  </div>

                  <div class="col-sm-6 mb-3 mb-sm-0">
                  <label class="col-lg mb-7 mb-sm-0 small">Brand</label>
                    <input type="text" class="form-control form-control-user" name="brand" value="<?php echo set_value('brand');?>" >
                    <span class="text-danger"><?php echo form_error('brand'); ?></span>
                  </div>
                </div>
                <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                   <label class="col-lg mb-7 mb-sm-0 small">Model</label>
                     <input type="text" class="form-control form-control-user" name="model" value="<?php echo set_value('model');?>" >
                          <span class="text-danger"><?php echo form_error('model'); ?></span>
                  </div>
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="col-lg mb-7 mb-sm-0 small">Serial Number</label>
                      <input type="text" class="form-control form-control-user" name="serialnumber" value="<?php echo set_value('serialnumber');?>" >
                      <span class="text-danger"><?php echo form_error('serialnumber'); ?></span>
                  </div>
                </div>

                <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                   <label class="col-lg mb-7 mb-sm-0 small">Ownership</label>
                     <input type="text" class="form-control form-control-user" name="ownership" value="<?php echo set_value('ownership');?>" >
                     <span class="text-danger"><?php echo form_error('ownership'); ?></span>
                  </div>
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="col-lg mb-7 mb-sm-0 small">Client Name</label>
                      <input type="text" class="form-control form-control-user" name="client" value="<?php echo set_value('client');?>" >
                      <span class="text-danger"><?php echo form_error('client'); ?></span>
                  </div>
                </div>

                <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                   <!-- <label class="col-lg mb-7 mb-sm-0 small">MicrostatusTicket</label>
                     <input type="text" class="form-control form-control-user" name="msticket" value="<?php echo set_value('msticket');?>" >
                     <span class="text-danger"><?php echo form_error('msticket'); ?></span> -->
                  </div>
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="col-lg mb-7 mb-sm-0 small">PO Number</label>
                      <input type="text" class="form-control form-control-user" name="ponumber" value="<?php echo set_value('ponumber');?>" >
                      <span class="text-danger"><?php echo form_error('ponumber'); ?></span>
                  </div>
                </div>

                <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                   <label class="col-lg mb-7 mb-sm-0 small">PO Date</label>
                     <input type="date" class="form-control form-control-user" name="date_po" value="<?php echo set_value('date_po');?>" >
                     <span class="text-danger"><?php echo form_error('date_po'); ?></span>
                  </div>
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="col-lg mb-7 mb-sm-0 small">Delivery Date</label>
                      <input type="date" class="form-control form-control-user" name="date_delivery" value="<?php echo set_value('date_delivery');?>" >
                      <span class="text-danger"><?php echo form_error('date_delivery'); ?></span>
                  </div>
                </div>


                <div class="form-group row">
                  <div class="col-sm-6">
                  <label class="col-lg mb-7 mb-sm-0 small">Warranty Start Date</label>
                    <input type="date" class="form-control form-control-user" value="<?php echo set_value('start_date');?>"  name="start_date">
                    <span class="text-danger"><?php echo form_error('start_date'); ?></span>
                  </div>
                  <div class="col-sm-6 mb-3 mb-sm-0">
                  <label class="col-lg mb-7 mb-sm-0 small">Warranty End Date</label>
                  <input type="date" class="form-control form-control-user" name="end_date" value="<?php echo set_value('end_date');?>">
                    <span class="text-danger"><?php echo form_error('end_date'); ?></span>
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6">
                  <label class="col-lg mb-7 mb-sm-0 small">Vendor Name </label>
                    <input type="text" name="vendor" class="form-control form-control-user" value="<?php echo set_value('vendor');?>"  >
                    <span class="text-danger"><?php echo form_error('vendor'); ?></span>
                  </div>

                  <div class="col-sm-6">
                    <label class="col-lg mb-7 mb-sm-0 small">Status</label>
                    <select class="form-control form-control" name="select_status">
                      <option value="" selected disabled>--Status Selection--</option>
                      <?php foreach ($getAssetStatus as $Status ) { ?>
                    <option value="<?php echo $Status['AssetStatus'];?>" ><?php echo $Status['AssetStatus'];?></option>
                      <?php } ?>
                    </select>
                    <span class="text-danger"><?php echo form_error('select_status'); ?></span>
                  </div>

                </div>


              <div class="form-group">
                <button class="btn btn-primary btn-user btn-block">Add</button>
              </div>
              </form>

              <div class="text-center">
                <a class="small" href="<?php echo base_url('msasset/import_msassets') ?>">Import Assets</a> </br>
                <a class="small" href="<?php echo base_url('msasset/ms_assets') ?>">View All Assets</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
