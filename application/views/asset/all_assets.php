
        <div class="container-fluid">
          <div class="card shadow mb-4">

            <div class="card-header py-3">
              <a href="<?php echo base_url();?>export\export_to_csv" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Export Assets to CSV</a>
            </div>


            <div class="card-body">

            <?php if($this->session->flashdata('assets_updated')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('assets_updated').'</p>'; ?>
          <?php endif; ?>
          <?php if($this->session->flashdata('added_assets')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('added_assets').'</p>'; ?>
          <?php endif; ?>
          <?php if($this->session->flashdata('assets_imported')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('assets_imported').'</p>'; ?>
          <?php endif; ?>
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                    <th>Site</th>
                    <th>Asset Type</th>
                    <th>CPU Serial</th>
                    <th>Serial</th>
                    <th>New Serial</th>
                    <th>Date Acquired</th>
                    <th>Date Received</th>
                    <th>PO Number</th>
                    <th>Status</th>
                    <th>Ticket ID</th>
                    <th>Action</th>
                    <!-- <th>Action</th> -->
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>

                      <th>Site</th>
                      <th>Asset Type</th>
                      <th>CPU Serial</th>
                      <th>Serial</th>
                      <th>New Serial</th>
                      <th>Date Acquired</th>
                      <th>Date Received</th>
                      <th>PO Number</th>
                      <th>Status</th>
                      <th>Ticket ID</th>
                      <th>Action</th>
                    <!-- <th>Action</th> -->

                    </tr>

                  </tfoot>
                  <tbody>
                  <?php
                    if($get_assets->num_rows() > 0)
                    {
                            foreach($get_assets->result() as $row)
                            {
                    ?>
                    <tr>

                        <td><?php echo $row->Site; ?></td>
                        <td><?php echo $row->AssetType; ?></td>
                        <td><?php echo $row->CPUSerialNumber; ?></td>
                        <td><?php echo $row->SerialNumber; ?></td>
                        <td><?php echo $row->ReplacementSerialNumber; ?></td>
                        <td><?php echo $row->DatePurchased; ?></td>
                        <td><?php echo $row->DateReceived; ?></td>
                        <td><?php echo $row->PONumber; ?></td>
                        <td><?php echo $row->Status; ?></td>
                        <td><?php echo $row->TicketID; ?></td>
                        <td><a href="<?php echo base_url();?>asset/new_asset/">New Asset</a> |
                        <a href="<?php echo base_url();?>asset/update_asset/<?php echo $row->id; ?>">Update</a> |
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
      <!-- End of Main Content -->
