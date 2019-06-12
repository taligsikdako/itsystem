<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">

                <h1 class="h4 text-gray-900 mb-4"><?php echo $title; ?></h1>
                <?php if($this->session->flashdata('added_assets')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('added_assets').'</p>'; ?>
          <?php endif; ?>
              </div>
            <?php echo form_open('asset/add_asset'); ?>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <select class="form-control form-control-user" name="select_isp">
                          <option class="hidden" selected disabled>Select ISP Provider</option>
                      <?php foreach ($get_isp as $get_isp){?>
                        <option value="<?php echo $get_isp['isp_provider']; ?>"><?php echo $get_isp['isp_provider']; ?></option>
                  <?php } ?>
                     </select>
                  </div>
                  <div class="col-sm-6">                  </div>
                  <div class="col-sm-6">
                <label class="col-lg mb-7 mb-sm-0 small">Ticket ID</label>
                <input type="text" class="form-control form-control-user"  name="ticket_id">
                <span class="text-danger"><?php echo form_error('ticket_id'); ?></span>
                  </div>
                </div>
                <div class="form-group row">
                 <div class="col-sm-6 mb-3 mb-sm-0">

                   <label class="col-lg mb-7 mb-sm-0 small">Date / Time Restore</label>
                     <input type="datetime-local" class="form-control form-control-user" name="date_restore" >
                     <span class="text-danger"><?php echo form_error('date_restore'); ?></span>
                  </div>
                  <div class="col-sm-6 mb-3 mb-sm-0">
                  <label class="col-lg mb-7 mb-sm-0 small">Date / Time Started</label>
                    <input type="datetime-local" class="form-control form-control-user" name="date_started" >
                    <span class="text-danger"><?php echo form_error('date_started'); ?></span>
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6">
                    <label class="col-lg mb-7 mb-sm-0 small">Network Issue</label>
                    <input type="text" class="form-control form-control-user"  name="network_issue">
                    <span class="text-danger"><?php echo form_error('network_issue'); ?></span>
                  </div>

                  <div class="col-sm-6">
                  <label class="col-lg mb-7 mb-sm-0 small">Outage Duration</label>
                    <input type="text" class="form-control form-control-user"  name="outage_duration">
                    <span class="text-danger"><?php echo form_error('outage_duration'); ?></span>
                  </div>
                  <div class="col-sm-6">
                  <!-- <label class="col-lg mb-7 mb-sm-0 small">Outage Status</label> -->
                    <select class="form-control" name="select_networkstatus">
                          <option value="" selected disabled>Select Outage Status</option>
                          <?php foreach ($get_ISPStatus as $network_status) { ?>

                          <option value="<?php echo $network_status['network_status']; ?>"><?php echo $network_status['network_status']; ?></option>
                      <?php } ?>
                    </select>
                    <span class="text-danger"><?php echo form_error('outage_duration'); ?></span>
                  </div>
                      <div class="col-sm-6"></div>
                  <div class="col-sm-12">
                  <label class="col-lg mb-12 mb-sm-0 small">Reason For Outage</label>
                  <textarea class="form-control" name="outage_duration" rows="5" cols="75"></textarea>

                    <span class="text-danger"><?php echo form_error('outage_duration'); ?></span>
                  </div>
                </div>



              <button class="btn btn-primary btn-user btn-block">Add</button>
              </form>
              <div class="text-center">
                <a class="small" href="<?php echo base_url('asset/get_allassets') ?>">View All Assets?</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
