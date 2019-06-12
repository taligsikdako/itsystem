<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-network-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">

                <h1 class="h4 text-gray-900 mb-4"><?php echo $title ?></h1>
                <?php if($this->session->flashdata('network_outage')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('network_outage').'</p>'; ?>
          <?php endif; ?>
              </div>
            <?php echo form_open('network/new_outage'); ?>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <select class="form-control form-control-user" name="select_site">
                    <option class="form-control" value="empty" selected disabled>Select Site</option>
                    <?php foreach ($get_site as $get_site){?>
                    <option value="<?php echo $get_site['SiteName']; ?>"><?php echo $get_site['SiteName']; ?></option>
                    <?php } ?>
                    </select>
                      <span class="text-danger"><?php echo form_error('select_site'); ?></span>
                  </div>

                  <div class="col-sm-6">



                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                      <select class="form-control form-control-user" name="select_isp">
                            <option class="form-control" selected disabled>Select ISP Provider</option>
                        <?php foreach ($get_isp as $get_isp){?>
                          <option value="<?php echo $get_isp['isp_provider']; ?>"><?php echo $get_isp['isp_provider']; ?></option>
                    <?php } ?>
                       </select>
                       <span class="text-danger"><?php echo form_error('select_isp'); ?></span>
                  </div>
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <select class="form-control form-control-user" name="select_circuitid">
                          <option class="form-control" selected disabled>Select Circuit ID</option>
                      <?php foreach ($get_NetworkCID as $cid){?>
                        <option value="<?php echo $cid['circuit_id']; ?>"><?php echo $cid['circuit_id']; ?></option>
                  <?php } ?>
                     </select>
                      <span class="text-danger"><?php echo form_error('select_circuitid'); ?></span>
                  </div>


                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <select class="form-control" name="select_networkstatus">
                          <option value="" selected disabled>Select Outage Status</option>
                          <?php foreach ($get_ISPStatus as $network_status) { ?>
                          <option value="<?php echo $network_status['network_status']; ?>"><?php echo $network_status['network_status']; ?></option>
                      <?php } ?>
                    </select>
                    <span class="text-danger"><?php echo form_error('select_networkstatus'); ?></span>
                   </div>
                 <div class="col-sm-6 mb-3 mb-sm-0">
                   <input type="text" class="form-control form-control-user"  name="ticket_id" placeholder="Enter Ticket ID...">
                   <span class="text-danger"><?php echo form_error('ticket_id'); ?></span>
                  </div>


                </div>
                <div class="form-group row">
                  <div class="col-sm-6">
                    <label class="col-lg mb-7 mb-sm-0 small">Date / Time Started</label>
                      <input type="datetime-local" class="form-control form-control-user" name="date_started" value="<?php echo set_value('date_started'); ?>" >
                      <span class="text-danger"><?php echo form_error('date_started'); ?></span>
                  </div>

                  <div class="col-sm-6">
                    <label class="col-lg mb-7 mb-sm-0 small">Date / Time Restore</label>
                      <input type="datetime-local" class="form-control form-control-user" name="date_restored" value="<?php echo set_value('date_restored'); ?>">
                      <span class="text-danger"><?php echo form_error('date_restore'); ?></span>
                  </div>
                </div>

                <div class="form-group row">

                  <div class="col-sm-6 mb-3 mb-sm-0">

                  </div>

                </div>

              <button class="btn btn-primary btn-user btn-block">Submit</button>
              </form>
              <div class="text-center">
                <a class="small" href="<?php echo base_url('network/network_outage') ?>">View All Downtime</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
