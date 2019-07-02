
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
            <?php if($this->session->flashdata('updated_storage_hdd')) : ?>
            <?php echo '<p class="alert alert-success">'.$this->session->flashdata('updated_storage_hdd').'</p>'; ?>
            <?php endif; ?>
            <?php if($this->session->flashdata('deployed_hdd')) : ?>
      <?php echo '<p class="alert alert-success">'.$this->session->flashdata('deployed_hdd').'</p>'; ?>
      <?php endif; ?>
          <h6 class="m-0 font-weight-bold text-primary"><?php echo $title; ?></h6>
          </div>


            <div class="card-body">



              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Brand</th>
                      <th>Model</th>
                      <th>Serial Number</th>
                      <th>Capacity</th>
                      <th>Status</th>
                      <th>Location</th>
                      <th>Asset Tag</th>
                      <th>Performed By</th>

                      <th>Action</th>
                    </tr>
                  </thead>

                  <tbody>
                  <?php
                    if($hdd_deployment->num_rows() > 0)
                    {
                            foreach($hdd_deployment->result() as $row)
                            {
                    ?>
                    <tr>
                        <td><?php echo $row->Brand; ?></td>
                        <td><?php echo $row->Model; ?></td>
                        <td><?php echo $row->SerialNumber; ?></td>
                        <td><?php echo $row->Capacity; ?></td>
                        <td><?php echo $row->Status; ?></td>
                        <td><?php echo $row->Location; ?></td>
                        <td><?php echo $row->AssetTag; ?></td>
                        <td><?php echo $row->AddedBy; ?></td>

                        <td><a href="<?php echo base_url();?>asset/deployed_hdd">New</a> |
                        <a href="<?php echo base_url();?>asset/update_deployed_hdd/<?php echo $row->ID; ?>">Update</a>

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
