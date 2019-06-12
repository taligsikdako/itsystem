<div class="modal fade" id="NewUserModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">

                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Update User</h5>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form method="post" id="frmNewUser" action="">
                  <div class="row">
                    <div class="col-sm-6 col-md-12">
                    <div id="the-message"></div>
                      <div class="form-group">
                        <div class="col-sm-12">
                          <label class="control-label">
                            Name
                          </label>
                          <input type="text" class="form-control" id="user_name" name="user_name">
                          <span class="text-danger"><?php echo form_error('user_name'); ?></span>
                        </div>
                      </div><!-- /form-group -->
                      <div  class="form-group">
                        <div class="col-sm-12">
                          <label class="control-label">
                          Email
                          </label>
                          <input type="email" class="form-control" id="user_email"  name="user_email">
                          <span class="text-danger"><?php echo form_error('user_email'); ?></span>
                          </div>
                          </div>
                          <div  class="form-group">
                            <div class="col-sm-12">
                              <label class="control-label">
                              Password
                              </label>
                              <input type="password" class="form-control" id="user_password"  name="user_password">
                              <span class="text-danger"><?php echo form_error('user_password'); ?></span>
                              </div>
                              </div>
                              <div  class="form-group">
                                <div class="col-sm-12">
                                  <label class="control-label">
                                  Password
                                  </label>
                                  <input type="password" class="form-control" id="confirm_password"  name="confirm_password">
                                  <span class="text-danger"><?php echo form_error('confirm_password'); ?></span>
                                  </div>
                                  </div>
                                  </div>
                                  </div>

                    </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" value="update" data-dismiss="modal">Cancel</button>
                  <input type="submit" name="insert" id="btnNewUser" value="Add User" class="btn btn-primary">
                </form>
                </div>

              </div>
            </div>
           </div>
