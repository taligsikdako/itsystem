
        <div class="container-fluid">
          <div class="card shadow mb-4">

            <div class="card-header py-3">
              <a href="" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Export Assets to CSV</a>
            </div>

            <div class="card-body">

            <?php if($this->session->flashdata('batteries_updated')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('batteries_updated').'</p>'; ?>
          <?php endif; ?>
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Data Port</th>
                      <th>Brand</th>
                      <th>Model</th>
                      <th>SerialNumber</th>
                      <th>PO Number</th>
                      <th>UPS Asset Tag</th>
                      <th>Delivery Date</th>
                      <th>Ticket ID</th>
                      <th>Date Installed</th>
                      <th>Performed By</th>
                      <th>Status</th>
                      <th>Action</th>
                    <!-- <th>Action</th> -->
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>



                    </tr>

                  </tfoot>
                  <tbody>
                  <?php
                    if($get_batteries->num_rows() > 0)
                    {
                            foreach($get_batteries->result() as $row)
                            {
                    ?>
                    <tr id="<?php echo $row->ID; ?>">
                        <td data-target="select_port"><?php echo $row->DataPort; ?></td>
                        <td data-target="Brand"><?php echo $row->Brand; ?></td>
                        <td data-target="Model"><?php echo $row->Model; ?></td>
                        <td data-target="SerialNumber"><?php echo $row->SerialNumber; ?></td>
                        <td data-target="PONumber"><?php echo $row->PONumber; ?></td>
                        <td data-target="ups_asset_tag"><?php echo $row->UPS_AssetTag; ?></td>
                        <td data-target="date_deliver"><?php echo $row->DeliveryDate; ?></td>
                        <td data-target="ticketid"><?php echo $row->TicketNumber; ?></td>
                        <td data-target="date_installed"><?php echo $row->DateInstalled; ?></td>
                        <td data-target="PerformedBy"><?php echo $row->PerformedBy; ?></td>
                        <td data-target="select_status"><?php echo $row->Status; ?></td>
                        <td><a href="<?php echo base_url();?>msasset/new_battery/">New Battery</a> |
                        <a href="<?php echo base_url();?>msasset/update_battery/<?php echo $row->ID; ?>">Update</a> |                    
                        <a href="<?php echo base_url();?>asset/asset_deployed/">Deployed</a></td>

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

      <script>

      </script>
      <!-- End of Main Content -->
