
        <div class="container-fluid">
          <div class="card shadow mb-4">

            <div class="card-header py-3">
              <a href="<?php echo base_url();?>export\export_to_csv" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Export Assets to CSV</a>
                <a href="<?php echo base_url();?>msasset\import_msassets" class="d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-upload fa-sm text-white-50"></i> Import Assets from CSV</a>
                <a href="<?php echo base_url();?>assets\template\AssetsTemplate.csv" class="d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i>Assets Template</a>
            </div>

            <div class="card-body">

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

                      <th>Site</th>
                      <th>Floor</th>
                      <th>DataPort</th>
                      <th>AssetType</th>
                      <th>Serial Number</th>
                      <th>Status</th>
                      <th>Ownership</th>
                      <th>Microstatus Ticket</th>
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

                        <td><?php echo $row->Site; ?></td>
                        <td><?php echo $row->Floor; ?></td>
                        <td><?php echo $row->DataPort; ?></td>
                        <td><?php echo $row->AssetType; ?></td>

                        <td><?php echo $row->SerialNumber; ?></td>
                        <td><?php echo $row->Status; ?></td>
                        <td><?php echo $row->Ownership; ?></td>

                        <td><?php echo $row->MicrostatusTicket; ?></td>


                        <td>
                        <a href="<?php echo base_url();?>msasset/new_asset/">New Asset</a> |
                        <a href="<?php echo base_url();?>msasset/update_asset/<?php echo $row->ID; ?>">Update</a> |
                        <a href="<?php echo base_url();?>msasset/import_msassets/">Import Assets</a>
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
