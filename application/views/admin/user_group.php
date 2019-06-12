
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <!-- <h1 class="h3 mb-2 text-gray-800">Tables</h1> -->
          <!-- <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p> -->

          <!-- DataTales Example -->


          <div class="card shadow mb-4">
          
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Manage User Group</h6>
             
            </div>          
          <div class="card-body">
          <button class="btn btn-primary" data-toggle="modal" data-target="#modalNewUserRoles">Add New Group</button>
        
          </div>
            <div class="card-body">
        
              <div class="table-responsive">
                <table class="" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                    <th>User Roles</th>   
                                                                
                    </tr>          
                  </thead>
                  <tfoot>
                    <tr>               
                      <th>User Roles</th>             
                            
                    </tr>                    
                  </tfoot>
                  <tbody>
                  <?php
                    if($user_type->num_rows() > 0)
                    {
                            foreach($user_type->result() as $row)
                            {
                    ?>
                    <tr>                    
                        <td><?php echo $row->UserRoles; ?></td>                                                                             
                        <!-- <td><a href="">Delete</a>,<a href="">Update</a></td>          -->
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
                <!-- Modal -->
                <!-- Modal Add New User Roles -->
                <div class="modal fade" id="modalNewUserRoles" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header text-center">
                              <h4 class="modal-title w-100 font-weight-bold">Add New User Roles</h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body mx-3">
                            <?php echo form_open('user/add_userroles');?>
                            <!-- <form action=""  class="form-horizontal"> -->
                              <div class="md-form mb-5">
                                <!-- <i class="fas fa-user prefix grey-text"></i> -->
                                <label data-error="wrong" data-success="right" for="orangeForm-name">User Roles</label>
                                <input type="text" id="orangeForm-name" name="user_roles" class="form-control validate">
                                <span class="text-danger"><?php echo form_error('user_roles');?></span>
                             
                              </div>                                                  
                            </div>
                            <div class="modal-footer ">
                              <button class="btn btn-secondary" >Add</button>
                              <?php echo form_close(); ?>
                            </div>
                          </div>
                        </div>
                      </div>
                <!-- Modal End Add New User Roles -->
              </div>
            </div>
          </div>
          <!--Modal -->

          

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
