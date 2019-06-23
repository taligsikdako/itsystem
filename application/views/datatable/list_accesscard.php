
        <div class="container-fluid">
          <div class="card shadow mb-4">

            <div class="card-header py-3">
              <!-- <a href="<?php echo base_url();?>export\export_to_csv" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Export Assets to CSV</a>
                <a href="<?php echo base_url();?>msasset\import_msassets" class="d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-upload fa-sm text-white-50"></i> Import Assets from CSV</a>
                <a href="<?php echo base_url();?>assets\temlate\AssetsTemplate.csv" class="d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i>Assets Template</a> -->
            </div>

            <div class="card-body">
              <?php if($this->session->flashdata('deployed_access_card')) : ?>
            <?php echo '<p class="alert alert-success">'.$this->session->flashdata('deployed_access_card').'</p>'; ?>
            <?php endif; ?>

            <?php if($this->session->flashdata('assets_updated')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('assets_updated').'</p>'; ?>
          <?php endif; ?>
          <?php if($this->session->flashdata('assets_imported')) : ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('assets_updated').'</p>'; ?>
        <?php endif; ?>
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>

                      <th>Current Access Card</th>
                      <th>New Access Card</th>
                      <th>Ticket</th>
                      <th>Status</th>
                      <th>Date Deployed</th>
                      <th>Action</th>
                    </tr>
                  </thead>

                  <tbody>
                  <?php
                    if($get_msasset->num_rows() > 0)
                    {
                            foreach($get_msasset->result() as $row)
                            {
                    ?>
                    <tr>

                        <td><?php echo $row->AccessCard; ?></td>
                        <td><?php echo $row->ReplacementCard; ?></td>
                        <td><?php echo $row->TicketId; ?></td>
                        <td><?php echo $row->Status; ?></td>
                        <td><?php echo $row->DateAdded; ?></td>


                        <td>
                        <a href="<?php echo base_url();?>msasset/access_card_deployment/">New Replacement</a>
                        </td>

                      </tr>
                    <?php
                       }
                    } else {
                        ?>
                        <tr>
                        <td>No Data Found</td>
                      </tr>
                     <?php
                    }
                    ?>

                <!-- Modal End Add New User Roles -->

                  </tbody>
                </table>

              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
