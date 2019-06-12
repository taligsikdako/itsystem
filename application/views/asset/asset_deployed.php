
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
          <h6 class="m-0 font-weight-bold text-primary"><?php echo $cardHeader; ?></h6>
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
                    <th>Serial Number</th> 
                    <th>Ticket ID</th>    
                    <th>Deployed By</th>
                    <th>Data Port</th>     
                    <th>Status</th>    
                    <th>Action</th>    
                    <!-- <th>Action</th> -->
                    </tr>          
                  </thead>
                  <tfoot>
                    <tr>
        
                    <th>Serial Number</th> 
                    <th>Ticket ID</th>    
                    <th>Deployed By</th>
                    <th>Data Port</th>     
                    <th>Status</th>    
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
                  
                        <td><?php echo $row->SerialNumber; ?></td>   
                        <td><?php echo $row->TicketID; ?></td>   
                        <td><?php echo $row->DeployedBy; ?></td>   
                        <td><?php echo $row->DataPort; ?></td>   
                        <td><?php echo $row->Status; ?></td>   
                         
                        <td><a href="<?php echo base_url();?>asset/update_asset/<?php echo $row->id; ?>">Update</a>|
                        <a href="<?php echo base_url();?>asset/add_asset/">New Assets</a> |
                        <a href="<?php echo base_url();?>asset/get_allassets/">All Assets</a></td>                                                                                             
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
                 <!-- Modal Add New User Roles -->
                 <div class="modal fade" id="modalUpdateUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header text-center">
                              <h4 class="modal-title w-100 font-weight-bold">Update User Account</h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body mx-5">
                            <?php echo form_open('users/add_userroles');?>
                    
                              <div class="md-form mb-5">
                       
                          
                                <label data-error="wrong" data-success="right" for="orangeForm-name">Name</label>
                                <input type="text" id="orangeForm-name" name="user_email" class="form-control validate">
                                <span class="text-danger"><?php echo form_error('user_email');?></span>
                                <label data-error="wrong" data-success="right" for="orangeForm-name">Email</label>
                                <input type="text" id="orangeForm-name" name="first_name" class="form-control validate">
                                <span class="text-danger"><?php echo form_error('user_email');?></span>      
                                <label data-error="wrong" data-success="right" for="orangeForm-name">Password</label>
                                <input type="text" id="orangeForm-name" name="user_password" class="form-control validate">
                                <span class="text-danger"><?php echo form_error('user_password');?></span>  
                                <label data-error="wrong" data-success="right" for="orangeForm-name">Roles</label>
                                <select name="user_roles" class="form-control validate">
                                <?php foreach($getUserGroup as $category): ?>
                                <option value=""> <?php echo $category['name']; ?>  </option>
                          
                                <?php endforeach; ?>
                                </select>                               
                                <span class="text-danger"><?php echo form_error('user_roles');?></span>                                                    
                              </div>                                                  
                            </div>
                            <div class="modal-footer ">
                              <button class="btn btn-primary">Update</button>
                              <?php echo form_close(); ?>
                            </div>
                          </div>
                        </div>
                      </div>
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
