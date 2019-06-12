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
            <?php echo form_open('asset/new_asset'); ?>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">

                    <select class="form-control form-control" value="" name="select_site">
                          <option class="hidden" selected disabled>Select Site Location</option>
                      <?php foreach ($get_site as $site){?>
                        <option value="<?php echo $site['SiteName']; ?>"><?php echo $site['SiteName']; ?></option>
                  <?php } ?>
                     </select>
                        <span class="text-danger"><?php echo form_error('select_site'); ?></span>
                  </div>
                  <div class="col-sm-6">
                    <select class="form-control form-control" name="select_asset">
                      <option class="form-control" selected disabled>Select an Asset Type</option>
                      <?php foreach ($get_AssetType as $AssetType ) { ?>
                    <option><?php echo $AssetType['AssetType'];?></option>
                      <?php } ?>
                    </select>
                    <span class="text-danger"><?php echo form_error('select_asset'); ?></span>
                  </div>
                </div>
                <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">
                 <label class="col-lg mb-7 mb-sm-0 small">Bundled CPU, Serial No. Only</label>
                  <input type="text" class="form-control form-control-user" name="CPUSerial" value="<?php echo set_value('CPUSerial');?>">
                  <span class="text-danger"><?php echo form_error('CPUSerial'); ?></span>
                  </div>
                  <div class="col-sm-6 mb-3 mb-sm-0">
                  <label class="col-lg mb-7 mb-sm-0 small">Keyboard / Mouse Serial No.</label>
                    <input type="text" class="form-control form-control-user" name="serial" value="<?php echo set_value('serial');?>" >
                    <span class="text-danger"><?php echo form_error('serial'); ?></span>
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6">
                  <label class="col-lg mb-7 mb-sm-0 small">Date of Purchase</label>
                    <input type="date" class="form-control form-control-user" value="<?php echo set_value('date_purchased');?>" name="date_purchased">
                    <span class="text-danger"><?php echo form_error('date_purchased'); ?></span>
                  </div>

                  <div class="col-sm-6">
                  <label class="col-lg mb-7 mb-sm-0 small">Date Received</label>
                    <input type="date" class="form-control form-control-user" value="<?php echo set_value('date_received');?>"  name="date_received">
                    <span class="text-danger"><?php echo form_error('date_received'); ?></span>
                  </div>
                </div>

                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                  <label class="col-lg mb-7 mb-sm-0 small">PO Number, required!</label>
                  <input type="text" class="form-control form-control-user" name="ponumber" value="<?php echo set_value('ponumber');?>">
                    <span class="text-danger"><?php echo form_error('ponumber'); ?></span>

                  </div>
                  <div class="col-sm-6 mb-3 mb-sm-0">

                  <label class="col-lg mb-7 mb-sm-0 small">Asset Status</label>
                    <select class="form-control form-control" name="select_status" >
                    <option class="hidden" value="none" selected disabled>--Please Select a Status--</option>

                    <?php foreach ($get_AssetStatus as $AssetStatus) {?>
                    <option ><?php echo $AssetStatus['AssetStatus']; ?> </option>
                    <?php } ?>
                    </select>
                            <span class="text-danger"><?php echo form_error('select_status'); ?></span>
                  </div>
                </div>
                <div class="form-group row">
                </div>
              <div class="form-group">
                <button class="btn btn-primary btn-user btn-block">Add</button>
              </div>
              </form>

              <div class="text-center">
                <a class="small" href="<?php echo base_url('asset/import_asset') ?>">Import Assets</a> </br>
                <a class="small" href="<?php echo base_url('asset/get_allassets') ?>">View All Assets</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
