
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
          <h6 class="m-0 font-weight-bold text-primary">Network Outage</h6>
          </div>


            <div class="card-body">

            <?php if($this->session->flashdata('downtime_updated')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('downtime_updated').'</p>'; ?>
          <?php endif; ?>

              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Site</th>
                      <th>ISP</th>
                      <th>Status</th>
                      <th>Ticket</th>
                      <th>Date Started</th>
                      <th>Date Restored</th>
                      <th>Performed By</th>
                      <th>Action</th>
                    </tr>
                  </thead>

                  <tbody>
                  <?php
                    if($outage->num_rows() > 0)
                    {
                            foreach($outage->result() as $row)
                            {
                    ?>
                    <tr>
                        <td><?php echo $row->Site; ?></td>
                        <td><?php echo $row->SelectISP; ?> - <?php echo $row->select_circuit ?></td>

                        <td><?php echo $row->Status; ?></td>
                        <td><?php echo $row->TicketID; ?></td>
                        <td><?php echo $row->DateStarted; ?></td>
                        <td><?php echo $row->DateRestored; ?></td>

                        <td><?php echo $row->PerformedBy; ?></td>
                        <td><a href="<?php echo base_url();?>network/update_downtime/<?php echo $row->ID; ?>">Update</a> | </br>
                        <a href="<?php echo base_url();?>network/new_outage/">New Outage</a>
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
