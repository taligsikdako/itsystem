<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">


<?php echo form_open('admin/form_validation'); ?>
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">

                <h1 class="h4 text-gray-900 mb-4"><?php echo $title; ?></h1>
              </div>
              <?php
           if(isset($fetch_single_user))
           {
                foreach($fetch_single_user->result() as $row)
                {
           ?>
           <div class="form-group">
                <!-- <label>User ID</label>   -->
                <input type="hidden" name="user_id" value="<?php echo $row->id; ?>" class="form-control" disabled />

           </div>
           <div class="form-group">
                <label>User Name</label>
                <input type="text" name="user_name" value="<?php echo $row->user_name; ?>" class="form-control"  />
                <span class="text-danger"><?php echo form_error("ticketid"); ?></span>
           </div>
           <div class="form-group">
                <label>User Email</label>
                <input type="text" name="user_email" value="<?php echo $row->user_email; ?>" class="form-control" />
           </div>
           <div class="form-group">
                <label>Update Roles</label>
                <select class="form-control" name="group_id">
                  <option value="<?php echo $row->user_roles ?>" selected><?php echo $row->user_roles ?></option>
                    <?php foreach ($get_usergroup as $usergroup){ ?>
                  <option value="<?php echo $usergroup['UserRoles']; ?>"><?php echo $usergroup['UserRoles']; ?></option>
                  <?php } ?>
                </select>

           </div>
           <div class="form-group">
                <input type="hidden" name="hidden_id" value="<?php echo $row->id; ?>" />
                <input type="submit" name="update" value="Update" class="btn btn-info" />
           </div>
           <?php
                }
           }

           ?>
          </form>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
