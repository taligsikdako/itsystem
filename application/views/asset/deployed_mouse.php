
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
                      <th>Department</th>
                      <th>DataPort</th>
                      <th>Serial Number</th>
                      <th>Microstatus Ticket</th>
                      <th>Action</th>
                    <!-- <th>Action</th> -->
                    </tr>
                  </thead>
         
                  <tbody>
                  <?php
                    if($deployed_mouse->num_rows() > 0)
                    {
                            foreach($deployed_mouse->result() as $row)
                            {
                    ?>
                          <tr>
                      <td><?php echo $row->Site; ?></td>
                      <td><?php echo $row->Department; ?></td>
                      <td><?php echo $row->DataPort; ?></td>
                      <td><?php echo $row->SerialNumber; ?></td>
                      <td><?php echo $row->MicrostatusTicket; ?></td>
                      <td>
                      <a href="<?php echo base_url();?>msasset/new_asset/">New Asset</a> |
                      <a href="<?php echo base_url();?>msasset/update_asset/<?php echo $row->ID; ?>">Update</a>

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


                  </tbody>
                </table>

              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
