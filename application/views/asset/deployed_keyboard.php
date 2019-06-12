
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <!-- <h1 class="h3 mb-2 text-gray-800">Tables</h1> -->
          <!-- <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p> -->

          <!-- DataTales Example -->


          <div class="card shadow mb-4">

            <div class="card-header py-3">


            </div>
          <div class="card-body">
          <h6 class="m-0 font-weight-bold text-primary"><?php echo $title; ?></h6>
          </div>

            <div class="card-body">

            <?php if($this->session->flashdata('assets_updated')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('assets_updated').'</p>'; ?>
          <?php endif; ?>
          <?php if($this->session->flashdata('added_assets')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('added_assets').'</p>'; ?>
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
                    <th>Received By</th>
                    <th>Date Received</th>
                    <th>Date Deployed</th>
                    <th>PO Number</th>
                    <th>Status</th>
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
                    <th>Received By</th>
                    <th>Date Received</th>
                    <th>Date Deployed</th>
                    <th>PO Number</th>
                    <th>Status</th>
                    <th>Action</th>
                    <!-- <th>Action</th> -->

                    </tr>

                  </tfoot>
                  <tbody>
                  <?php
                    if($deployed_keyboard->num_rows() > 0)
                    {
                            foreach($deployed_keyboard->result() as $row)
                            {
                    ?>
                    <tr>

                        <td><?php echo $row->Site; ?></td>
                        <td><?php echo $row->AssetType; ?></td>
                        <td><?php echo $row->CPUSerialNumber; ?></td>
                        <td><?php echo $row->SerialNumber; ?></td>
                        <td><?php echo $row->ReplacementSerialNumber; ?></td>
                        <td><?php echo $row->DatePurchased; ?></td>
                        <td><?php echo $row->ReceivedBy; ?></td>
                        <td><?php echo $row->DateReceived; ?></td>
                        <td><?php echo $row->DateDeployed; ?></td>
                        <td><?php echo $row->PONumber; ?></td>
                        <td><?php echo $row->Status; ?></td>
                        <td><a href="<?php echo base_url();?>asset/add_asset/">New Assets</a> |
                        <a href="<?php echo base_url();?>asset/update_asset/<?php echo $row->id; ?>">Update</a>|
                        <a href="<?php echo base_url();?>asset/asset_deployed/">Deployed</a></td>
                        <!-- <td><a href="">Delete</a>,<a href="">Update</a></td>
                        <td><button class="btn btn-primary" data-toggle="modal" data-target="#modalUpdateUser"> Update</button></td>    -->

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


                  </tbody>
                </table>

              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
