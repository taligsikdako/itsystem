<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-hdd-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">

                <h1 class="h4 text-gray-900 mb-4"><?php echo $content_title ?></h1>
                <?php if($this->session->flashdata('updated_storage_hdd')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('updated_storage_hdd').'</p>'; ?>
          <?php endif; ?>
              </div>
            <?php echo form_open('asset/update_deployed_hdd'); ?>
            <?php if(isset($fetch_hard_drive_data)) ?>
            <?php {

              foreach ($fetch_hard_drive_data->result() as $row)
              {

               ?>
               <div class="form-group row">
                 <!-- Left CColumn -->
                 <div class="col-sm-6 mb-3 mb-sm-0">


                   <label class="col-lg mb-7 mb-sm-0 small">Asset Tag</label>
                   <span class="form-control form-control-user"><?php echo $row->AssetTag ?></span>

                   <span class="text-danger"><?php echo form_error('Brand'); ?></span>
                  </div>
                 <!-- Right Column -->
                 <!-- <div class="col-sm-6 mb-3 mb-sm-0">
                   <label class="col-lg mb-7 mb-sm-0 small">Model</label>
                   <input type="text" class="form-control form-control-user" value="<?php echo $row->Model; ?>"  name="Model">
                   <span class="text-danger"><?php echo form_error('Model'); ?></span>
                  </div> -->
               </div>

                <div class="form-group row">
                  <!-- Left CColumn -->
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="col-lg mb-7 mb-sm-0 small">Brand</label>
                    <input type="text" class="form-control form-control-user" value="<?php echo $row->Brand ?>"  name="Brand">
                    <span class="text-danger"><?php echo form_error('Brand'); ?></span>
                   </div>
                  <!-- Right Column -->
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="col-lg mb-7 mb-sm-0 small">Model</label>
                    <input type="text" class="form-control form-control-user" value="<?php echo $row->Model; ?>"  name="Model">
                    <span class="text-danger"><?php echo form_error('Model'); ?></span>
                   </div>
                </div>

                <div class="form-group row">
                  <!-- Left CColumn -->
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="col-lg mb-7 mb-sm-0 small">Serial Number</label>
                    <input type="text" class="form-control form-control-user" value="<?php echo $row->SerialNumber;?>"  name="SerialNumber">
                    <span class="text-danger"><?php echo form_error('SerialNumber'); ?></span>
                   </div>
                  <!-- Right Column -->
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="col-lg mb-7 mb-sm-0 small">Capacity</label>
                    <input type="text" class="form-control form-control-user" value="<?php echo $row->Capacity ?>"  name="Capacity">
                    <span class="text-danger"><?php echo form_error('Capacity'); ?></span>
                   </div>
                </div>

                <div class="form-group row">
                  <!-- Left CColumn -->
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="col-lg mb-7 mb-sm-0 small">Bundled CPU / Location</label>
                    <input type="text" class="form-control form-control-user" value="<?php echo $row->Location; ?>"  name="BundledCPU">
                    <span class="text-danger"><?php echo form_error('BundledCPU'); ?></span>
                   </div>


                  <!-- Right Column -->

                </div>

                <div class="form-group row">
                  <!-- Left CColumn -->
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="col-lg mb-7 mb-sm-0 small">Microstatus Ticket</label>
                    <input type="text" class="form-control form-control-user"value="<?php echo $row->MicrostatusTicket ?>"  name="MicrostatusTicket">
                    <span class="text-danger"><?php echo form_error('MicrostatusTicket'); ?></span>
                   </div>
                  <!-- Right Column -->

                  </div>


                <div class="form-group row">
                  <!-- Left CColumn -->
                  <div class="col-sm-6 mb-3 mb-sm-0">
                  <!-- <label class="col-lg mb-7 mb-sm-0 small">Is Installed?</label> -->
              <select class="form-control" value="<?php echo $row->Status; ?>" name="select_status">
                    <option selected><?php echo $row->Status; ?></option>
                    <?php foreach ($storage_drive_status as $storage_drive_status) { ?>
                    <option value="<?php echo $storage_drive_status['AssetStatus']; ?>"><?php echo $storage_drive_status['AssetStatus']; ?></option>
                <?php } ?>
              </select>
              <span class="text-danger"><?php echo form_error('select_status'); ?></span>
             </div>
                  <!-- Right Column -->
                  <div class="col-sm-6 mb-3 mb-sm-0">

                   </div>
                </div>
                <div class="form-group row">
                <!-- <textarea class="form-control" name="name" rows="8" cols="80"></textarea> -->
                    <label class="col-lg mb-7 mb-sm-0 small">Remarks/s</label>
                <textarea class="form-control" value="" name="Remarks" rows="5" cols="75"><?php echo $row->Remarks; ?></textarea>
                </div>
                <div class="form-group row">

                  <div class="col-sm-6 mb-3 mb-sm-0">

                  </div>

                </div>
                <input type="hidden" name="hidden_id" value="<?php echo $row->ID; ?>" />
                <input type="submit" name="update" value="Update" class="btn btn-primary btn-user btn-block" />
              <!-- <button class="btn btn-primary btn-user btn-block">Submit</button> -->
              </form>
              <div class="text-center">
                <a class="small" href="<?php echo base_url('asset/storage_deployment') ?>">View Hard Disk Drives Deploment</a>

                <?php }

              } ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
