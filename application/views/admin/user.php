
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <!-- <h1 class="h3 mb-2 text-gray-800">Tables</h1> -->
          <!-- <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p> -->

          <!-- DataTales Example -->


          <div class="card shadow mb-4">
          
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Manage Users</h6>
             
            </div>          
          <div class="card-body">
          <?php if($this->session->flashdata('updated_users')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('updated_users').'</p>'; ?>
          <?php endif; ?>
          </div>
            <div class="card-body">
        
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                    <th>Name</th>
                      <th>Email</th>
                      <th>Date Registered</th>
                      <th>Roles</th>
                      <th>Action</th>                   
                    </tr>          
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Date Registered</th>
                      <th>Roles</th>
                      <th>Action</th>
                    </tr>
                    
                  </tfoot>
                  <tbody>
                  <?php
                    if($getUsers->num_rows() > 0)
                    {
                            foreach($getUsers->result() as $row)
                            {
                    ?>
                    <tr>
                        <td><?php echo $row->user_name; ?></td>             
                        <td><?php echo $row->user_email; ?></td>  
                        <td><?php echo $row->reg_date; ?></td>   
                        <td><?php echo $row->user_roles; ?></td>                         
                        <td><a href="<?php echo base_url();?>admin/update_account/<?php echo $row->id; ?>">Update</a></td>

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
